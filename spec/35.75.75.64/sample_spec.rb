require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end  

%w{ git gcc-c++ make patch curl libcurl-devel libffi-devel libyaml-devel libicu-devel libxml2-devel libxslt-devel nginx mysql-community-client }.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end   

%w{ rails bundler }.each do |pkg|
  describe package(pkg) do
    it { should be_installed.by('gem') }
  end
end