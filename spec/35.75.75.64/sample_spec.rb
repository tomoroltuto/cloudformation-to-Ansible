require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('httpd') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('node') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('yarn') do
  it { should be_installed }
end   
