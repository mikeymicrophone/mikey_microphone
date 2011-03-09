require 'spec_helper'

describe List do
  it "should add a person to the one week email list" do
    List.add Person.make, {:week => '1', :email => '1'}
    Listing.count.should == 1
  end
  
  it "should add a person to all three email lists" do
    List.add Person.make, {:week => '1', :days => '1', :hours => '1', :email => '1'}
    Listing.count.should == 3
  end
  
  it "should add a person to all six lists" do
    List.add Person.make, {:week => '1', :days => '1', :hours => '1', :email => '1', :sms => '1'}
    Listing.count.should == 6
  end
end
