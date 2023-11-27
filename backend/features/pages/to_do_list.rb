# frozen_string_literal: true

class ToDoList
  include Capybara::DSL

  def visit_page
    visit('http://localhost:3030/')
  end

  def add_list(list)
    fill_in 'New list', with: list
    find(:xpath, "//div[@class='Header']//button[@type='button'][normalize-space()='Add']").click
  end

  def list_displayed?(list)
    page.has_text?(list)
  end

  def number_of_lists
    find(:css, 'div#root button[type="button"]:nth-child(2)').text
  end

  def add_item(item)
    add_list(@list)
    fill_in 'New item', with: item
    find(:css, 'div#root div.list-group.list-group-flush > div > div > div > button[type="button"]').click
  end

  def item_displayed?(item)
    page.has_text?(item)
  end

  def click_checkbox_near_item
    find(:css, "input[type='checkbox']").click
  end

  def delete_this_text_displayed?
    page.has_xpath?("//span[@class='DeleteItem']")
  end
end