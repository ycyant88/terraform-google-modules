accepted_response_status_classes = []

accepted_response_status_values = []

aggregations = { "alignment_period" : "1200s", "cross_series_reducer" : "REDUCE_COUNT_FALSE", "group_by_fields" : ["resource.label.*"], "per_series_aligner" : "ALIGN_NEXT_OLDER" }

alert_policy_combiner = "OR"

alert_policy_display_name = ""

alert_policy_user_labels = {}

auth_info = null

auto_close = null

body = null

checker_type = "STATIC_IP_CHECKERS"

condition_display_name = ""

condition_threshold_comparison = "COMPARISON_GT"

condition_threshold_duration = "60s"

condition_threshold_filter = ""

condition_threshold_trigger = { "count" : 1, "percent" : null }

condition_threshold_value = 1

content = null

content_type = null

enabled = true

existing_notification_channels = []

headers = {}

json_path_matcher = null

mask_headers = false

matcher = "CONTAINS_STRING"

monitored_resource = null

notification_channel_strategy = null

notification_channels = []

notification_rate_limit_period = null

path = "/"

period = "60s"

port = null

project_id = ""

protocol = ""

request_method = "GET"

resource_group = null

selected_regions = []

timeout = "10s"

uptime_check_display_name = ""

validate_ssl = true
