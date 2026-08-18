config_validator_enabled = false

forseti_client_service_account = ""

forseti_client_vm_ip = ""

forseti_cloudsql_connection_name = ""

forseti_server_bucket = ""

forseti_server_service_account = ""

git_sync_image = "gcr.io/google-containers/git-sync"

git_sync_image_tag = "v3.1.2"

git_sync_private_ssh_key_file = ""

git_sync_ssh = true

git_sync_wait = 30

gke_service_account = ""

helm_repository_url = "https://forseti-security-charts.storage.googleapis.com/release/"

k8s_config_validator_image = "gcr.io/forseti-containers/config-validator"

k8s_config_validator_image_tag = "latest"

k8s_forseti_namespace = "forseti"

k8s_forseti_orchestrator_image = "gcr.io/forseti-containers/forseti"

k8s_forseti_orchestrator_image_tag = "v2.21.0"

k8s_forseti_server_image = "gcr.io/forseti-containers/forseti"

k8s_forseti_server_image_tag = "v2.21.0"

k8s_tiller_sa_name = "tiller"

load_balancer = "none"

network_policy = false

policy_library_repository_branch = "master"

policy_library_repository_url = ""

production = true

project_id = ""

recreate_pods = true

server_log_level = "info"
