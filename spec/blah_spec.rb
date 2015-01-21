require 'chefspec'
require 'chefspec/berkshelf'

describe 'blah::_test' do
  let(:worker2) do 
    stub_node('worker2') do |n| 
      n.set['foo'] = 'bar'
    end
  end
  
  let(:chef_run) do
    ChefSpec::ServerRunner.new do |node, server|
      server.create_node(worker2)
      node.set['foo'] = 'bar'
    end.converge(described_recipe)
  end

  it 'has 2 workers' do
    expect(chef_run).to write_log('Num workers 2')
  end
end
