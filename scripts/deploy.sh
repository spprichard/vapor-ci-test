#!/bin/bash
if [ $TRAVIS_BRANCH == 'master' ] ; then
    cd deploy
    git init

    git remote add deploy "deploy@$SERVER_IP:/home/deploy/vapor-ci-test"
    git config user.name "Travis CI"
    git config user.email "spprichard20@gmail.com"

    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master"
fi

