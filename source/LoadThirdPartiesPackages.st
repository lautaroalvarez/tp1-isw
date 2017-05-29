| output | 

output := Transcript. 
output open.
output show: 'Loading Seaside...'; cr.

" Load Seaside "
Gofer new
    url:'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
    package: 'ConfigurationOfSeaside3';
    load.
((Smalltalk at: #ConfigurationOfSeaside3) project version: #stable) load: 'CI'.

output show: 'Loading Seaside...OK'; cr.

OrderedCollection new
  add: #('Buoy' 'github://ba-st/Buoy:master/source');
  add: #('RenoirSt' 'github://ba-st/RenoirSt:stable-pharo-50/source');
  add: #('Willow' 'github://ba-st/Willow:master/source');
  add: #('WillowBootstrap' 'github://ba-st/Willow-Bootstrap:master/source');
  do: [:toLoad | | baseline repo | 

    baseline := toLoad at: 1. 
    repo := toLoad at: 2. 

    output show: ('Loading {1}...' format: { baseline }); cr. 
    Metacello new
    	baseline: (toLoad at: 1);
    	repository: (toLoad at: 2);
    	load.
    output show:  ('Loading {1}...OK' format: { baseline }); cr].   