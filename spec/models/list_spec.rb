require 'spec_helper'

describe List do
  it "should add a person to the one week email list" do
    List.add Person.make, {:week => true, :email => true}
    Listing.count.should == 1
  end
  
  it "should add a person to all three email lists" do
    List.add Person.make, {:week => true, :days => true, :hours => true, :email => true}
    Listing.count.should == 3
  end
  
  it "should add a person to all six lists" do
    List.add Person.make, {:week => true, :days => true, :hours => true, :email => true, :sms => true}
    Listing.count.should == 6
  end
end
