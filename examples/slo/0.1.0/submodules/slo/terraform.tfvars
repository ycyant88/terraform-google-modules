bucket_force_destroy = "true"

config = ""

error_budget_policy = [{ "achieved_consequence_message" : "Last hour on track", "alerting_burn_rate_threshold" : 9, "error_budget_policy_step_name" : "a.Last 1 hour", "measurement_window_seconds" : 3600, "overburned_consequence_message" : "Page the SRE team to defend the SLO", "urgent_notification" : true }, { "achieved_consequence_message" : "Last 12 hours on track", "alerting_burn_rate_threshold" : 3, "error_budget_policy_step_name" : "b.Last 12 hours", "measurement_window_seconds" : 43200, "overburned_consequence_message" : "Page the SRE team to defend the SLO", "urgent_notification" : true }, { "achieved_consequence_message" : "Last week on track", "alerting_burn_rate_threshold" : 1.5, "error_budget_policy_step_name" : "c.Last 7 days", "measurement_window_seconds" : 604800, "overburned_consequence_message" : "Dev team dedicates two Engineers to the action items of the post-mortem", "urgent_notification" : false }, { "achieved_consequence_message" : "Unfreeze release, per the agreed roll-out policy", "alerting_burn_rate_threshold" : 1, "error_budget_policy_step_name" : "d.Last 28 days", "measurement_window_seconds" : 2419200, "overburned_consequence_message" : "Freeze release, unless related to reliability or security", "urgent_notification" : false }]

function_environment_variables = {}

function_labels = {}

function_source_archive_bucket_labels = {}

function_source_directory = ""

function_timeout_s = 60

grant_iam_roles = true

labels = {}

message_data = "dGVzdA=="

project_id = ""

region = "us-east1"

schedule = "* * * * */1"

service_account_email = ""

slo_generator_version = "1.0.1"

time_zone = "Etc/UTC"

use_custom_service_account = false
