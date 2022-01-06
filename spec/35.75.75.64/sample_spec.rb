require 'spec_helper'

describe group('ec2-user') do
  it { should exist }
end

def os_platform_amazon?
  Specinfra.backend.run_command('uname -r').stdout.include?("amzn2")
end

describe port("22") do
  it { should be_listening }
end

describe port("80") do
  it { should be_listening }
end

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
%w{gcc gcc++ openssl-devel libyaml-devel readline-devel zlib-devel mysql }.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe package('bundler') do
  it { should be_installed.by('gem').with_version('2.3.4') }
end

describe command('ruby -v') do
  its(:stdout) { should match /ruby 2\.6\.3/ }
end

describe command('rails -v') do
  its(:stdout) { should match /"Rails 6\.0\.3/  }
end


describe file('/etc/nginx/nginx.conf') do
  it { should be_file }
end

describe service('nginx') do
  it { should be_enabled }
end