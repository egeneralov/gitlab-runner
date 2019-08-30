#/bin/bash -xe

install_ansible () {
  apt-get update -q
  apt-get install -yq python-pip
  pip install ansible
}
install_git () {
  apt-get update -q
  apt-get install -yq git
}


[ -z "$(which ansible)" ] && install_ansible
[ -z "$(which git)" ] && install_git


ansible-pull \
-e gitlab_runner_ci_server_url="${GITLAB_URL:-https://gitlab.com}" \
-e gitlab_runner_registration_token="${GITLAB_TOKEN}" \
-e gitlab_runner_name="${GITLAB_NAME-$(hostname)}" \
--accept-host-key --clean \
--directory=/etc/ansible/roles/egeneralov.gitlab-runner/ \
--url=https://github.com/egeneralov/gitlab-runner.git \
/etc/ansible/roles/egeneralov.gitlab-runner/local.yml
