#################################################################################
###									      ###
###  			   D2 File Copy by sirLoinsAlot			      ###
###									      ###
#################################################################################

     !!! - THIS IS FOR WINDOWS AND HAS ONLY BEEN TESTED IN WINDOWS 10 - !!!

Please read through this file carefully and complete the instructions listed 
below, in order, to ensure the correct set up of this process. If you do not
know what you are doing then please do not make any changes to any of the 
files except Configuration.ps1. Make sure you read this whole file before 
proceeding.

Overview:
I initially created these scripts to backup my PlugY save as I have it set up on
both my desktop and my laptop. I was unable to change the save path using the 
string in the PlugY.ini file and I subsequently sought a way to do it myself.
After trying several other methods I decided it would be quicker and easier for
me to just write some scripts that take care of it for me and this is what came
of it. The reason they are set-up like they are, is because I am a little bit
obsessive compulsive when it comes to my D2 game data, so while it is a little
bit overkill, it is just the way I chose to go about it.

If you wish to get in touch with me regarding these scripts you can email me
at sirLoinsAlot@outlook.com, I will do my best to get back to you.

This is a cut-down version to be ran manually. I will release the automated
varsion that I currently use myself at a later stage, pending further testing 
for other machines. I need to make sure it works correctly first!

What is Happening:
These scripts work by first taking the files from your backup location and 
copying them over the local files. Then the second script will copy the local 
files to the backup location. If you have versioning set (see below), the shutdown 
file will first copy the backup location to the next version control folder first 
before copying the files over to the main backup.

Note: When getting file paths for the configuration files, my suggestion is to
	open the folder using file explorer and copy it from the address bar.

Instructions:
 - If you only play Diablo 2 with the plugy mod from one location/computer, you
	might only want to back up the files after playing and not restore them
	before-hand; if so, just use the shutdown file and not the startup file

 - Select a location on your machine 'Documents' or 'Desktop' for example, and 
	copy the three powershell script files there 'D2-FileCopy.Startup.ps1', 
	'D2-FileCopy.Shutdown.ps1' and 'Configuration.ps1'
	(Just make sure that all three files are in the same location.)

 - Now it's time to configure everything for your machine by altering the ps1
	configuration file. Here we will list the options and what to do with
	each of them:
	 - localSavePath: Filepath for your plugy save files
	 - backupSavePath: Filepath you wish to back the files up to 
	 	(i.e. OneDrive filepath)
	 - versioningOn: This is used to turn version control on and off
	 - versioningPath: Filepath for your versioned copies of previous backups

Running the Backup:
 - Before starting your game run the 'D2-FileCopy.Startup.ps1' script by double 
clicking it, to make sure your local files are up to date

 - After you have finished playing, run the second script 
'D2-FileCopy.Shutdown.ps1' to ensure that the most recent game files are now 
backed up

Warning:
If saving a backup to cloud storage you need to ensure it is fully backed up 
before shutting down your machine - for me this just means waiting 30 seconds.


These scripts were initially thought of and created by me, sirLoinsAlot. They are
free for you to use and I hope they come in as useful for you as they do for me :)

See you in Hell D2 fans!

################################# Disclaimer ####################################
While I have done my best to make this a useful tool set, to aid in the backing 
up of Diablo 2 game files, I take no responsibility for any consequences of
you or anyone else using the files included in this set. Please use with caution!
#################################################################################
