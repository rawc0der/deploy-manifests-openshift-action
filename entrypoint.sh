#!/bin/sh -l

echo "Authenticating Openshift TOKEN.."
oc login --token=$1 --server=$2

echo "Installing Manifests.."
oc apply -n $4 -f $3

echo "Done.."

status=$(oc status -n $4)
echo "::set-output name=status::$status"

exit 0

# if <condition> ; then
#   echo "Game over!"
#   exit 1
# fi