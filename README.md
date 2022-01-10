# cloudformation-to-Ansible
cloudformation-to-AnsibleはCircleCIで下記のworkflowを実行します。

# workflow
1.cloudformationを実行

2.ansibleを実行

3.serverspecを実行

# ディレクトリ構成
```bash
cloudformation-to-Ansible
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
 ![Untitled Diagram](https://user-images.githubusercontent.com/90845405/148784998-d84d04dc-37d8-4015-8665-a61876d4845e.jpg)
 
 # 特徴

※ AWScloud9上で作成しています。
※ EC2はElastic IPを割り振っています。
※ RDSはMySQLを使用しています
※ インフラ構築からrails環境構築及びserverspecによるテストを一貫で自動で行います。
※　　railsは本番環境でデプロイできるようになっています。

# Requirement

* cloud9　Configuration
```bash
    Environment type = Create a new EC2 instance for environment(direct access)
    
    Instance type = t2.micro
  
    Platform =  Amazon Linux 2

