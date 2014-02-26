vagrant-sharelatex
==================

Get the code and Setup
-------
::

  git clone git@github.com:laszewsk/vagrant-sharelatex.git


::

  cd sharelatex
  mkdir data

place your setttings.development.coffee in the data dir

You can find an example at

* https://github.com/sharelatex/sharelatex/blob/master/config/settings.development.coffee.example

Make sure if you rename it to setttings.development.coffee
and fill out the AWS credentials. Otherwise the install does not
complete.

Edit it with your favorite editor::

  emacs data/setttings.development.coffee



Starting the VM (not yet working, please help)
----------------------------------------------

vagrant up

On your local host you should be able to open the web browser on::

  http://localhost:3000


However, what happens next I do not know. Also it may be that redis
and other services may need additional configuration ...

If you know how to fix this, please contact me.

Gregor

