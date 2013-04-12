require 'spec_helper'

describe "tasks/index.html.haml" do
  before(:each) do
    @task = Task.create!(:name => "Task1", :description => "Desc1", :deadline => DateTime.now)
    assign(:tasks, Task.page(1))
  end

  it "renders a list of tasks" do
    render

    rendered.should have_selector('.task')
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => @task.name.to_s
    assert_select "tr>td", :text => @task.description.to_s
    assert_select "tr>td", :text => @task.deadline.to_s
    assert_select "tr>td", :text => @task.completed.to_s
  end

  it "has a link to create New task" do
    render

    rendered.should have_selector('#button')

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "a", :text => "New Task", :count => 1
  end
end
