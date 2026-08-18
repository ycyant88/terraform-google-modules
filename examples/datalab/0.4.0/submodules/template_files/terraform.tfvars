append_to_startup_script = ""

cloud_config = ""

datalab_console_log_level = "warn"

datalab_disk_name = ""

datalab_docker_image = "gcr.io/cloud-datalab/datalab:latest"

datalab_enable_backup = true

datalab_enable_swap = true

datalab_idle_timeout = "60m"

datalab_user_email = ""

fluentd_docker_image = "gcr.io/google-containers/fluentd-gcp:2.0.17"

gpu_count = 0

gpu_device_map = { "gpu_device_0" : "", "gpu_device_1" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n", "gpu_device_2" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n       --device /dev/nvidia1:/dev/nvidia1 \\\n", "gpu_device_4" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n       --device /dev/nvidia1:/dev/nvidia1 \\\n       --device /dev/nvidia2:/dev/nvidia2 \\\n       --device /dev/nvidia3:/dev/nvidia3 \\\n", "gpu_device_8" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n       --device /dev/nvidia1:/dev/nvidia1 \\\n       --device /dev/nvidia2:/dev/nvidia2 \\\n       --device /dev/nvidia3:/dev/nvidia3 \\\n       --device /dev/nvidia4:/dev/nvidia4 \\\n       --device /dev/nvidia5:/dev/nvidia5 \\\n       --device /dev/nvidia6:/dev/nvidia6 \\\n       --device /dev/nvidia7:/dev/nvidia7 \\\n" }
