# _Hetzner Cloud_ - Firewall <img src="https://avatars.githubusercontent.com/u/30047064?s=200&v=4" alt="Hetzner Logo" align="right" width="128"/> <img src="https://raw.githubusercontent.com/fmjstudios/artwork/refs/heads/main/projects/terraform/icon/color/terraform-icon-color.png" alt="Terraform Logo" align="right" width="128"/>

[![License](https://img.shields.io/github/license/terraform-hetzner-modules/terraform-hetzner-firewall?label=License)](https://opensource.org/licenses/MIT)
[![Terraform](https://img.shields.io/badge/Terraform-_>=_1.7-brightgreen?logo=terraform&logoColor=623CE4)][terraform]
[![OpenTofu](https://img.shields.io/badge/OpenTofu-_>=_1.8-brightgreen?logo=opentofu)][opentofu]
[![CI Status](https://github.com/terraform-hetzner-modules/terraform-hetzner-firewall/actions/workflows/testing.yaml/badge.svg)](https://github.com/terraform-hetzner-modules/terraform-hetzner-firewall/blob/main/.github/workflows/testing.yaml)
[![GitHub Release](https://img.shields.io/github/v/release/terraform-hetzner-modules/terraform-hetzner-firewall?label=Release)][github_releases]
[![GitHub Activity](https://img.shields.io/github/commit-activity/m/terraform-hetzner-modules/terraform-hetzner-firewall?label=Commits)][github_commits]
[![Renovate](https://img.shields.io/badge/Renovate-enabled-brightgreen?logo=renovate&logoColor=1A1F6C)][renovate]
[![Pre-Commit](https://img.shields.io/badge/PreCommit-enabled-brightgreen?logo=precommit&logoColor=FAB040)][pre-commit]

A [Terraform module][module] to create and manage firewalls for your servers within [Hetzner Cloud][hetzner].

## ✨ TL;DR

```shell
module "hetzner_firewall_apache" {
  source = "terraform-hetzner-modules/cloud/firewall"
  ...
}
```

<!-- BEGIN_TF_DOCS -->

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_hcloud"></a> [hcloud](#provider_hcloud) | ~> 1.49 |

## Modules

No modules.

## Inputs

| Name                                                | Description                                                           | Type          | Default | Required |
| --------------------------------------------------- | --------------------------------------------------------------------- | ------------- | ------- | :------: |
| <a name="input_apply"></a> [apply](#input_apply)    | Label selectors or server to apply the new cloud firewall to.         | `any`         | `{}`    |    no    |
| <a name="input_labels"></a> [labels](#input_labels) | A map of labels to apply to the newly created Hetzner Cloud firewall. | `map(string)` | n/a     |   yes    |
| <a name="input_name"></a> [name](#input_name)       | The name to give to the new Hetzner Cloud firewall.                   | `string`      | n/a     |   yes    |
| <a name="input_rules"></a> [rules](#input_rules)    | The firewall rules to apply to the cloud firewall on creation.        | `any`         | `{}`    |    no    |

## Outputs

| Name                                                        | Description                                                      |
| ----------------------------------------------------------- | ---------------------------------------------------------------- |
| <a name="output_apply_to"></a> [apply_to](#output_apply_to) | The 'apply_to' configuration for the new Hetzner Cloud firewall. |
| <a name="output_id"></a> [id](#output_id)                   | The unique ID for the new Hetzner Cloud firewall.                |
| <a name="output_labels"></a> [labels](#output_labels)       | The labels for the new Hetzner Cloud firewall.                   |
| <a name="output_name"></a> [name](#output_name)             | The name for the new Hetzner Cloud firewall.                     |
| <a name="output_rules"></a> [rules](#output_rules)          | The rules for the new Hetzner Cloud firewall.                    |

<!-- END_TF_DOCS -->

### 🔃 Contributing

Refer to our [documentation for contributors][contributing] for contributing guidelines, commit message
formats and versioning tips.

### 📥 Maintainers

This project is owned and maintained by [FMJ Studios][org] refer to the [`AUTHORS`][authors] or [`CODEOWNERS`][owners]
for more information. You may also use the linked contact details to reach out directly.

### ©️ Copyright

- _Assets provided by:_ **[HashiCorp][hashicorp]**
- _Sources provided by:_ **[FMJ Studios][org]** under the **[MIT License][license]**

<!-- INTERNAL REFERENCES -->

<!-- Project references -->

<!-- File references -->

[license]: LICENSE
[contributing]: docs/CONTRIBUTING.md
[authors]: .github/AUTHORS
[owners]: .github/CODEOWNERS

<!-- General links -->

[org]: https://github.com/fmjstudios
[terraform]: https://terraform.io
[opentofu]: https://opentofu.org/
[hashicorp]: https://www.hashicorp.com/
[hetzner]: https://hetzner.com
[github_releases]: https://github.com/terraform-hetzner-modules/terraform-hetzner-firewall/releases
[github_commits]: https://github.com/terraform-hetzner-modules/terraform-hetzner-firewall/commits/main/

<!-- Third-party -->

[module]: https://registry.terraform.io/modules/terraform-hetzner-modules/cloud/firewall/latest
[renovate]: https://renovatebot.com/
[pre-commit]: https://pre-commit.com/
