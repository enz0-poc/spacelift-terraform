resource "null_resource" "run_local_command" {
  provisioner "local-exec" {
    command = "echo `which nc`"
  }
}