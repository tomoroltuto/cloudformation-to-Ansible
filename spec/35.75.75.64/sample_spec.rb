require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('nodejs') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('ruby -v2.6.3') do
  it { should be_installed }
end   
