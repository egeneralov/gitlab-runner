egeneralov.gitlab-runner
========================

Provision gitlab-runner with auto-configuration.

Requirements
------------

- debian 9

Role Variables
--------------

- **gitlab_runner_executor**: "docker"
- **gitlab_runner_ci_server_url**: https://gitlab.com/
- **gitlab_runner_registration_token**: b6jR_DnMjMSWVExkhjX1
- **gitlab_runner_docker_default_image**: docker:dind
- **gitlab_runner_config_file**: /etc/gitlab-runner/config.toml
- **gitlab_runner_docker_image**: gitlab/gitlab-runner:v11.6.1
- **gitlab_runner_tag_list**:
  - gitlab
  - docker
- **gitlab_runner_register_run_untagged**: "true"
- **gitlab_runner_register_locked**: "false"
- **gitlab_runner_request_concurrency**: 2
- **gitlab_runner_name**: my-gitlab-runner
- **gitlab_runner_ci_server_token**: ""
- **gitlab_runner_ci_server_tls_ca_file**: ""
- **gitlab_runner_ci_server_tls_cert_file**: ""
- **gitlab_runner_ci_server_tls_key_file**: ""
- **gitlab_runner_builds_dir**: ""
- **gitlab_runner_pre_clone_script**: ""
- **gitlab_runner_pre_build_script**: ""
- **gitlab_runner_post_build_script**: ""

Dependencies
------------

- egeneralov.docker

Example Playbook
----------------

    - hosts: runners
      vars:
        gitlab_runner_ci_server_url: https://gitlab.com/
        gitlab_runner_registration_token: b6jR_DnMjMSWVExkhjX1
        gitlab_runner_docker_default_image: docker:dind
        gitlab_runner_docker_image: gitlab/gitlab-runner:v11.8.0
        gitlab_runner_tag_list:
          - docker
        gitlab_runner_register_run_untagged: "true"
        gitlab_runner_register_locked: "false"
        gitlab_runner_name: my-gitlab-runner
      roles:
         - egeneralov.gitlab-runner

License
-------

MIT

Author Information
------------------

Eduard Generalov <eduard@generalov.net>
