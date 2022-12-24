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

Connection to someinternalhost one line:
ssh -i ~/.ssh/appuser -AJ appuser@158.160.56.105 appuser@10.128.0.26

testapp_IP = 51.250.76.217
testapp_port = 9292

./startup.sh
