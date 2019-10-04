az account set --subscription S_Sandbox_SBX

az account list --output table


create RBAC with self-signed certificate for authentication
https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest
az ad sp create-for-rbac --name edt-principal --create-cert
az ad sp create-for-rbac --name edt-principal --cert ./certificate.crt
az ad sp create-for-rbac --name test-principal1 --create-cert --cert mycert --keyvault myvault2

az ad sp list --show-mine
az ad sp list --show-mine | grep appDisplayName