# ansible-gcp-demo

## Local Development

- If a GCP Service Account does not exist, create one and download a JSON key
  - https://cloud.google.com/iam/docs/service-accounts-create
- If a GCP Service Account already exists, create a new JSON key for it
  - https://cloud.google.com/iam/docs/creating-managing-service-account-keys
- Create a file on your machine that contains the Ansible Vault Password
  - This file should contain only the password and nothing else
  - No newlines after the password!
- Copy .env.example to .env and fill in the values
- Make sure your downloaded GCP Service Account JSON is at the path specified by HOST_GCP_SERVICE_ACCOUNT_FILE in the .env file
- Make sure your Ansible Vault Password File is at the path specified by HOST_ANSIBLE_VAULT_PASSWORD_FILE in the .env file
- Create an inventory.gcp.yml file with the correct values (or use the one that already exists) in a subdirectory of ansible/inventories
  - See this one for reference: ansible/inventories/development/inventory.gcp.yml
- Start the devcontainer

## Examples

```bash
ansible-playbook playbook.yml --extra-vars "infrastructure_state=absent" -vv && ansible-playbook playbook.yml --extra-vars "infrastructure_state=present" -vv
```

## TO DO

- Try to remove `become` from overall playbook and add to individual tasks and roles as needed
- Push to a new remote renamed for Jenkins
- Rename "web" to "jenkins" everywhere it appears
