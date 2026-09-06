allowed_audiences = ["sigstore"]

attribute_condition = ""

attribute_mapping = { "attribute.actor" : "assertion.actor", "attribute.aud" : "assertion.aud", "attribute.repository" : "assertion.repository", "google.subject" : "assertion.sub" }

pool_description = "Workload Identity Pool managed by Terraform"

pool_display_name = ""

pool_id = ""

project_id = ""

provider_description = "Workload Identity Pool Provider managed by Terraform"

provider_display_name = ""

provider_id = ""

sa_mapping = {}
