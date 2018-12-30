require 'spec_helper'

# Define installed packages
Packages = {
}

# Define enabled services
EnabledServices = [
  'mysql',
  'apache2'
]

# Define running services
RunningServices = [
  'apache2',
  'mysql'
]



# https://www.singlestoneconsulting.com/articles/writing-efficient-infrastructure-tests-with-serverspec
# Verify packages
Packages.each do |name, details|
  describe package(name) do
    it { should be_installed.with_version(details[:version]) }
  end
end

# Verify enabled services
EnabledServices.each do |name|
  describe service(name) do
    it { should be_enabled }
  end
end

# Verify running services
RunningServices.each do |name|
  describe service(name) do
    it { should be_running }
  end
end

describe port(22) do
  it { should be_listening }
end
