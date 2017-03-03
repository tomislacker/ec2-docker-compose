AWS_PROFILE := tomasikio

.DEFAULT_GOAL   : demo


.PHONY : demo
demo   :
	AWS_PROFILE=$(AWS_PROFILE) ansible-playbook \
		-i inventory/ \
		-l $(LIMIT) \
		demo.yml \
		--diff \
		-vv
