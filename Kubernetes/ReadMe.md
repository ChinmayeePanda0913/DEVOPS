Install Kubectl: (https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux)
- Download the latest release with the command:url -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

<img width="684" alt="Screen Shot 2020-02-19 at 5 28 40 PM" src="https://user-images.githubusercontent.com/59787273/74886699-6e30ef80-533e-11ea-82d0-1c4ee7736a57.png">
- Make the kubectl binary executable.: chmod +x ./kubectl
<img width="501" alt="Screen Shot 2020-02-19 at 5 30 23 PM" src="https://user-images.githubusercontent.com/59787273/74886730-8f91db80-533e-11ea-87f4-c0e11c384b54.png">

- Move the binary in to your PATH.: sudo mv ./kubectl /usr/local/bin/kubectl
- Test to ensure the version you installed is up-to-date: kubectl version --client
 <img width="683" alt="Screen Shot 2020-02-19 at 5 31 30 PM" src="https://user-images.githubusercontent.com/59787273/74886823-d1bb1d00-533e-11ea-8c5f-18fc9832a864.png">

Install Minikube (https://kubernetes.io/docs/tasks/tools/install-minikube/)

- To download directly : curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
  <img width="847" alt="Screen Shot 2020-02-19 at 5 33 36 PM" src="https://user-images.githubusercontent.com/59787273/74886929-15ae2200-533f-11ea-841d-9f2037ef0c4b.png">

- add the Minikube executable to your path : sudo mkdir -p /usr/local/bin/
  :sudo install minikube /usr/local/bin/
 
