#!/bin/sh -l

echo "Authenticating Openshift TOKEN.."
oc login --token=$OC_TOKEN --server=$OC_SERVER

echo "Installing Manifests.."
oc apply -n $OC_NAMESPACE -f $OC_SOURCE_PATH

echo "Done.."

status=$(oc status -n $OC_NAMESPACE)
echo "::set-output name=status::$status"

exit 0

# if <condition> ; then
#   echo "Game over!"
#   exit 1
# fi