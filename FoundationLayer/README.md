Amazon Web Services Infrastructure ~ Foundation Layer
=========

Ensure the state of the AWS Infrastructure Foundation Layer using Ansible.

This automation playbook is written in [Ansible](https://docs.ansible.com/ansible/index.html) which uses Python to ensure a desired state is reached for the infrastructure on a single run.

Ensure an environments Foundation
---------------------------------

Run playbooks directly for a specific environment:

_AWS Dev environment_:

`ansible-playbook aws_dev.yml`

_AWS Test environment_:

`ansible-playbook aws_test.yml`

_AWS Stage environment_:

`ansible-playbook aws_stage.yml`

_AWS Production environment_:

`ansible-playbook aws_production.yml`


Requirements
------------

To be able to put AWS into a state you must have one of these permissions:

- AWS credentials for that environment
- AWS service account access
- Ansible Tower credentials

_If you are using Ansible Tower to launch a infrastructure state ensuring run, you do not need AWS credentials for that environment, only Tower permissions.  This enables the marketing team to launch a new demo environment without having any AWS API credentials._


Coding Standards & Naming conventions
-------------------------------------

Follow all the best practices outlined on the Ansible docs:

[Ansible Best Practices](https://docs.ansible.com/ansible/playbooks_best_practices.html)

[Ansible YAML Syntax](https://docs.ansible.com/ansible/YAMLSyntax.html)

Additional:

  - use underscores for naming roles, variables and files
  - a role does one thing well
  - a role can be called and will work singularly without any other roles or playbooks
  - a role must be included in a playbook
  - a playbook is a collection of roles or just one role
  - roles for Linux specific states will be labeled with `os_`
  - roles for AWS specific states will be labeled with `aws_`
  - roles for cattle OS specific states will be labeled with `cattle_os_`
  - roles for pet OS specific states will be labeled with `pet_os_`
  - roles for tool specific states will be labeled with `tools_`
  - roles for Kubernetes specific states will be labeled with `k8s_`
  - all files on disk that are managed by Ansible must be have a heading comment of
    `# {{ ansible_managed }}`
  - all files that are Terraform j2 templates must be prefaced with the label `terraform_`

vars_files:

Are located in `group_vars` and must be named for the specific environment
they are for.

```
group_vars/
  /aws_dev_vars.yml
  /aws_test_vars.yml
```


Use the following standard to open and close a var file section:

```
####################################
# <ServiceName>
####################################
var: var_value
var: var_value
####################################
# </ServiceName>
####################################
```

Role Variables
--------------



Dependencies
------------

To use Ansible for AWS on OSX you must have the following installed:

- [boto](https://github.com/boto/boto)

License
-------

GPL v3

Author Information
------------------

SimplifyMy.Cloud

[info@simplifymy.cloud](info@simplifymy.cloud)