# cloudformation-to-Ansible
cloudformation-to-AnsibleはCircleCIで下記のworkflowを実行します。

# workflow
1.　cloudformationを実行

2.　ansibleを実行

3.　serverspecを実行

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

* AWScloud9上で作成しています。
* EC2はElastic IPを割り振っています。
* RDSはMySQLを使用しています。
* インフラ構築からrails環境構築及びserverspecによるテストを一貫で自動で行います。
* railsは本番環境でデプロイできるように構築しています。

# Requirement

* cloud9　Configuration
```bash
    Environment type = Create a new EC2 instance for environment(direct access)
    
    Instance type = t2.micro
  
    Platform =  Amazon Linux 2
```    
* aws cli
```bash
    $ aws --version
     　　aws-cli/1.19.112 
``` 
* ansible
```bash
    $ ansible --version
　　　　　　　　　　　　ansible 2.9.23
```
# installed on EC2

```bash
    $ mysql --version
　　　　　　　　　　　　mysql  Ver 8.0.27
```
```bash
    $ node --version
      v10.24.1
```
```bash
    $ git --version
      git version 2.32.0
```
```bash
    $ ruby -v
      ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]
```
```bash
    $ bundler -v
      Bundler version 1.17.2
```
```bash
    $ rails -v
      Rails 6.0.3
```
```bash
    $ unicorn -v
      unicorn v6.1.0
```
```bash
    $ nginx -v
      nginx/1.20.2
```
# 注意
*　cloudformation-to-Ansible/.circleci/config.ymlのaws-cli-exampleでは初回はcreateで実行し更新する場合はupdateで実行します。

初回時
```bash
      - run: 
         name: "create stack"
         command: "aws cloudformation create -stack --stack-name cfnService --region ap-northeast-1 --template-body　file://cfnService.yml"
      - run: 
         name: "wait stack Complete"
         command: "aws cloudformation wait stack-create-complete --stack-name cfnService"
```
更新時
```bash
      - run: 
         name: "update stack"
         command: "aws cloudformation update-stack --stack-name cfnService --region ap-northeast-1 --template-body file://cfnService.yml"
      - run: 
         name: "wait stack Complete"
         command: "aws cloudformation wait stack-update-complete --stack-name cfnService"
```
