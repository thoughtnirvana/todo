Given /I have task entries in the db/ do
  Task.find_or_create_by_name(:name => "iPhone", :description => "Get it fixed.", :deadline => DateTime.now)
  Task.find_or_create_by_name(:name => "iPad", :description => "Get iPad fixed.", :deadline => DateTime.now)
  Task.find_or_create_by_name(:name => "Phone", :description => "Sell iPhone.", :deadline => DateTime.now)
  Task.find_or_create_by_name(:name => "iPhone", :description => "Get iPhone5.", :deadline => DateTime.now)
end

When /I search for "([^\"]*)"/ do |search_term|
  visit(tasks_path)
  fill_in('search_term', with: search_term)
  find('#tasks-search-button').click
end

Then /the search result should contain "([^\"]*)"/  do |search_term|
  page.all(:css, '.task').each do |el|
    el.text.should have_content(search_term)
  end
end

Then /the page should display the "not found" message/ do
  page.should have_content("No Task Found")
end

Then /I debug/ do
  debugger
end
