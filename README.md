# ansible-gcp-demo

## Examples

```bash
ansible-playbook playbook.yml --extra-vars "infrastructure_state=absent" -vv && ansible-playbook playbook.yml --extra-vars "infrastructure_state=present" -vv
```

## TO DO

- Try to remove `become` from overall playbook and add to individual tasks and roles as needed
- Push to a new remote renamed for Jenkins
- Rename "web" to "jenkins" everywhere it appears
