# r10k-test

- Build packer image using template inside of packer directory
- Deploy packer image on AWS with AMI Role to be able to read ec2 instances tags (details <a href="https://forge.puppet.com/bryana/ec2tagfacts#aws-iam-role">here</a>
- Add tag role with value frontend
- Connect to the instance
- Run r10k

`$ sudo -E r10k deploy environment --puppetfile -c /etc/puppet/r10k.yaml`

- Run puppet apply

`$ sudo puppet apply -d -v /etc/puppet/environments/production/site.pp`

make sure the name test.example.com exists or change it
