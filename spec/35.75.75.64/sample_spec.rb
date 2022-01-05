require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end   

describe command('ruby -v') do
  its(:stdout) { should match /ruby 2\.6\.3/ }
end


describe command('rails -v') do
  its(:stdout) { should match /Rails 6\.0\.3/ }
end