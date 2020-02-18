- Install awscli : pip3 install awscli
<img width="812" alt="Screen Shot 2020-02-13 at 5 15 32 PM" src="https://user-images.githubusercontent.com/59787273/74487297-b9ea2180-4e84-11ea-8f16-04afc86a87c3.png">

- configue aws:aws configure
<img width="348" alt="Screen Shot 2020-02-13 at 5 20 29 PM" src="https://user-images.githubusercontent.com/59787273/74487480-2ebd5b80-4e85-11ea-9a6b-d0e7b9e4795a.png">

- install virtualenv: sudo pip3 install virtualenv
<img width="800" alt="Screen Shot 2020-02-13 at 6 51 47 PM" src="https://user-images.githubusercontent.com/59787273/74491681-f07a6900-4e91-11ea-880e-b4ae1d32a00c.png">

- create ansible-dir: mkdir -p ~/ansible-dir
- goto ansible-dir: cd ansible-dir/
- :virtualenv venv
<img width="827" alt="Screen Shot 2020-02-13 at 6 56 03 PM" src="https://user-images.githubusercontent.com/59787273/74491893-a8a81180-4e92-11ea-8d72-a3384bd535a1.png">

- :source venv/bin/activate
- :pip install ansible
	:pip install awscli boto boto3
<img width="694" alt="Screen Shot 2020-02-13 at 7 01 55 PM" src="https://user-images.githubusercontent.com/59787273/74492118-5e736000-4e93-11ea-8d09-18b262120e54.png">

- :pip install botocore
- : ansible-inventory -i aws_ec2.yml --list
<img width="696" alt="Screen Shot 2020-02-13 at 7 09 24 PM" src="https://user-images.githubusercontent.com/59787273/74492401-5e279480-4e94-11ea-96c5-120f75888f51.png">

- :mkdir ansible
 :cd ansible/
 :mkdir roles
 :ansible-galaxy init roles/httpd
 :tree httpd
 :ansible-galaxy init roles/commonInstallations
 :vim roles/commonInstallations/tasks/main.yml
 :vim commonpackages.yml
 :ansible-playbook -i httpd.aws_ec2.yml -u ec2-user --private-keys=~/Downloads/Chinmayee.pem commonpackages.yml
 :vim tasks/main.yml 
 :vim httpd.yml 
 :ansible-playbook -i httpd.aws_ec2.yml -u ec2-user --private-keys=~/Downloads/Chinmayee.pem httpd.yml
 
