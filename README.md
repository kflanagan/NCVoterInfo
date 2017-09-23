# NCVoterInfo
This set of scripts are used to download the full NC voter registration file, 
uncompress it, create and load a mysql database.

It creates a user "user" with a password of "password".  Yes this is horrible practice
but it's throwaway data.

The reload script will do cleanup and refresh the data.

If you wish to add data it should be in a unique schema so that it's not 
nuked when the voter schema is refreshed.
