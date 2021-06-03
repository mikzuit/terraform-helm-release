<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.helm_release](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [random_string.force_helm_release](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helm_release_atomic"></a> [helm\_release\_atomic](#input\_helm\_release\_atomic) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_chart"></a> [helm\_release\_chart](#input\_helm\_release\_chart) | n/a | `string` | n/a | yes |
| <a name="input_helm_release_chart_repository"></a> [helm\_release\_chart\_repository](#input\_helm\_release\_chart\_repository) | n/a | `string` | n/a | yes |
| <a name="input_helm_release_chart_version"></a> [helm\_release\_chart\_version](#input\_helm\_release\_chart\_version) | n/a | `string` | n/a | yes |
| <a name="input_helm_release_cleanup_on_fail"></a> [helm\_release\_cleanup\_on\_fail](#input\_helm\_release\_cleanup\_on\_fail) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_create_namespace"></a> [helm\_release\_create\_namespace](#input\_helm\_release\_create\_namespace) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_description"></a> [helm\_release\_description](#input\_helm\_release\_description) | n/a | `string` | n/a | yes |
| <a name="input_helm_release_force_helm_release"></a> [helm\_release\_force\_helm\_release](#input\_helm\_release\_force\_helm\_release) | n/a | `bool` | `true` | no |
| <a name="input_helm_release_force_update"></a> [helm\_release\_force\_update](#input\_helm\_release\_force\_update) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_lint"></a> [helm\_release\_lint](#input\_helm\_release\_lint) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_max_history"></a> [helm\_release\_max\_history](#input\_helm\_release\_max\_history) | n/a | `number` | `5` | no |
| <a name="input_helm_release_namespace"></a> [helm\_release\_namespace](#input\_helm\_release\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_helm_release_prevent_create_namespace"></a> [helm\_release\_prevent\_create\_namespace](#input\_helm\_release\_prevent\_create\_namespace) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_recreate_pods"></a> [helm\_release\_recreate\_pods](#input\_helm\_release\_recreate\_pods) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_release_name"></a> [helm\_release\_release\_name](#input\_helm\_release\_release\_name) | n/a | `string` | n/a | yes |
| <a name="input_helm_release_replace"></a> [helm\_release\_replace](#input\_helm\_release\_replace) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_repository_password"></a> [helm\_release\_repository\_password](#input\_helm\_release\_repository\_password) | n/a | `string` | `""` | no |
| <a name="input_helm_release_repository_username"></a> [helm\_release\_repository\_username](#input\_helm\_release\_repository\_username) | n/a | `string` | `""` | no |
| <a name="input_helm_release_reset_values"></a> [helm\_release\_reset\_values](#input\_helm\_release\_reset\_values) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_reuse_values"></a> [helm\_release\_reuse\_values](#input\_helm\_release\_reuse\_values) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_sensitive_values"></a> [helm\_release\_sensitive\_values](#input\_helm\_release\_sensitive\_values) | n/a | `map(string)` | `{}` | no |
| <a name="input_helm_release_skip_crds"></a> [helm\_release\_skip\_crds](#input\_helm\_release\_skip\_crds) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_timeout"></a> [helm\_release\_timeout](#input\_helm\_release\_timeout) | n/a | `string` | `120` | no |
| <a name="input_helm_release_values"></a> [helm\_release\_values](#input\_helm\_release\_values) | n/a | `map(string)` | `{}` | no |
| <a name="input_helm_release_verify"></a> [helm\_release\_verify](#input\_helm\_release\_verify) | n/a | `bool` | `false` | no |
| <a name="input_helm_release_wait"></a> [helm\_release\_wait](#input\_helm\_release\_wait) | n/a | `bool` | `true` | no |
| <a name="input_helm_release_wait_for_jobs"></a> [helm\_release\_wait\_for\_jobs](#input\_helm\_release\_wait\_for\_jobs) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helm_release"></a> [helm\_release](#output\_helm\_release) | Output of the release resource |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->