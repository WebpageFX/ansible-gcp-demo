#!/usr/bin/env bash
ANSIBLE_CONFIG=/workspace/ansible/ansible.cfg ansible-playbook -i ansible/inventory.gcp.yml --vault-password-file /workspace/.vault_pass -vv ansible/jenkins.yml
