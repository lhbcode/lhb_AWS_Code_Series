#!/bin/bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

cd /home/bitnami/stack/build
rm -rf /home/bitnami/stack/build/build_state
npm run build | tee build_state 
build_compelete_ct=0
while [ $build_compelete_ct < 1 ]
do 
     build_compelete_ct=`grep "^ DONE  Build complete" /home/bitnami/stack/build/build_state | wc -l`
     sleep 1
done
cp -r /home/bitnami/stack/build/dist/* /home/bitnami/stack/nginx/html