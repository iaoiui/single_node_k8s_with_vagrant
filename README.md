# Note
For ubunutu, change branch to ubuntu

# single_node_k8s_with_vagrant
For creating single node k8s cluster with vagrant.



## Prerequisite

Vagrant 2.2.6

Oracle VM VirtualBox VM Selector v6.0.10



## Quick Start

### install vagrant-scp

```
vagrant plugin install vagrant-scp
```

### provision CentOS VM

```
vagrant up
vagrant scp scripts/init_single_cluster.sh controller-0:/home/vagrant
vagrant ssh controller-0
```

### Login the VM and execute an init script

```
sudo -i
sh /home/vagrant/init_single_cluster.sh 
```



## Run an example(nginx) app on the k8s cluster

```
kubectl run nginx --image=nginx -l app=nginx
watch -d kubectl get all -l app=nginx
```

