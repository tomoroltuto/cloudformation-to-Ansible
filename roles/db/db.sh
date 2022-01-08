 export ANSIBLE_RAILS_DATABASE_HOST=$(aws ssm get-parameters --region ap-northeast-1 --name ANSIBLE_RAILS_DATABASE_HOST --query "Parameters[0].Value" --output text)

 export ANSIBLE_RAILS_DATABASE_PASSWORD=$(aws ssm get-parameters --region ap-northeast-1 --name ANSIBLE_RAILS_DATABASE_PASSWORD --query "Parameters[0].Value" --output text)

 export ANSIBLE_RAILS_USERNAME=$(aws ssm get-parameters --region ap-northeast-1 --name  ANSIBLE_RAILS_USERNAME --query "Parameters[0].Value" --output text)
 
 printenv | grep RAILS