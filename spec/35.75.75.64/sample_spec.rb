require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end  

describe package('ruby -v') do
 it { should be_installed }
end

describe package('rails -v') do
 it { should be_installed }
end

describe package('unicorn -v ') do
 it { should be_installed }
end

describe package('nginx') do
 it { should be_installed }
end

#ポート80ポート解放チェック
describe port(80) do
  it { should be_listening }
end