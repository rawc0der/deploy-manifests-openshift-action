#!/bin/sh -l

echo "Authenticating Openshift TOKEN.."
oc login --token=$OC_TOKEN --server=$OC_SERVER

echo "Installing Manifests.."
oc apply -n $2 -f $1

echo "Done.."

status=$(oc status -n $2)
echo "::set-output name=status::$status"

exit 0

# if <condition> ; then
#   echo "Game over!"
#   exit 1
# fi