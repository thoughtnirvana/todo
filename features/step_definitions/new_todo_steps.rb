When /I am on "create new todo" page/ do
  visit(new_task_path)
end

When /I fill in "valid values for new todo"/ do
  fill_in('task_name', with: 'cucumber_test')
  fill_in('task_description', with: 'Creating sample test for cucumber')
  find('.actions input').click
end

Then /"new todo" should have been created/  do
  Task.find_by_name 'cucumber_test'
end
