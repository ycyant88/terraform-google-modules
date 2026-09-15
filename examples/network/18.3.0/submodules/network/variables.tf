variable "bgp_always_compare_med" {
  description = "If set to true, the Cloud Router will use MED values from the peer even if the AS paths differ. Default is false."
  type        = bool
  default     = false
}

variable "bgp_best_path_selection_mode" {
  description = "Specifies the BGP best path selection mode. Valid values are STANDARD or LEGACY. Default is LEGACY."
  type        = string
  default     = "LEGACY"
}

variable "bgp_inter_region_cost" {
  description = "Specifies the BGP inter-region cost mode. Valid values are DEFAULT or ADD_COST_TO_MED."
  type        = string
  default     = null
}

variable "description" {
  description = "An optional description of this network. The resource must be recreated to modify this field."
  type        = string
  default     = ""
}

variable "dns_config" {
  description = "Configuration block for Cloud DNS policies, peering, and forwarding rules.\nGeneral Attributes:\n- enable_logging: (bool) Toggles DNS query logging on the default DNS policy (default: true).\n- onprem_forwarding: (bool) Master toggle to enable resolving on-premise DNS. If true, it provisions either a Peering Zone or Forwarding Zone based on the 'type' attribute.\n- enable_inbound_forwarding: (bool) Enables inbound DNS queries from on-prem to this VPC. Only active if 'onprem_forwarding' is true (default: true).\n- type: (string) Defines the architectural role. If set to \"spoke\", the module creates a DNS Peering Zone. If not \"spoke\", it creates a DNS Forwarding Zone.\n- domain: (string) The DNS suffix/domain for the peering or forwarding zone. Required if 'onprem_forwarding' is true.\nSpoke Attributes (Required if onprem_forwarding = true AND type = \"spoke\"):\n- dns_hub_project_id: (string) The project ID hosting the Hub VPC to peer DNS queries to.\n- dns_hub_network_name: (string) The Hub VPC network name to target for DNS peering.\nHub/Forwarder Attributes (Required if onprem_forwarding = true AND type != \"spoke\"):\n- target_name_server_addresses: (list of maps) The on-premises or remote name servers to forward DNS queries to.\n"
  type = object({
    enable_logging               = optional(bool, true)
    type                         = optional(string, "")
    onprem_forwarding            = optional(bool, false)
    enable_inbound_forwarding    = optional(bool, true)
    dns_hub_project_id           = optional(string, "")
    dns_hub_network_name         = optional(string, "")
    domain                       = optional(string, "")
    target_name_server_addresses = optional(list(map(any)), [])
  })
  default = {}
}

variable "enable_all_vpc_internal_traffic" {
  description = "Enable firewall policy rule to allow internal traffic (ingress and egress)."
  type        = bool
  default     = false
}

variable "enable_gcr_dns" {
  description = "Enable DNS zone creation for legacy gcr.io. Set to false for GDC/TPC environments where Container Registry is not available."
  type        = bool
  default     = true
}

variable "enable_ipv6_ula" {
  description = "Enabled IPv6 ULA, this is a permanent change and cannot be undone! (default 'false')"
  type        = bool
  default     = false
}

variable "firewall_enable_logging" {
  description = "Toggle firewall logging for VPC Firewalls."
  type        = bool
  default     = true
}

variable "internal_ipv6_range" {
  description = "When enabling IPv6 ULA, optionally, specify a /48 from fd20::/20 (default null)"
  type        = string
  default     = null
}

variable "mtu" {
  description = "The network MTU (If set to 0, meaning MTU is unset - defaults to '1460'). Recommended values: 1460 (default for historic reasons), 1500 (Internet default), or 8896 (for Jumbo packets). Allowed are all values in the range 1300 to 8896, inclusively."
  type        = number
  default     = 0
}

