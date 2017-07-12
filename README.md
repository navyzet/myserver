Configuring the monitoring server.

Install required roles:

    ansible-galaxy install geerlingguy.apache geerlingguy.mysql navyzet.openvpn dj-wasabi.zabbix-server kamaln7.swapfile
    ansible-playbook --ask-vault-pass install.yml
