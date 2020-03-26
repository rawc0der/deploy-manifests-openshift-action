# Deploy Manifests to OpenShift Cluster docker action

This action deploys specified kubernetes manifest files to OpenShift Clusters. You need to specify which files/folders from the repository you want to deploy, along with your OpenShift Server Address and Access Token.

## Inputs

### `oc-token`

**Required** The name of the person to greet. Default `"World"`.

### `oc-server`

**Required** The name of the person to greet. Default `"World"`.

### `oc-source-path`

**Required** The name of the person to greet. Default `"World"`.

### `oc-namespace`

**Required** The name of the person to greet. Default `"World"`.

### `oc-use-insecure`

**Required** The name of the person to greet. Default `"World"`.


## Outputs

### `status`

The status of the cluster after deployment.

## Example usage
```
uses: rawc0der/deploy-manifests-openshift-action@v0.0.1
with:
  oc-token: 'XXXXXXXXX-ZZZZZZZZZ_XXXXXXXX'
  oc-server: 'https://api.us-east-2.starter.openshift-online.com:6443'
  oc-source-path: 'deploy/'
  oc-namespace: 'rawdata'
  oc-use-insecure: 'false'
```