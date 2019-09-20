#!/bin/sh
echo "Logging in to Azure CLI"
az login

echo "Setting subscription"
az account set --subscription="dd59b5e3-c62d-47cb-a1ba-965ea8ff2a7e"

echo "Setting environment variables for Terraform"
export ARM_SUBSCRIPTION_ID=dd59b5e3-c62d-47cb-a1ba-965ea8ff2a7e
export ARM_CLIENT_ID=8c408bd9-a8c5-4c60-91bf-7ab974646dcb
export ARM_CLIENT_SECRET=TasBC+PW0fqLL5iLpuPHSwzv7sJH1F5qdgdZ+3AeK2w=
export ARM_TENANT_ID=07420c3d-c141-4c67-b6f3-f448e5adb67b

# Not needed for public, required for usgovernment, german, china
export ARM_ENVIRONMENT=public

export TF_VAR_TENANT_ID=07420c3d-c141-4c67-b6f3-f448e5adb67b
