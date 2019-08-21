#!/bin/bash

PROJECT=$(cat .lagoon.yml | shyaml get-value project)
curl -s -k -X POST -d projectName=$PROJECT -d branchName=$TRAVIS_BRANCH  https://rest2tasks-lagoon-master.lagoon.ch.amazee.io/deploy
