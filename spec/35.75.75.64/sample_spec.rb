require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end  

describe file('/usr/local/rbenv') do
  it { should be_socket }
end

describe package('rails -v') do
  it { should be_installed.by('gem').with_version('6.0.3') }
end

escribe package('rails bundler') do
  it { should be_installed }
end  

describe package('nginx -version') do
  it { should be_installed }
end

describe file('/etc/nginx/nginx.conf') do
  it { should be_socket }
end