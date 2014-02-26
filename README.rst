vagrant-sharelatex
==================

Get the code and Setup
-------
::

  git clone git@github.com:laszewsk/vagrant-sharelatex.git


::

  mkdir data

place your setttings.development.coffee in the data dir::

  edit data/setttings.development.coffee

You can find an example at

* https://github.com/sharelatex/sharelatex/blob/master/config/settings.development.coffee.example

Make sure if you copy it to rename it to setttings.development.coffee
and fill out the AWS credentials. Otherwise the install does not
complete.


Starting the VM (not yet working, please help)
----------------------------------------------

vagrant up

Idieally this shoudl start up all of the services automatically and configure things correctly, however for some reason it does not work

On your local host you should be able to open the web browser on::

  http://localhost:3000


However it does not work :(

If you know how to fix this, please contact me.

Gregor

