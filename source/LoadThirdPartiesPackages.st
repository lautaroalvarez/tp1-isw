" Load Seaside "
Gofer new
    url:'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
    package: 'ConfigurationOfSeaside3';
    load.
((Smalltalk at: #ConfigurationOfSeaside3) project version: #stable) load: 'CI'.

Metacello new
  baseline: 'Buoy';
  repository: 'github://ba-st/Buoy:master/source';
  load.

Metacello new
  baseline: 'RenoirSt';
  repository: 'github://ba-st/RenoirSt:stable-pharo-50/source';
  load

 Metacello new
	baseline: 'Willow';
	repository: 'github://ba-st/Willow:master/source';
	load

Metacello new
	baseline: 'WillowBootstrap';
	repository: 'github://ba-st/Willow-Bootstrap:master/source';
	load