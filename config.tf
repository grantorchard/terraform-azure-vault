data template_file "userdata" {
  count = var.cluster_size
  template = file("${path.module}/templates/userdata.yaml")

  vars = {
    ip_address         = azurerm_network_interface.this[count.index].private_ip_address,
    vault_conf         = base64encode(templatefile("${path.module}/templates/vault.conf",
      {
        listener     = azurerm_network_interface.this[count.index].private_ip_address
        ip_addresses = "${azurerm_network_interface.this.*.private_ip_address}"
        node_id      = "vault-${count.index}"
        leader_ip    = azurerm_network_interface.this[0].private_ip_address
      }
    ))
  }
}