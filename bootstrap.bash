apt install -y ansible git

ansible-galaxy collection install community.general

read -p "bootstrap vault location [/mnt/vault/bootstrap.yml]: " bootstrapvaultpath
bootstrapvaultpath=${bootstrapvaultpath:-/mnt/vault/bootstrap.yml}

ANSIBLE_ASK_VAULT_PASS=True ansible-pull -U https://github.com/xoh/ansible -e "bootstrap_vault=$bootstrapvaultpath" bootstrap.yml
