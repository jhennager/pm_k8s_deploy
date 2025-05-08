output "k8s_master_ip" {
  value = proxmox_vm_qemu.master.default_ipv4_address
}

output "k8s_worker1_ip" {
  value = proxmox_vm_qemu.worker1.default_ipv4_address
}

output "k8s_worker2_ip" {
  value = proxmox_vm_qemu.worker2.default_ipv4_address
}

output "k8s_worker3_ip" {
  value = proxmox_vm_qemu.worker3.default_ipv4_address
}