#!/bin/bash

# Navigate to the application directory
cd /home/ec2-user/my-node-app

# Install dependencies (in case there are changes)
npm install >> /root/install.log

# Start the Node.js application
#npm start >> /root/start.log &
pm2 delete test || true
pm2 start app/index.js --name test
