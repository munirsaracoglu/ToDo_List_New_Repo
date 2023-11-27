# frozen_string_literal: true

require_relative '../pages/to_do_list'
Given('I am in ToDo Lists app') do
  @to_do_list_page = ToDoList.new
  @to_do_list_page.visit_page
end

When('I add a {string} to the to-do list') do |list|
  @to_do_list_page.add_list(list)
end

Then('I should see the {string} added to the list') do |list|
  expect(@to_do_list_page.list_displayed?(list)).to be true
end

Then('I should see the number of lists is not equal to {int}') do |int|
  expect(@to_do_list_page.number_of_lists).to have_no_content('0')
end

When('I add {string} item to this list') do |item|
  @to_do_list_page.add_item(item)
end

Then('I should see the {string} item added to the list') do |item|
  expect(@to_do_list_page.item_displayed?(item)).to be true
end

When('I click to the checkbox near the item being added') do
  @to_do_list_page.click_checkbox_near_item
end

Then('I should see the delete this item text') do
  expect(@to_do_list_page.delete_this_text_displayed?).to be true
end


