# Creating virtual deployment enviroment for deploying web application
## What is it?
This source organizes creating, preparing configuration and deploying identical machine images on base Windows Server for Vagrant by Packer.

## Packer
* Used Packer 1.4.0
*  Packer is tool for creating images for multiple platforms from a single source configuration. 
*  For additinally information follow the link:
>https://www.packer.io/docs/index.html

## Vagrant
* Used Vagrant 2.2.4/n
* Vagrant is a tool for building and managing virtual machine environments in a single workflow.
* For additinally information follow the link:
>https://www.vagrantup.com/docs/index.html

## Windows Server
* Used Windows Server 2019
* Microsoft Server Standard edition is used by default. You can modify this by editing the Autounattend.xml file, changing the ImageInstall>OSImage>InstallFrom>MetaData>Value element.

## Microsoft SQL Server
* Used MS SQL Express 2017

## Microsoft Build Tools
* Used MS Buld Tools for Visual Studio 2019

## Git
* Used Git 2.21.0

## Virtual Box
* Used Virtual Box 6.0.6

# How start
1. Clone this repo to local directory.
2. Download the Windows Server 2019 iso.
3. Get to know the MD5 hash of iso.
4. Move iso to cloned directory.
5. Download the Microsoft SQL Server and move .exe to cloned directory in folder "InstallSQL".
6. Download the Microsoft Build Tools and move .exe to cloned directory in folder "InstallMSBuild".
7. Download the Microsoft Build Tools and move .exe to cloned directory in folder "InstallGit".
8. Compress archive "InstallPack.zip" that include folders: "InstallSQL","InstallMSBuild","InstallGit". 
8. Run:

 >packer build windows_2019.json

When operation finished you can build box and deploy image by Vagrant:
9. Run:

 > vagrant init <name of you'r box>
 > vagrant up

10. Wait while your VM is preparing.
11. Use your VM.
