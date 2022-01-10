# cloudformation-to-Ansible
cloudformation-to-AnsibleはCircleCIで下記のworkflowを実行します。

# workflow
1.

1.cloudformationを実行

2.ansibleを実行

3.serverspecを実行

# ディレクトリ構成
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
 # インフラ構成図
 ![Untitled Diagram drawio](https://user-images.githubusercontent.com/90845405/148756765-2350a481-5db9-4151-86e0-ed55730758e1.png)
