# onsport_infra
onsport Infra repository

bastion_IP = 158.160.56.105
someinternalhost_IP = 10.128.0.26

Create file ~/.ssh/config :

Host bastion
	Hostname 158.160.56.105
	User appuser
	IdentityFile ~/.ssh/appuser

Host someinternalhost
	Hostname 10.128.0.26
	User appuser
	ProxyCommand ssh -W %h:%p bastion
	IdentityFile ~/.ssh/appuser

Connection to someinternalhost:
ssh -i ~/.ssh/appuser -AJ appuser@158.160.56.105 appuser@10.128.0.26

