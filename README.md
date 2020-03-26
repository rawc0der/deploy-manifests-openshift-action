# Deploy Manifests to OpenShift Cluster docker action

This action deploys specified kubernetes manifest files to OpenShift Clusters. You need to specify which files/folders from the repository you want to deploy, along with your OpenShift Server Address and Access Token.

## Inputs

### `oc-token`

**Required** 'OpenShift Token used for authenticating the client. Example [ZZZZZZZ_ZZZZZZZZZ-ZZZZZZZZZZZZ]'

### `oc-server`

**Required** 'OpenShift Server to use for connection. Example [https://api.us-east-2.starter.openshift-online.com:6443]  '

### `oc-source-path`

**Required** 'The OC_SOURCE_PATH env variable used for selecting which files or folders to deploy. Example [/deploy/] [/deploy/helm/charts] [/deploy/secrets.yaml] [kubernetes-application.yaml]'

### `oc-namespace`

**Required** 'The OC_SOURCE_PATH env variable used for selecting which files or folders to deploy. Example [/deploy/] [/deploy/helm/charts] [/deploy/secrets.yaml] [kubernetes-application.yaml]'

### `oc-use-insecure`

**Optional** 'Use insecure connection'


## Outputs

### `status`

The status of the cluster after deployment.


## Secrets the action uses

### `oc-token` Available as an Secret in your Github account
### `oc-server` Available as an Secret in your Github accountserver

## Environment variables the action uses

### `oc-token` 

**Required**  '{string} The TOKEN associated with your OpenShift Account. Example: XXXXXXXXX-ZZZZZZZZZ_XXXXXXXX' 

### `oc-server`

**Required** '{string} Your OpenShift Cluster API Server Address. Example: https://api.us-east-2.starter.openshift-online.com:6443'


## Example usage
```
uses: rawc0der/deploy-manifests-openshift-action@v0.0.1
env:  
  oc-token: 'XXXXXXXXX-ZZZZZZZZZ_XXXXXXXX'
  oc-server: 'https://api.us-east-2.starter.openshift-online.com:6443' 
with:
  oc-source-path: 'deploy/'
  oc-namespace: 'rawdata'
  oc-use-insecure: 'false'
```