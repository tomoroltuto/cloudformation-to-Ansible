require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#パッケージがインストールされているか確認する
describe package('wget') do
  it { should be_installed }
end  

describe package('ruby') do
  it { should be_installed.by('rbenv').with_version('2.6.3') }
end


describe package('rails') do
  it { should be_installed.by('gem').with_version('6.0.3') }
end

describe package('unicorn') do
  it { should be_installed.by('gem').with_version('6.0.0') }
end