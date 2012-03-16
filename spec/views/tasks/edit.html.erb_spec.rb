require 'spec_helper'

describe "tasks/edit.html.erb" do
  before(:each) do
    @task = Task.create!(:name => "Task1", :description => "Desc1", :deadline => DateTime.now)
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_name", :value => @task.name
      assert_select "textarea#task_description", :text => @task.description
      assert_select "input#task_deadline", :value => @task.deadline
      assert_select "input#task_completed", :value => @task.completed
    end
  end
end
