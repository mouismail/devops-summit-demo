# Geekle DevOps Summit 22 - GitHub Actions Demo
This demo for Geekle DevOps Summit '22
- [Geekle Global DevOps Summit '22](https://events.geekle.us/devops/) - October 4&5, 2022

## Prerequisites

1. This demo requires the following secrets to be generated:
    - AKS_CLUSTER_NAME -> AKS Cluster name
    - AKS_CLUSTER_RESOURCE_GROUP -> Azure Resource Group
    - AZURE_SERVICE_PROVIDER_CREDENTIALS -> SP with permission to access the Azure Resource Group
    - GH_ENV_PAT -> PAT with repo admin access

## How to Demo
1. Open project in Codespaces or VS Code
2. Use `docker-compose build` and `docker-compose up` commands to show off the application
3. Create a new branch, 
    - modify `azure-vote/azure-vote/config_file.cfg` to update homepage values
4. Create a PR, utilize review-lab keyword comment - if desired.
5. Show AKS Cluster to demonstrate any namespace updates/changes.
6. Merge PR, observe that **AKS Staging & Production - Deploy** workflows kick off
7. View Staging and Production environment deployments

# Azure Voting App
This sample creates a multi-container application in an Azure Kubernetes Service (AKS) cluster. The application interface has been built using Python / Flask. The data component is using Redis.

To walk through a quick deployment of this application, see the AKS [quick start](https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough?WT.mc_id=none-github-nepeters).

To walk through a complete experience where this code is packaged into container images, uploaded to Azure Container Registry, and then run in and AKS cluster, see the [AKS tutorials](https://docs.microsoft.com/en-us/azure/aks/tutorial-kubernetes-prepare-app?WT.mc_id=none-github-nepeters).

# References

## GitHub Actions
Environments - You can configure environments with protection rules and secrets. When a workflow job references an environment, the job won't start until all of the environment's protection rules pass.
- [GitHub Environments](https://docs.github.com/en/actions/reference/environments)

## GitHub Container Registry
You can store and manage Docker and OCI images in the Container registry, which uses the package namespace https://ghcr.io.
- [GitHub Container Registry](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)