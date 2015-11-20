#
# Cookbook Name:: delivery-base
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'delivery-base::default' do
  context 'When we run on a supported platform' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'centos', version: '6.5')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'depends on push-jobs' do
      expect(chef_run).to include_recipe 'push-jobs'
    end
  end

  context 'When we run on a NOT supported platform' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'darwin', version: '10.10')
      runner.converge(described_recipe)
    end

    it 'raise an error trying to converge' do
      expect { chef_run }.to raise_error
    end
  end
end
