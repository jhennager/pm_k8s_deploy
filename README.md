# pm_k8s_deploy
Kubernetes cluster deployment into Proxmox environment

## Playbooks

ansible-playbook -i inventory/ playbooks/deploy.yml --ask-vault-pass

ansible-playbook -i inventory/ playbooks/teardown.yml --ask-vault-pass