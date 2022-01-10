# cloudformation-to-Ansible
cloudformation-to-AnsibleはCircleCIで下記のworkflowを実行します。

# workflow
1.cloudformation

2.ansible

3.serverspec

#　ディレクトリ構成
```bash
├── ansible.cfg
├── cfnService.yml
├── hosts
│   └── inventory
├── playbook.yml
├── Rakefile
├── README.md
├── roles
│   ├── mysql
│   │   └── tasks
│   │       └── main.yml
│   ├── nginx
│   │   ├── tasks
│   │   │   └── main.yml
│   │   └── templates
│   │       ├── nginx.conf.j2
│   │       └── unicorn.conf.j2
│   ├── nodejs
│   │   └── tasks
│   │       └── main.yml
│   ├── rails
│   │   └── tasks
│   │       └── main.yml
│   ├── ruby
│   │   ├── rbenv.sh
│   │   ├── tasks
│   │   │   └── main.yml
│   │   └── templates
│   │       └── rbenv_system.sh.j2
│   ├── yarn
│   │   └── tasks
│   │       └── main.yml
│   └── yum-update
│       └── tasks
│           └── main.yml
└── spec
    ├── 35.75.75.64
    │   └── sample_spec.rb
    └── spec_helper.rb
 ```
