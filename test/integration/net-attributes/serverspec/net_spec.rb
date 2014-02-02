require 'spec_helper'

describe file('/etc/udev/rules.d/70-persistent-net.rules') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode '644' }
  its(:content) { should match /SUBSYSTEM=="net", ACTION=="add", DRIVERS=="\?\*", ATTR{address}=="08:00:27:f9:09:1f", ATTR{type}=="1", KERNEL=="eth\*", NAME="eth0"/ }
end

