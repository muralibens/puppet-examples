# Ref: https://puppet.com/docs/facter/3.9/custom_facts.html
Facter.add('running_containers') do
  setcode do
    containerIds = Facter::Core::Execution.exec('docker ps -aq -f "status=running"')
    containerIds.split('\n')
  end
end
