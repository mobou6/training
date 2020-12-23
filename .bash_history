ll
ansible all -m lineinfile -a 'path=/etc/sudoers regexp="^#%wheel" line="%wheel  ALL=(ALL)       NOPASSWD: ALL"'
ansible all -m lineinfile -a 'path=/etc/sudoers regexp="^#%wheel" line="%wheel  ALL=(ALL)       NOPASSWD: ALL"' -k -K -b
ansible all -m ping -b -k
vi inventory 
ansible all -m ping -b -k 
ansible all -m ping -b
ansible all -m debug -a "var=ansible_ssh_password" -b -k 
vi inventory 
ansible all -m debug -a "var=ansible_ssh_password" -b
ansible all -m debug -a "var=ansible_ssh_pass" -b
ansible all -m debug -a "var=ansible_ssh_pass" -e "ansible_ssh_pass=nothing" -b
ansible all -m setup -e "ansible_ssh_pass=nothing" -b
ansible all -m setup -b
ansible all -m setup
ll
cat inventory 
vi inventory 
ansible all -m setup
vi inventory 
ansible all -m setup
ansible all -m setup | more
ansible all -m setup -a "filter=ansible_devices"
ansible all -m setup -a "filter=ansible_hostname"
ansible all -m setup -a "filter=ansible_host"
ansible all -m setup -a "filter=ansible_hostname"
ansible all -a "hostnamectl set-hostname {{ inventory_hostname }}"
ansible all -a "hostname"
ansible all -m debug -a "msg={{ inventory_hostname }}"
ansible all -a "hostnamectl set-hostname {{ inventory_hostname }}"
ansible node2.lab.com -a "hostnamectl set-hostname {{ inventory_hostname }}"
ansible all -m hostname -a "name={{ inventory_hostname }}"
ansible all -m hostname -a "name={{ inventory_hostname }}" -b
su -
ansible all -a hostname
ansible all -m setup -a "filter=ansible_networks"
ansible all -m setup -a "filter=ansible_network"
ansible all -m setup -a "filter=network"
ansible all -m setup -a "filter=networks" 
git status
ansible all -m setup -a ""
ansible all -m setup  | grep ipv4
ansible all -m setup  | grep ansible_
ansible all -m setup  | grep ansible_interfaces
ansible all -m setup -a "filter=ansible_interfaces"
vi inventory 
ansible all -m setup -a "filter=ansible_interfaces"
vi inventory 
ansible all -m setup -a "filter=ansible_interfaces"
ll
mkdir lesson1
mkdir lesson2
mkdir lesson3
mkdir lesson4
mkdir lesson5
mkdir lesson6
mkdir lesson7
mkdir lesson8
mv ansible.cfg inventory lesson1/
ll
ll lesson
ll lesson1/
for i in `seq 2 10` do cp lesson1/* lesson$i/ done;
for i in `seq 2 10`; do cp lesson1/* lesson$i/ done;
seq 1 10
seq 2 10
for i in `seq 2 10`; do echo $i done; ;
for i in `seq 2 10`; do echo $i done;
for i in `seq 2 10` ; do echo $i done;
for i in 2 3 10  do echo $i done;
for i in `seq 2 10` ; do echo $i ;done;
for i in `seq 2 10`; do cp lesson1/* lesson$i/; done;
mkdir lesson9
mkdir lesson10
for i in `seq 2 10`; do cp lesson1/* lesson$i/; done;
tree 
cd lesson1
mkdir inventory
vi inventory 
ansible --list-host
ansible all --list-host
vi inventory 
ansible-galaxy list
cd /usr/share/ansible/roles/rhel-system-roles.network/
ll
less README.md 
cd -
vi ansible.cfg 
ansible all -m whoami 
ansible all -a whoami 
ansible all -a whoami -b
sudo -i
su - ansible 
su -
ansible all -a whoami 
vi ansible.cfg 
ansible all -a whoami 
cat /etc/ansible/ansible.cfg 
vi ansible.cfg 
ansible all -a whoami 
ansible all -m hostname "name={{ inventory_hostname }}"
ansible all -m hostname -a "name={{ inventory_hostname }}"
ll
ls
ll inventory 
mv inventory hosts_list 
mkdir inventory 
mv hosts_list inventory/
ansible all --list-hosts
vi inventory/hosts_list 
mkdir inventory/host_vars
vi inventory/host_vars/all.ini
mv inventory/host_vars/all.ini inventory/host_vars/all
vi inventory/hosts_list 
ansible all --list-hosts
ansible all -a whoami 
mv inventory/host_vars inventory/group_vars
ansible all -a whoami 
vi inventory/group_vars/all 
ansible all -a whoami 
ansible-vault --help
ansible-vault encrypt_string ansible
ansible-vault encrypt_string 'ansible'
vi inventory/group_vars/all 
ansible all -a whoami --ask-vault-password
ansible all -a whoami --ask-vault-pass
vi encrypt_pass
chmod 700 encrypt_pass 
ansible all -a whoami --vault-password-file encrypt_pass
vi encrypt_pass 
ansible all -a whoami --vault-password-file encrypt_pass
vi encrypt_pass 
ansible-vault encrypt_string 'ansible' --vault-password-file encrypt_pass 
vi inventory/group_vars/all 
ansible all -a whoami --vault-password-file encrypt_pass
vi inventory/group_vars/all 
ansible all -a whoami --vault-password-file encrypt_pass
vi inventory/group_vars/all 
ansible all -a whoami --vault-password-file encrypt_pass
chmod 100 encrypt_pass 
ansible all -a whoami --vault-password-file encrypt_pass
./encrypt_pass 
chmod u+x encrypt_pass 
./encrypt_pass 
ll encrypt_pass 
chmod u+w encrypt_pass 
ll encrypt_pass 
./encrypt_pass 
ansible all -a whoami --vault-password-file encrypt_pass
chmod u+r encrypt_pass 
ansible all -a whoami --vault-password-file encrypt_pass
chmod u-w encrypt_pass 
ansible all -a whoami --vault-password-file encrypt_pass
vi encrypt_pass 
ansible all -a whoami --vault-password-file encrypt_pass
ls
cat ansible.cfg 
vi ansible.cfg 
ls
cd ..
ll
pwd
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory/ dest=/home/ansible/lesson2/inventory recurse=true force=true"
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory/ dest=/home/ansible/lesson2/inventory recurse=true force=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson2/inventory recurse=true force=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson2/ recurce=true force=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson*/ recurce=true force=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson*/ recurce=true force=true remote_src=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson2/ recurce=true force=true remote_src=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson2/ directory_mode=true force=true remote_src=true" -c local
ansible-doc copy
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory/ dest=/home/ansible/lesson2/inventory directory_mode=true force=true remote_src=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson2/ directory_mode=true force=true remote_src=true" -c local
ansible-doc synchronize
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson11 directory_mode=true force=true remote_src=true" -c local
ll /home/ansible/lesson11/
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson12 directory_mode=true force=true remote_src=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson10 directory_mode=true force=true remote_src=true" -c local
ansible -i localhost, all -m file -a "path=/home/ansible/lesson2/inventory state=absent" -c local
ansible -i localhost, all -m file -a "path=/home/ansible/lesson3/inventory state=absent" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson2/ directory_mode=true remote_src=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson2/ directory_mode=true force=true remote_src=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson3/ directory_mode=true force=true remote_src=true" -c local
ansible -i localhost, all -m file -a "path=/home/ansible/lesson[4-9]/inventory state=absent" -c local
ansible-doc file
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson3/ directory_mode=true force=true remote_src=true" -c local
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson3/ directory_mode=true remote_src=true" -c local
cat /home/ansible/lesson3/
cat /home/ansible/lesson3/inventory/
ll /home/ansible/lesson3/inventory/
ansible -i localhost, all -m copy -a "src=/home/ansible/lesson1/inventory dest=/home/ansible/lesson3/ directory_mode=true remote_src=true" -c local
ll /home/ansible/lesson1/inventory
cd /home/ansible/lesson1
ll
cd inventory/
ll inventory/
su - ansible 
su - root
ll inventory/
ll ../lesson2/inventory/
ll ../lesson3/inventory/
cat ../lesson3/inventory/hosts_list 
exit
cat ../lesson3/inventory/hosts_list 
cat lesson3/inventory/hosts_list 
su - root
cat lesson3/inventory/hosts_list 
ll
cd lesson3/
ll
cd ..
ll
cp -R lesson1 lesson0
stat lesson1/
stat lesson1/inventory/hosts_list 
stat lesson1/inventory/group_vars 
cat lesson0/inventory/
cat lesson0/encrypt_pass 
cat lesson0/inventory/
ls lesson0/inventory/
exit
ll
vi inventory
cat /etc/ansible/ansible.cfg 
less /etc/ansible/ansible.cfg 
vi ansible.cfg
less /etc/ansible/ansible.cfg 
vi ansible.cfg
ansible all -m ping -k -K -b
less /etc/ansible/ansible.cfg 
vi ansible.cfg
less /etc/ansible/ansible.cfg 
vi ansible.cfg
ansible all -m ping -k -K -b
ansible all -m ping -k -b
ansible all -m ping -k -K -b
vi /etc/sudoers
sudo -i
su -
ll
ls lesson0/
ls lesson0/inventory/hosts_list 
ls lesson*/inventory/hosts_list 
tree
cat lesson0/
cat lesson0/ansible.cfg 
cat lesson0/inventory/group_vars/all
rm -rf lesson0/inventory/
su - root
pwd
cd lesson0/
tree 
ll
mkdir inventory/group_vars
vi inventory/group_vars/all 
tree
vi inventory/hosts_list 
tree
cd ..
tre
tree
cat lesson0/inventory/hosts_list 
ll
cp -r lesson0/inventory lesson{1,2,3,4,5,6,7,8,9,10,11,12}/
ll lesson0/inventory/
tree
ll lesson12/inventory/
ll lesson12/lesson*
rm -rf lesson12/lesson*
tree
rm -rf lesson1/inventory/
su - root
ll lesson*/*
sudo rm -rf lesson1/inventory/
su - 
sudo rm -rf lesson1/inventory/
exit
ll
cd plays/
ll
cp ../lesson0/ansible.cfg .
cp -pr ../lesson0/inventory/ .
ansible all --list-hosts
tree
vi inventory/hosts_list 
ansible all --list-hosts
cat inventory/hosts_list 
ansible proxy --list-hosts
ansible all -m setup -a "filter=ansible_all_ipv4"
tree ..
ansible all -m setup -a "filter=ansible_all_ipv4" ../lesson1/encrypt_pass 
ansible all -m setup -a "filter=ansible_all_ipv4" --vault-pass-file=../lesson1/encrypt_pass 
ansible all -m setup -a "filter=ansible_all_ipv4" --vault-pass-file="../lesson1/encrypt_pass"
ansible all -m setup -a "filter=ansible_all_ipv4" --vault-password-file="../lesson1/encrypt_pass"
vi inventory/group_vars/all 
cp ../lesson1/encrypt_pass .
ping 10.0.0.24
ip a
restart
reboot
exit
sudo rm -rf lesson1/inventory/
sudo rm -rf lesson2/inventory/
ll lesson*/*
tree
cp -pr lesson0/{ansible.cfg,encypt_pass} lesson11
cp -pr lesson0/{ansible.cfg,encrypt_pass} lesson11/
cp -pr lesson0/{ansible.cfg,encrypt_pass} lesson12/
tree
for i in `seq 1 12`; cp -pr lesson0/{ansible.cfg,encrypt_pass,inventory} lesson$i/; done
for i in `seq 1 12`; do cp -pr lesson0/{ansible.cfg,encrypt_pass,inventory} lesson$i/; done
ll lesson1/
cat lesson1/encrypt_pass 
ll lesson11/encrypt_pass 
cat lesson11/encrypt_pass 
for i in `seq 1 12`; do cp -pr lesson0/{ansible.cfg,encrypt_pass,inventory} lesson$i/; done
tree
pwd
mkdir plays
cd plays/
tre
tree
yum install tree
sudo yum install tree
firefox
su - mboussettaaa
su - mboussetta
sudo su - mboussetta
sudo yum update
ll
cd plays/
ll
vi fail_if_no_host.yml
ansible-playbook fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=no_a_host"
ansible-playbook fail_if_no_host.yml -e "target_machines=not_a_host"
ansible-playbook fail_if_no_host.yml -e "target_machines=node3"
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com"
ansible-playbook fail_if_no_host.yml -e "target_machines=node3"
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com"
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com" -v
ll
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node2" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node2" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node2" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node2" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node2.lab.com" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node2.lab.com" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node2.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node22.lab.com,node.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node.lab.com" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node.lab.com" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node.lab.com" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node3.lab.com,node.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node4.lab.com,node.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node42.lab.com,node.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node42.lab.com,node19.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node42.lab.com" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node2.lab.com" -v
vi fail_if_no_host.yml 
ansible-playbook fail_if_no_host.yml -e "target_machines=node2.lab.com,localhost" -v
ansible-playbook fail_if_no_host.yml -e "target_machines=node21.lab.com,localhost" -v
vi inventory/hosts_list 
ansible-playbook fail_if_no_host.yml -e "target_machines=localhost" -v
ll
cp network_configuration.yml interfaces.yml
vi interfaces.yml 
ansible-playbook interfaces.yml 
ansible --list-hosts 
ansible --list-hosts  localhost
ls
cd ..
ll
git status
yum install -y git
dnf update
su - root
exit
