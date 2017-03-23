# jenkins

TODO: Enter the cookbook description here.

The cookbook installs Jenkins on the Amazon Linux EC2 instance. 

I have created an AWS Chef automate server using the AWS OpsWorks.

The cookbook is uploaded to the Chef automate server using the following command: knife cookbook upload chef_jenkins

knife bootstrap <IP> -N <instance name> --ssh-user ec2-user --sudo --identity-file /Users/anirudh/Documents/chefJenkins/myEc2KeyPair.pem --run-list "recipe[chef_jenkins]"

TODO: 
Use CFT to bootstrap the node to Chef server
Auto create the user in Jenkins


