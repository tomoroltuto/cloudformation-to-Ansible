require 'spec_helper'

describe host('target.example.jp') do
  it { should be_reachable.with( :port => 22 ) }
  it { should be_reachable.with( :port => 80 ) } 
end
  
describe host('example.jp') do
  its(:ipv4_address) { should eq '35.75.75.64' }
end


#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end   