require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end  

%w{ ruby -v }.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end   

%w{ rails -v }.each do |pkg|
  describe package(pkg) do
    it { should be_installed.by('gem') }
  end
end

%w{ rails bundler }.each do |pkg|
  describe package(pkg) do
    it { should be_installed.by('gem') }
  end
end