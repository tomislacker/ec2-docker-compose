.PHONY          : find-latest-ami
find-latest-ami :
	echo "base_ami: $(shell aws ec2 describe-images --owners 379101102735 --filters "Name=architecture,Values=x86_64" "Name=name,Values=debian-jessie-*" "Name=root-device-type,Values=ebs" "Name=virtualization-type,Values=hvm" | jq '.Images[-1].ImageId')" \
		> group_vars/debian/ami
