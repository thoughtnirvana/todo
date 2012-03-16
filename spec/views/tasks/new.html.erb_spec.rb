require 'spec_helper'

describe "tasks/new.html.erb" do
  before(:each) do
    assign(:task, stub_model(Task).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_name"
      assert_select "textarea#task_description"
      assert_select "input#task_deadline"
      assert_select "input#task_completed"
    end
  end
end