variable "nat_config" {
  description = "Configuration for Cloud NAT and underlying Cloud Routers.\nAttributes:\n- enabled: Set to true to create NAT resources. If false, no routers or NAT IPs are provisioned (default: false).\n- egress_tags: Network tags used for routing internet egress traffic (default: [\"egress-internet\"]).\n- bgp_asn: The BGP Autonomous System Number assigned to the Cloud Router (default: 64512).\n- regions: Defines which regions get a NAT router.\n  - name: The GCP region name (e.g., \"us-central1\") where the router and NAT will be deployed.\n  - num_addresses: The number of static external IP addresses to manually allocate and assign to the NAT gateway in this region (default: 2).\n"
  type = object({
    enabled     = optional(bool, false)
    egress_tags = optional(list(string), ["egress-internet"])
    bgp_asn     = optional(number, 64512)
    regions = optional(list(object({
      name          = string
      num_addresses = optional(number, 2)
    })))
  })
  default = {}
}

variable "ncc_hub_config" {
  description = "Configuration block for Google Cloud Network Connectivity Center (NCC) Hub and Spokes.\nHub Creation & Identity:\n- create_hub: (bool) Toggles whether to create a new NCC Hub (true) or use an existing one (false).\n- uri: (string) The URI of an existing Hub. [Required if create_hub is FALSE]\n- name: (string) Name of the new NCC Hub. [Required if create_hub is TRUE]\n- description: (string) Description for the new NCC Hub. [Required if create_hub is TRUE]\n- hub_labels: (map) Labels to apply to the new Hub. [Required if create_hub is TRUE]\nTopology & Routing:\n- preset_topology: (string) Network topology for the hub, either \"MESH\" or \"STAR\". [Required if create_hub is TRUE]\n- policy_mode: (string) Route policy mode (default: \"PRESET\").\n- export_psc: (bool) Allows exporting Private Service Connect routes across the hub (default: false).\nVPC Spoke Configuration (Attaches the module's main network):\n- spoke_group: (string) The NCC group the spoke belongs to (default: \"default\").\n- spoke_name: (string) Name for the main VPC spoke.\n- spoke_description: (string) Description for the main VPC spoke.\n- spoke_labels: (map) Labels for the main VPC spoke.\n- spoke_exclude_export_ranges: (set of strings) IP ranges to exclude from route export.\n- spoke_include_export_ranges: (set of strings) IP ranges to explicitly include in route export.\nProducer Network Configuration (Active only if 'var.private_service_cidr' is defined):\n- producer_description: (string) Description for the linked Private Service Connect (producer) spoke.\n- producer_labels: (map) Labels for the producer spoke.\n- producer_exclude_export_ranges: (set of strings) IP ranges to exclude for the producer network.\n- producer_include_export_ranges: (set of strings) IP ranges to include for the producer network.\nAuto-Accept Policies (Configures project auto-acceptance based on topology):\n- auto_accept_projects_default: (list of strings) Projects allowed in the \"default\" group (Used when topology is MESH).\n- auto_accept_projects_center: (list of strings) Projects allowed in the \"center\" group (Used when topology is STAR).\n- auto_accept_projects_edge: (list of strings) Projects allowed in the \"edge\" group (Used when topology is STAR).\n"
  type = object({
    create_hub                     = optional(bool, true)
    uri                            = optional(string)
    name                           = optional(string)
    description                    = optional(string)
    hub_labels                     = optional(map(string))
    policy_mode                    = optional(string, "PRESET")
    preset_topology                = optional(string, "MESH")
    export_psc                     = optional(bool, false)
    spoke_labels                   = optional(map(string))
    spoke_exclude_export_ranges    = optional(set(string), [])
    spoke_include_export_ranges    = optional(set(string), [])
    spoke_name                     = optional(string, "vpc-spoke")
    spoke_description              = optional(string)
    spoke_group                    = optional(string, "default")
    producer_labels                = optional(map(string))
    producer_exclude_export_ranges = optional(set(string), [])
    producer_include_export_ranges = optional(set(string), [])
    producer_description           = optional(string)
    auto_accept_projects_center    = optional(list(string), [])
    auto_accept_projects_edge      = optional(list(string), [])
    auto_accept_projects_default   = optional(list(string), [])
  })
  default = ""
}

