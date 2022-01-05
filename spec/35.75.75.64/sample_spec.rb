require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end  

%w{ rails bundler }.each do |pkg|
  describe package(pkg) do
    it { should be_installed.by('gem') }
  end
end

describe command('ruby -v') do
  its(:stdout) { should match /ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]/ }
end

describe command('rails -v') do
  its(:stderr) { should match /Rails 6.0.3 bin sh: 1: rails: not found/  }
end

describe service('nginx') do
  it { should be_installed }
end

describe file('/usr/local/rbenv') do
  it { should be_file }
end

describe file('/etc/nginx/nginx.conf') do
  it { should be_file }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end