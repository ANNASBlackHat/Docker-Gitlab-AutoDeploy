# Docker-Gitlab-AutoDeploy
CI/CD using docker and Gitlab repository

## Server Config
On your server, please make sure you have installed docker-compose
```
sudo apt-get update
sudo apt-get -y install python-pip
sudo pip install docker-compose
```

then we will create ssh key so then Gitlab can deploy new docker image to our server
- Create the .ssh directory if you don't have one
```
mkdir ~/.ssh
chmod 700 ~/.ssh
```
- Create SSH key pair
```
ssh-keygen -t rsa
```

- Display the public key, and copy to new file named **~/.ssh/authorized_keys**
```
cat ~/.ssh/id_rsa.pub
nano ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
```

- Copy the private key, save it, we will use it to create global variable in Gitlab. To show the private key using *cat*
```
cat ~/.ssh/id_rsa
```
- Go to your Gitlab, and navigate to **Setting > CI/CD** and scroll to **Environment variables**
and create these variables :
```
DEPLOYMENT_SERVER_IP=your_ip_address
DEPLOY_SERVER_PRIVATE_KEY=the_private_key_contents
```
#### *That's it, you're ready to deploy....*

After the build and deploy succeeded, try to curl in your server **curl localhost:5009**
