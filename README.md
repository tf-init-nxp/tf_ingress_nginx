Terraform module for Nginx Ingress Controller
===============================================

<!-- BEGIN_TF_DOCS -->
# Terraform Module to create AZ Resources

## Contributing
If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

## Usage


## Providers

| Name | Version |
|------|---------|
| helm | >= 2.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.ingress_nginx](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additional\_set | Optional set for additional helm settings | `list` | `[]` | no |
| atomic | If set, installation process purges chart on fail | `bool` | `false` | no |
| chart\_version | HELM Chart Version for nginx controller | `string` | `"4.5.2"` | no |
| controller\_daemonset\_use\_hostport | Also use host ports(80,443) for pods. Node Ports in services will be untouched | `bool` | `false` | no |
| controller\_kind | Controller type: DaemonSet, Deployment etc.. | `string` | `"DaemonSet"` | no |
| controller\_request\_memory | Memory request for pod. Value in MB | `number` | `140` | no |
| controller\_service\_external\_traffic\_policy | Traffic policy for controller. See docs. | `string` | `"Local"` | no |
| create\_namespace | Create a namespace | `bool` | `false` | no |
| define\_node\_ports | By default service using NodePorts. It can be generated automatically, or you can assign this ports number | `bool` | `false` | no |
| disable\_heavyweight\_metrics | Disable some 'heavyweight' or unnecessary metrics | `bool` | `false` | no |
| ingress\_class\_is\_default | IngressClass resource default for cluster | `bool` | `true` | no |
| ingress\_class\_name | IngressClass resource name | `string` | `"nginx"` | no |
| ip\_address | External Static Address for loadbalancer | `string` | `null` | no |
| metrics\_enabled | Allow exposing metrics for prometheus-operator | `bool` | `false` | no |
| name | Name of helm release | `string` | `"ingress-nginx"` | no |
| namespace | Namespace where nginx controller should be deployed | `string` | `"kube-system"` | no |
| publish\_service | Publish LoadBalancer endpoint to Service | `bool` | `true` | no |
| service\_node\_port\_http | NodePort number for http | `string` | `"32001"` | no |
| service\_node\_port\_https | NodePort number for https | `string` | `"32002"` | no |
| timeout | Time in seconds to wait for any individual kubernetes operation | `number` | `300` | no |
| wait | Will wait until all resources are in a ready state | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| ingress\_class\_name | Ingress class name |
| name | Ingress controller name |
| namespace | Name space name |
<!-- END_TF_DOCS -->
