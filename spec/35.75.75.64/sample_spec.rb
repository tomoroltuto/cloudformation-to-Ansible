require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end  

describe package('rails -v') do
  it { should be_installed }
end    

describe package('nginx') do
  it { should be_installed }
end

describe file('/var/run/unicorn.sock') do
  it { should be_socket }
end

describe port(80) do
  it { should be_listening }
end