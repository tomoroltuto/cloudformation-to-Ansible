require 'spec_helper'

#ec2-userのグループが存在するか確認する
describe group('ec2-user') do
  it { should exist }
end


#ポート22をListenしているか確認する
describe port("22") do
  it { should be_listening }
end

#ポート22をListenしているか確認する
describe port("80") do
  it { should be_listening }
end

#gitがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   
#nodejsがインストールされているか確認する
describe package('nodejs') do
  it { should be_installed }
end

#パッケージがインストールされているか確認する
%w{gcc gcc-c++ openssl-devel libyaml-devel readline-devel zlib-devel sqlite-devel libselinux-python }.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

#mysqlのパッケージがインストールされているか確認する
%w{yum-utils MySQL-python mysql-community-server mysql-community-devel }.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end


describe package('ruby') do
  it { should be_installed.with_version('2.6.3') }
end

describe command('ruby -v') do
  its(:stdout) { should match "/ruby 2\.6\.3/" }
end

describe package('rails') do
  it { should be_installed.by('gem').with_version('6.0.3') }
end

describe command('rails -v') do
  its(:stdout) { should match "/Rails 6\.0\.3/" }
end

describe file('/etc/nginx/nginx.conf') do
  it { should be_file }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end