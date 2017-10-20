LAMP Project - Installaion
==========================
Goal
----
I did the following work because my friend needed a little bit help at his own private project, thanks to **itswadesh's** great work i finished it quite fast - you can see that i just customed it a litte bit to suite my project needs. Then, i realized that this project can be a really nice starting point for begginers to expose themselves to the full deployment of a web service stack (LAMP): *L* - Linux operating system, *A* - Apache HTTP Server, *M* - MySQL(MariaDB) RDMS, *P* - PHP programming language, and angularJS basic features.

Description
-----------
The web application basically displays a regular-standart table that stored inside the MySQL RDMS. Although, it sounds like a simple mission, but if the table itself starts to grow up, if you check my commit, you can see that i have something like 30+ columns, moreover, my data can grow to about tens of thousands of rows, in cases like this you probably should start thinking about implementing some filtering and paging features for your table as implemented inside **itswadesh's** web application, or you will end up with a pretty slow webpage.
you can see a live demo he created and a great tutorial for setting up the application at his private blog:
http://angularcode.com/angularjs-datagrid-paging-sorting-filter-using-php-and-mysq

But, before that compelte the following steps:
1. Create CentOS 7.4 virtual machine.
You can choose any hypervisor you want, i presonally like using Virtualbox for it's easy usage and stability. Go straight to the CentOS offical site and download a minimal CentOS 7.4 ISO file. Now, you can deploy your machine right from the hypervisor's GUI, you got a lot tutorials on the net.

NOTE: I personally managing a lot of virtual machines so managing them manually doesn't scale for me, Hasicorp's *Vagrant* tool helps me provisioning and configuring my virtualbox's vms using scripts through the CLI. Vagrant works with most of the known hypervisor and uses pretty simple and well documented syntax.


2. Deploy The LAMP stack
You can use the following great tutorial to deploy it:
https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7

3. Now, go straight to  **itswadesh's** tutorail and deploy your web appication :)

NOTE:
csv-to-mariadb.sh file is a bash script that inserts csv data into maria, i found it more convenient thaninserting it via sql scripts.
