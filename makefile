infrastructure:
	aws cloudformation deploy --template-file $(PWD)/infrastructure.yml --stack-name cloud9 --capabilities CAPABILITY_IAM

provision:
	ansible-playbook -i inventory.sh ansible-playbook.yml --skip-tags mount_block_device
