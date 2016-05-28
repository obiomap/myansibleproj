# myansibleproj
This playbook creates and configures apache2 on ubuntu server.
The following files are needed:
hosts: This contains ip addresses of the servers to be configured.
virtualhost.conf: This file is needed to configure your Virtualhost on apache2.conf file. 
See example below:
<VirtualHost *:{{ http_port }}>
    ServerAdmin webmaster@{{ domain }}
    ServerName {{ domain }}
    ServerAlias www.{{ domain }}
    DocumentRoot /var/www/html
    AllowOverride All
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

front.html: This file is where you input the content of your index.html file. In this case this file contains "Automation for the People"
which is what you would see when you access the page.
Please feel free to add add to the project and remember to update the README.md file.
Useful git commands:
echo "# myansibleproj" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/obiomap/myansibleproj.git
git push -u origin master
