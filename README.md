# ansible-gcp-demo

## Examples

```bash
ansible-playbook playbook.yml --extra-vars "infrastructure_state=absent" -vv && ansible-playbook playbook.yml --extra-vars "infrastructure_state=present" -vv
```

## TO DO
- Use these to set up letsencrypt
  - Resources
    - https://gist.github.com/mattiaslundberg/ba214a35060d3c8603e9b1ec8627d349
    - https://blog.gmaliar.com/generating-lets-encrypt-certificates-for-nginx-using-ansible-9fd27b90993a
  - Questions
    - Can you use the `root` directive within a `location` block?
  - Steps
    - Install required packages
    - Ensure a web doc root exists on server for placing well-known
    - Update NGINX conf -  .well-known to be served from root by nginx host, but proxy others
    - Update NGINX conf SSL cert paths to point to Let's Encrypt cert locations
    - Set up a cron to renew certs by calling certbot
- Push to a new remote renamed for Jenkins
- Rename "web" to "jenkins" everywhere it appears
