# Deploy Manifests to OpenShift Cluster docker action

This action deploys specified kubernetes manifest files to OpenShift Clusters. You need to specify which files/folders from the repository you want to deploy, along with your OpenShift Server Address and Access Token.

## Environment Variables
### `OC_TOKEN`
**Required**  '{string} The TOKEN associated with your OpenShift Account. Example: XXXXXXXXX-ZZZZZZZZZ_XXXXXXXX' 

### `OC_SERVER`
**Required** '{string} Your OpenShift Cluster API Server Address. Example: https://api.us-east-2.starter.openshift-online.com:6443'

### `OC_SOURCE_PATH`
**Required** '{string} The OC_SOURCE_PATH env variable used for selecting which files or folders to deploy. Example [/deploy/] [/deploy/helm/charts] [/deploy/secrets.yaml] [kubernetes-application.yaml]'

### `OC_NAMESPACE`
**Required** '{string} The OC_SOURCE_PATH env variable used for selecting which files or folders to deploy. Example [/deploy/] [/deploy/helm/charts] [/deploy/secrets.yaml] [kubernetes-application.yaml]'

### `oc-use-insecure`
**Optional** '{string} Use insecure connection'


## Outputs
### `status`
The status of the cluster after deployment.


## Secrets the action uses
### `OC_TOKEN` 
Available as an Secret in your Github account. Example: 'XXXXXXXXX-ZZZZZZZZZ_XXXXXXXX'
### `OC_SERVER` 
Available as an Secret in your Github accountserver. Example: 'https://api.us-east-2.starter.openshift-online.com:6443' 

## Example usage
```
uses: rawc0der/deploy-manifests-openshift-action@v0.0.1
env:  
  OC_TOKEN: ${{ secrets.OC_TOKEN }}
  OC_SERVER:  ${{ secrets.OC_SERVER }} 
  OC_SOURCE_PATH: 'deploy/'
  OC_NAMESPACE: 'rawdata'
  oc-use-insecure: 'false'
```