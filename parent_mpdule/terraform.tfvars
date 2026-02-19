rgs = {
  "rg1" = {
    rg-name  = "frontend-rg1"
    location = "East US"
  }
  "rg2" = {
    rg-name  = "backend-rg1"
    location = "East US"
  }
}
stg = {
  "stg1" = {
    stg-name                 = "frontendstg1"
    resource_group_name      = "frontend-rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  "stg2" = {
    stg-name = "backendstg1"
    resource_group_name      = "backend-rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnet = {
  "vnet1" = {
    vnet-name = "frontend-vnet1"
    resource_group_name      = "frontend-rg1"
    location                 = "East US"
    address_space = ["10.0.0.0/16"]
  subnet = {
  "subnet1" = {
    subnet-name = "frontend-subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
}
  }
"vnet2" = {
   vnet-name = "backend-vnet1"
    resource_group_name      = "backend-rg1"
    location                 = "East US"
    address_space = ["10.0.0.0/16"]
subnet = {
  "subnet2" = {
    subnet-name = "backend-subnet1"
    address_prefixes = ["10.0.2.0/24"]
  }
}
}
}
pip = {
  "pip1" = {
    pip-name = "frontend-pip1"
    location = "East US"
    resource_group_name  = "frontend-rg1"
    allocation_method = "Static"
  }
  "pip2" = {
    pip-name = "backend-pip1"
    location = "East US"
    resource_group_name  = "backend-rg1"
    allocation_method = "Static"
  }
}
nic = {
  "nic1" = {
    nic-name = "frontend-nic1"
    subnet-name          = "frontend-subnet1"
    virtual_network_name = "frontend-vnet1"
    resource_group_name  = "frontend-rg1"
    location             = "East US"
    pip-name = "frontend-pip1"
  }
  "nic2" = {
    nic-name = "backend-nic1"
    subnet-name          = "backend-subnet1"
    virtual_network_name = "backend-vnet1"
    resource_group_name  = "backend-rg1"
    location             = "East US"
    pip-name = "backend-pip1"
  }
}
vm = {
  "vm1" = {
    vm-name             = "frontend-vm1"
    resource_group_name = "frontend-rg1"
    location            = "East US"
    size                = "Standard_B2s"
    admin_username      = "adminuser"
    admin_password      = "brij@123"
    nic-name            = "frontend-nic1"
  }
  "vm2" = {
    vm-name             = "backend-vm1"
    resource_group_name = "backend-rg1"
    location            = "East US"
    size                = "Standard_B2s"
    admin_username      = "adminuser"
    admin_password      = "brij@123"
    nic-name            = "backend-nic1"
  }
}
db_server = {
  "db-server1" = {
    db-server-name      = "frontend-dbserver1"
    resource_group_name = "frontend-rg1"
    location            = "East US"
    }
  "db-server2" = {
     db-server-name      = "backend-dbserver1"
    resource_group_name = "backend-rg1"
    location            = "East US"
  }
}
databases = {
  "db1" = {
    db-name             = "frontend-db1"
    db-server-name      = "frontend-dbserver1"
    resource_group_name = "frontend-rg1"
  }
  "db2" = {
     db-name             = "backend-db1"
    db-server-name      = "backend-dbserver1"
    resource_group_name = "backend-rg1"
  }
}
# bastion = {
#   "bastion1" = {
#      bastion-name         = "frontend-bastion1"
#     location             = "west europe"
#     resource_group_name  = "frontend-rg1"
#     virtual_network_name = "frontend-vnet1"
#     subnet-name          = "frontend-subnet1"
#     pip-name             = "frontend-pip1"
#   }
#   "bastion2" = {
#     bastion-name         = "backend-bastion1"
#     location             = "west europe"
#     resource_group_name  = "backend-rg1"
#     virtual_network_name = "backend-vnet1"
#     subnet-name          = "backend-subnet1"
#     pip-name             = "backend-pip1"
#   }
# }
key_vault = {
  "kv1" = {
    key_vault_name      = "frontend-kv1"
    location            = "East US"
    resource_group_name = "frontend-rg1"
  }
   "kv2" = {
    key_vault_name      = "backend-kv1"
    location            = "East US"
    resource_group_name = "backend-rg1"
  }
}