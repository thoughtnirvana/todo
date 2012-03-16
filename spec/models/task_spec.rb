require 'spec_helper'

describe Task do
  before(:each) do
    @attr = { :name => "Task", 
      :description => "Desc", 
      :deadline => DateTime.now,
      :completed => false }
  end

  describe "with valid params" do
    it "should be valid" do
      t = Task.new(@attr)
      t.should be_valid
    end

    it "should have a default completed status" do
      t = Task.new(@attr.merge(:completed => nil))
      t.should be_valid
    end
  end

  describe "with invalid  params" do
    it "should be invalid without name" do
      t = Task.new(@attr.merge(:name => nil))
      t.should have(1).errors_on(:name)
    end
    
    it "should be invalid without description" do
      t = Task.new(@attr.merge(:description => nil))
      t.should have(1).errors_on(:description)
    end

    it "should be invalid without deadline" do
      t = Task.new(@attr.merge(:deadline => nil))
      t.should have(1).errors_on(:deadline)
    end

    it "should have unique name" do
      t = Task.create!(@attr)
      t1 = Task.new(@attr)
      t1.should have(1).errors_on(:name)
    end
  end
end

