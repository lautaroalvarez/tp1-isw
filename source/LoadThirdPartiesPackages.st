" Load Seaside "
Gofer new
    url:'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
    package: 'ConfigurationOfSeaside3';
    load.
((Smalltalk at: #ConfigurationOfSeaside3) project version: #stable) load: 'CI'.