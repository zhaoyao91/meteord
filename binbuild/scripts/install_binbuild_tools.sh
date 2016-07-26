set -e
# for npm module re-building
apt-get -y install build-essential libssl-dev git python

npm i -g npm
npm -v

npm install -g node-gyp
which node-gyp

# pre-install node source code for faster building
node-gyp install ${NODE_VERSION}

bash $METEORD_DIR/lib/cleanup.sh
