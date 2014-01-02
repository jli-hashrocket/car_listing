require 'spec_helper'

describe Car do
  it { should have_valid(:color).when('Red') }
  it { should have_valid(:year).when(2012) }
  it { should have_valid(:mileage).when(13430) }

  it { should_not have_valid(:color).when(nil,'') }
  it { should_not have_valid(:year).when(nil,'',"Not a number",1920) }
  it { should_not have_valid(:mileage).when(nil,'',"Still not a number") }
end
