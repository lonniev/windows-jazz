require 'chefspec'

describe 'windows-jazz::default' do
  
  let(:chef_run) do
    runner = ChefSpec::ChefRunner.new('platform' => 'windows', 'version'=> '7')
    runner.converge('windows-jazz::default')
  end
    
  it 'should include the windows-jazz recipe by default' do
    expect(chef_run).to include_recipe 'windows-jazz::default'
  end

end
