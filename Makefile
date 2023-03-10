lint: .ylint .alint

.alint:
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.ylint:
	yamllint --config-file=.config/yamllint .
	@touch $@

pull:
	# grab install script for review
	curl -Lso bitwarden.sh "https://func.bitwarden.com/api/dl/?app=self-host&platform=linux"

clean:
	@/bin/rm -f .alint .ylint
