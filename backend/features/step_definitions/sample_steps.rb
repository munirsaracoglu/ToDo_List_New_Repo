Given('I am in ToDo Lists app') do
  visit 'http://localhost:3030'
end

Then('I should see a button with text {string}') do |text|
  expect(page).to have_content text
end
