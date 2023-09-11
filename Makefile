dev:

	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve=env-dev/main.tfvars

prod:
	rm -r .terraform
	terraform init -backend-config=env-prod/state.tfvars
	terraform apply -auto-approve=env-prod/main.tfvars

