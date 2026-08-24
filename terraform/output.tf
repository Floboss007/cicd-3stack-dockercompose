output "vm_external_ip" {
  description = "External IP of the CI stack VM"
  value       = google_compute_instance.todo_project_vm.network_interface[0].access_config[0].nat_ip
}

output "jenkins_url" {
  value = "http://${google_compute_instance.todo_project_vm.network_interface[0].access_config[0].nat_ip}:8081"
}

output "web_url" {
  value = "http://${google_compute_instance.todo_project_vm.network_interface[0].access_config[0].nat_ip}:8080"
}



output "github_webhook_url" {
  description = "Paste this into GitHub repo Settings -> Webhooks -> Payload URL"
  value       = "http://${google_compute_instance.todo_project_vm.network_interface[0].access_config[0].nat_ip}:8081/github-webhook/"
}
