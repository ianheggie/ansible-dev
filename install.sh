#!/bin/bash

if [ -f /home/vagrant/.bashrc ] && [ ! -L /home/vagrant/.bashrc ]
then
  rm -fv /home/vagrant/.bashrc
fi
cp -fv /home/vagrant/ssh/id_rsa /home/vagrant/.ssh
chmod -v 600 /home/vagrant/.ssh/id_rsa
cp -fv /home/vagrant/ssh/id_rsa.pub /home/vagrant/.ssh
cp -fv /home/vagrant/ssh/vagrant /home/vagrant/.ssh
chmod -v 600 /home/vagrant/.ssh/vagrant
cp -uv /home/vagrant/ssh/config /home/vagrant/.ssh
chown -Rv vagrant:vagrant /home/vagrant/.ssh
