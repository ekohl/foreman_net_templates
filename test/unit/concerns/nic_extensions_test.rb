require 'test_plugin_helper'

describe ForemanNetTemplates::NicExtensions do
  context 'interface' do
    let(:nic) { FactoryGirl.build(:nic_managed) }

    it 'should render a os_net_config' do
      expected = {:name => nic.identifier, :type => "interface", :addresses => [], :routes => []}
      nic.to_os_net_config.must_equal expected
    end
  end
end