variable "network_firewall_policy_enforcement_order" {
  description = "Set the order that Firewall Rules and Firewall Policies are evaluated. Valid values are BEFORE_CLASSIC_FIREWALL and AFTER_CLASSIC_FIREWALL. (default null or equivalent to AFTER_CLASSIC_FIREWALL)"
  type        = string
  default     = null
}

variable "network_profile" {
  description = "\"A full or partial URL of the network profile to apply to this network.\nThis field can be set only at resource creation time. For example, the\nfollowing are valid URLs:\n  * https://www.googleapis.com/compute/beta/projects/{projectId}/global/networkProfiles/{network_profile_name}\n  * projects/{projectId}/global/networkProfiles/{network_profile_name}\n"
  type        = string
  default     = null
}

variable "pkg_dev_domain" {
  description = "Domain for Artifact Registry. Change if using a custom universe_domain."
  type        = string
  default     = "pkg.dev"
}

variable "private_service_cidr" {
  description = "CIDR range for private service networking. Used for Cloud SQL and other managed services."
  type        = string
  default     = null
}

variable "private_service_connect_ip" {
  description = "The subnet internal IP to be used as the private service connect endpoint in the Shared VPC"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project ID for VPC."
  type        = string
  default     = ""
}

variable "resource_code" {
  description = "Standardized grouping code used to categorize resources by their environment (e.g., 'p' for production) or their architectural/topology role (e.g., 'h' for hub, 's' for spoke). Used as an infix in resource names (e.g., dp-p-svpc-default-policy)"
  type        = string
  default     = ""
}

variable "routing_mode" {
  description = "The network routing mode (default 'GLOBAL')"
  type        = string
  default     = "GLOBAL"
}

variable "secondary_ranges" {
  description = "Secondary ranges that will be used in some of the subnets"
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  default     = {}
}

variable "shared_vpc_host" {
  description = "Makes this project a Shared VPC host if 'true' (default 'false')"
  type        = bool
  default     = false
}

variable "subnets" {
  description = "The list of subnets being created. See https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork"
  type = list(object({
    subnet_name                      = string
    subnet_ip                        = string
    subnet_region                    = string
    subnet_private_access            = optional(string, "true")
    subnet_private_ipv6_access       = optional(string)
    subnet_flow_logs                 = optional(string, "true")
    subnet_flow_logs_interval        = optional(string, "INTERVAL_5_SEC")
    subnet_flow_logs_sampling        = optional(string, "0.5")
    subnet_flow_logs_metadata        = optional(string, "INCLUDE_ALL_METADATA")
    subnet_flow_logs_metadata_fields = optional(list(string), [])
    subnet_flow_logs_filter          = optional(string, "true")
    description                      = optional(string)
    purpose                          = optional(string)
    role                             = optional(string)
    stack_type                       = optional(string)
    ipv6_access_type                 = optional(string)
  }))
  default = []
}

variable "universe_domain" {
  description = "The universe domain to use for Google Cloud APIs. This defines the API endpoint boundary for your deployment. The default is 'googleapis.com' for the standard public Google Cloud. Modify this value if you are deploying to isolated environments like Google Distributed Cloud (GDC), Trusted Partner Cloud (TPC), or other sovereign cloud environments."
  type        = string
  default     = "googleapis.com"
}

variable "vpc_name" {
  description = "The name of the network being created. Complete name will be vpc-{vpc_name}"
  type        = string
  default     = ""
}

variable "windows_activation_enabled" {
  description = "Enable Windows license activation for Windows workloads. See https://docs.cloud.google.com/compute/docs/instances/windows/creating-managing-windows-instances ."
  type        = bool
  default     = false
}
