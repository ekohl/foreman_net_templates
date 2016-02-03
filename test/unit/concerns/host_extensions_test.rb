require 'test_plugin_helper'

describe ForemanNetTemplates::HostExtensions do
  context 'single interface' do
    let(:host) { FactoryGirl.build(:host) }

    it 'should render an empty config' do
      # TODO: Name should not be nil
      expected = {:network_config => [{:name => nil, :type => "interface", :addresses => [], :routes => []}]}
      host.os_net_config.must_equal expected
    end
  end
end
