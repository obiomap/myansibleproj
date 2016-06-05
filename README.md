sandbox.yml provisions ubuntu ec2 instance
apache2.yml deploys and configures apache2
myansible.sh is a bash script that runs both playbooks

apache2.yml does not start until sandbox.yml completes.

Make sure boto is installed before running this.
