rgs = {
  "rg1" = {
    rg-name  = "frontend-rg1"
    location = "Central india"
  }
  "rg2" = {
    rg-name  = "backend-rg1"
    location = "Central india"
  }

}
stg = {
  "stg1" = {
    stg-name                 = "frontendstg1"
    resource_group_name      = "frontend-rg1"
    location                 = "Central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  "stg2" = {
    stg-name = "backendstg1"
    resource_group_name      = "backend-rg1"
    location                 = "Central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnet = {
  "vnet1" = {
    vnet-name = "frontend-vnet1"
    resource_group_name      = "frontend-rg1"
    location                 = "Central india"
    address_space = ["10.0.0.0/16"]
  subnet = {
  "subnet1" = {
    subnet-name = "frontend-subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
  "subnet3" = {
    subnet-name = "AzureBastionSubnet"
    address_prefixes = ["10.0.3.0/24"]
  }

}
  }
"vnet2" = {
   vnet-name = "backend-vnet1"
    resource_group_name      = "backend-rg1"
    location                 = "Central india"
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
    location = "Central india"
    resource_group_name  = "frontend-rg1"
    allocation_method = "Static"
  }
  "pip2" = {
    pip-name = "backend-pip1"
    location = "Central india"
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
    location             = "Central india"
    pip-name = "frontend-pip1"
  }
  "nic2" = {
    nic-name = "backend-nic1"
    subnet-name          = "backend-subnet1"
    virtual_network_name = "backend-vnet1"
    resource_group_name  = "backend-rg1"
    location             = "Central india"
    pip-name = "backend-pip1"
  }
}
vm = {
  "vm1" = {
    vm-name             = "frontend-vm1"
    resource_group_name = "frontend-rg1"
    location            = "Central india"
    size                = "Standard_D2s_v5"
    admin_username      = "adminuser"
    admin_password      = "brij@123"
    nic-name            = "frontend-nic1"
  }
  "vm2" = {
    vm-name             = "backend-vm1"
    resource_group_name = "backend-rg1"
    location            = "Central india"
    size                = "Standard_D2s_v5"
    admin_username      = "adminuser"
    admin_password      = "brij@123"
    nic-name            = "backend-nic1"
  }
}
db_server = {
  "db-server1" = {
    db-server-name      = "frontend-dbserver1"
    resource_group_name = "frontend-rg1"
    location            = "Central india"
    }
  "db-server2" = {
     db-server-name      = "backend-dbserver1"
    resource_group_name = "backend-rg1"
    location            = "Central india"
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
#      bastion-name         = "frontend-bastion"
#     location             = "Central india"
#     resource_group_name  = "frontend-rg1"
#     virtual_network_name = "frontend-vnet1"
#     subnet-name          = "AzureBastionSubnet"
#     pip-name             = "frontend-pip1"
#   }
# } 
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
    key_vault_name      = "frontend-kv1-dev-01"
    location            = "Central india"
    resource_group_name = "frontend-rg1"
  }
   "kv2" = {
    key_vault_name      = "backend-kv1-dev-01"
    location            = "Central india"
    resource_group_name = "backend-rg1"
  }
}