*Forked from:* Vagrant's Linux Desktop Environment for Windows &amp; Mac
=

By: [Pablo Carranza](https://plus.google.com/107285164064863645881?rel=author) | [vDevices](http://www.vdevices.com/)

----

### This Project's Purpose

To provide a _simple_  (while not the only) way for Windows &amp; Mac users to launch a virtual machine ("VM") with a Linux Desktop environment &ndash; sandboxed on their local computer.

### Contributing

Contributions are more than welcome:

>If you are new to the wonderful world of [git](http://git-scm.com/) (version control) &ndash; and/or are uncomfortable with the command line &ndash; download [GitHub for Windows](http://windows.github.com/) or [GitHub for Mac](http://mac.github.com/).

1. Fork this repo. *See* [Fork A Repo | GitHub Help](https://help.github.com/articles/fork-a-repo).
1. Create a branch (`git checkout -b my_feature_branch`).
1. Commit your changes (`git commit -am "Added a sweet feature"`).
1. Push to the branch (`git push origin my_feature_branch`).
1. Create a Pull Request from your branch into the master branch of this repo (please be sure to provide enough detail, so I can decipher your proposed changes). *See* [Collaborating | GitHub Help](https://help.github.com/categories/63/articles).

----

# What I have changed

The provider is now libvirt; also, the main provisioning script will attempt to install the PicoScope6 software; moreover, the version of the Ubuntu Box is now 18.04 LTS.

## Reference

To have an idea of the original project or learn more about it, check out its [repo](https://github.com/vDevices/Vagrant-LinuxDesktop)

## Show the desktop

To connect to the VM desktop GUI, use a VNC viewer and connect to `127.0.0.1:5901`; the default password for for the user **vagrant** is **vagrant**.
