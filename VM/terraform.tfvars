


resource_group_name    = "devops-vm-rg"
location               = "Central India"

vm_name                = "devops-linux-vm"
vm_size                = "Standard_B2s"
admin_username         = "azureuser"

vnet_name              = "devops-vnet"
subnet_name            = "devops-subnet"
nic_name               = "devops-vm-nic"
public_ip_name         = "devops-vm-pip"

address_space          = ["10.0.0.0/16"]
subnet_address_prefix  = ["10.0.1.0/24"]

public_key_path        = "~/.ssh/id_ed25519.pub"
