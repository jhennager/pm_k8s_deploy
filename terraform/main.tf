provider "proxmox" {
  pm_api_url      = "https://192.168.0.37:8006/api2/json"
  pm_user         = "root@pam"
  pm_password     = var.pm_password
  pm_tls_insecure = true  # Set to false if using a valid cert
}

resource "proxmox_vm_qemu" "master" {
  name        = "k8s-master"
  target_node = var.pm_node
  clone       = var.pm_clone_name

  cores       = 2
  sockets     = 1
  memory      = 8192

  network {
    model     = "virtio"
    bridge    = "vmbr0"
  }

  agent      = 1
  ciuser     = "jason"
  sshkeys    = file("~/.ssh/cloudinit_id_rsa.pub")
  ipconfig0  = "ip=dhcp"
}

resource "proxmox_vm_qemu" "worker1" {
  name        = "k8s-worker1"
  target_node = var.pm_node
  clone       = var.pm_clone_name

  cores       = 2
  sockets     = 1
  memory      = 8192

  network {
    model     = "virtio"
    bridge    = "vmbr0"
  }

  agent      = 1
  ciuser     = "jason"
  sshkeys    = file("~/.ssh/cloudinit_id_rsa.pub")
  ipconfig0  = "ip=dhcp"
}

resource "proxmox_vm_qemu" "worker2" {
  name        = "k8s-worker2"
  target_node = var.pm_node
  clone       = var.pm_clone_name

  cores       = 2
  sockets     = 1
  memory      = 8192

  network {
    model     = "virtio"
    bridge    = "vmbr0"
  }

  agent      = 1
  ciuser     = "jason"
  sshkeys    = file("~/.ssh/cloudinit_id_rsa.pub")
  ipconfig0  = "ip=dhcp"
}

resource "proxmox_vm_qemu" "worker3" {
  name        = "k8s-worker3"
  target_node = var.pm_node
  clone       = var.pm_clone_name

  cores       = 2
  sockets     = 1
  memory      = 8192

  network {
    model     = "virtio"
    bridge    = "vmbr0"
  }

  agent      = 1
  ciuser     = "jason"
  sshkeys    = file("~/.ssh/cloudinit_id_rsa.pub")
  ipconfig0  = "ip=dhcp"
}