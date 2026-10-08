admin_ranges = []

admin_ranges_enabled = false

custom_rules = {}

http_source_ranges = ["0.0.0.0/0"]

http_target_tags = ["http-server"]

https_source_ranges = ["0.0.0.0/0"]

https_target_tags = ["https-server"]

internal_allow = [{ "protocol" : "icmp" }]

internal_ranges = []

internal_ranges_enabled = false

internal_target_tags = []

network = ""

project_id = ""

ssh_source_ranges = ["0.0.0.0/0"]

ssh_target_tags = ["ssh"]
