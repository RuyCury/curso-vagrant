#!/bin/bash
sudo apt-get update && \
sudo apt-get install -y software-properties-common && \
sudo apt-add-repository --yes --update ppa:ansible/ansible && \
sudo apt-get install -y ansible aptitude && \
sudo cp /vagrant/id_bionic /home/vagrant && \
sudo chmod 600 /home/vagrant/id_bionic && \
sudo chown vagrant:vagrant /home/vagrant/id_bionic && \
ansible-playbook -i /vagrant/configs/ansible/hosts /vagrant/configs/ansible/playbook.yml