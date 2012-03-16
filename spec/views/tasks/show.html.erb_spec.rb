require 'spec_helper'

describe "tasks/show.html.erb" do
  before(:each) do
    @task = Task.create!(:name => "Task1", :description => "Desc1", :deadline => DateTime.now)
  end

  it "renders attributes in <p>" do
    render
    rendered.should have_selector('.task-show')
    assert_select "tr>td", :text => @task.name.to_s
    assert_select "tr>td", :text => @task.description.to_s
    assert_select "tr>td", :text => @task.deadline.to_s
    assert_select "tr>td", :text => @task.completed.to_s
    assert_select "a", :text => "Edit", :count => 1 
    assert_select "a", :text => "Back", :count => 1 
  end
end
