#!/bin/bash
cd /app
echo "----- Now trying to run gunicorn ------ " 
gunicorn -b :5000 --reload --access-logfile - --error-logfile - app:app 

git clone $REPO_URL ok && cd ok && pip3 install -U -r requirements.txt
$START_CMD
