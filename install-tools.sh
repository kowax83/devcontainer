# update repo
apt-get update
# install curl, git, vim, dns-utils
apt install curl git vim dnsutils -y
# install azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | bash
# install kubectl and kubelogon
az aks install-cli --only-show-errors
# install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
rm get_helm
# Confogure git
git config --global user.name "Tomasz Kowacki"
git config --global user.email "kowactom@gmail.com"
# Install vcsode extensions
code --install-extension ms-azuretools.vscode-bicep
code --install-extension redhat.vscode-yaml
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
# Confgure aliases
echo 'alias k=kubectl' >> ~/.bashrc 
# Load .bashrc config
source ~/.bashrc
# Login to Azure 
clear && az login --use-device-code