#This is a sample Image  terraform, ansible, inspec chef executables 
FROM registry.access.redhat.com/ubi7:7.7

RUN yum install wget unzip -y

# # Ansible
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py
RUN pip install --user ansible
RUN export PATH=$PATH:/root/.local/bin/

# # Terraform
RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
RUN unzip -o terraform_0.12.24_linux_amd64.zip -d /usr/local/bin/ 

# # Chef Inspec
RUN wget https://packages.chef.io/files/stable/inspec/4.18.104/el/7/inspec-4.18.104-1.el7.x86_64.rpm
RUN rpm -ivh inspec-4.18.104-1.el7.x86_64.rpm 
