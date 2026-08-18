affinity_cookie_ttl_sec = null

backend_bucket_name = ""

cdn_policy = { "cache_mode" : "CACHE_ALL_STATIC", "client_ttl" : 3600, "default_ttl" : 3600, "max_ttl" : 86400, "signed_url_cache_max_age_sec" : "0" }

compression_mode = "DISABLED"

connection_draining_timeout_sec = null

custom_request_headers = []

custom_response_headers = []

description = null

edge_security_policy = null

enable_cdn = false

firewall_networks = ["default"]

firewall_projects = ["default"]

firewall_source_ranges = ["10.127.0.0/23"]

groups = []

health_check = null

host_path_mappings = [{ "host" : "*", "path" : "/*" }]

iap_config = { "enable" : false }

load_balancing_scheme = "EXTERNAL_MANAGED"

locality_lb_policy = null

log_config = { "enable" : true, "sample_rate" : 1 }

name = ""

outlier_detection = null

port_name = "http"

project_id = ""

protocol = "HTTP"

psc_neg_backends = []

security_policy = null

serverless_neg_backends = []

session_affinity = null

target_service_accounts = []

target_tags = []

timeout_sec = null
