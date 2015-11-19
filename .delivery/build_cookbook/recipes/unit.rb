include_recipe 'delivery-truck::unit'

# Execute a test-kitchen test in EC2
delivery_test_kitchen 'unit' do
  yaml '.kitchen.yml'
  driver 'ec2'
end
