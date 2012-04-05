#!/bin/sh
# Uploads from local folder to server online 
# you could put the things to --exclude in separate text file if they get to lengthy
#
application_name="XXXXXX";
deploy_server="XXXXXX";
deploy_server_folder="XXXXX/";
ssh_user="XXXXXX";
script_location="./";
echo "Deploying '$application_name' to '$deploy_server' in folder '$deploy_server_folder'"
echo "Reading source $script_location"

rsync -avuz --delete --stats ./ $ssh_user@$deploy_server:$deploy_server_folder --exclude '.git'  --exclude 'sessions' --exclude 'deploy.sh' --exclude 'test.php' --exclude 'error.log' --exclude '.DS_Store' --exclude 'setupDB.sql'

echo "Deployment successful and so much speedier than ftp/sftp"

# this script makes me happy!