# armocto
Deploy Arma III dedicated server inside an octohost

## Usage
Normal octohost behavior, given the magic comments in the Dockerfile you’ll need a home directory for steam as /exports/armaocto/steam on the octohost,
for retrieval of a suitable `steam` folder create one on a debian machine or use the method discussed below in the caveats, place it on the octohost in /exports/armocto/, update your username and password in the Dockerfile, then push the repo at octo:
```
git remote add octo git@YOUROCTOHOSTHERE
git push octo master
```
please read the caveats!

## Caveats
now the first time you do this you’ll need to configure steam  because of the Steam Guard Token. You must get into the Container, login as the steam user and incant `/home/steam/steamcmd/steamcmd.sh`,
then at the steam prompt type `login $STEAM_USER $STEAM_PASSWORD` with the steam credentials for your dedicated server account 
(it is recommended you make a separate account for each dedicated server you put up)

I’m looking for a good way to automate this process.  Perhaps, just configure the entire steam folder externally with the guard tokens and all, I’m not certain how portable that directory is going to be after all that is configured.

At this point you will have to do the dance to get the steam token.

And to make all this persistent you’ll need to -v mount at least the steam directories, but I’ve just been mounting the entire /home/steam directory so I can save maps and other things out as well YMMV

you can see an example here that I made for octohost.io
https://github.com/Thalhalla/armocto

saving the directory before migrating to octohost can be a tricky step.  Essentially I run `make run` on this project:
http://thalhalla.github.io/dockarmaiii/
and copy the home directory out at that time.  Then copy over to my octohost into the `/exports/armocto` directory

view the dev docs here on creating a script for the steamcmd:
https://developer.valvesoftware.com/wiki/SteamCMD#Creating_a_script
that is the same as the default steamer.txt given here

