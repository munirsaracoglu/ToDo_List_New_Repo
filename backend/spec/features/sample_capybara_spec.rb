# frozen_string_literal: true

describe 'ToDo Lists', driver: :apparition do
  to_do_list = %w[Cypress Playwright Capybara Watir]
  before(:each) do
    visit 'http://localhost:3030'
  end

  after(:each) do
    click_button('Click me')
  end

  it 'adds a new list' do
    to_do_list.each do |list|
      fill_in 'New list', with: list
      find(:xpath, "//div[@class='Header']//button[@type='button'][normalize-space()='Add']").click
    end
    number_of_list = find(:css, 'div#root button[type="button"]:nth-child(2)').text
    expect(number_of_list).to eq("Number of lists: #{to_do_list.length}")
    to_do_list.each do |list|
      expect(page).to have_text(list)
    end
  end

  it 'A List Item status can be changed by clicking the associated checkbox' do
    fill_in 'New list', with: 'Capybara'
    find(:xpath, "//div[@class='Header']//button[@type='button'][normalize-space()='Add']").click
    fill_in 'New item', with: 'locating elements'
    find(:css, 'div#root div.list-group.list-group-flush > div > div > div > button[type="button"]').click
    find(:css, "input[type='checkbox']").click
    expect(page).to have_xpath("//span[@class='DeleteItem']", wait: 5, visible: true)
  end

  it 'A List can be removed using an X button in the List header' do
    fill_in 'New list', with: 'Watir'
    find(:xpath, "//div[@class='Header']//button[@type='button'][normalize-space()='Add']").click
    number_of_list = find(:css, 'div#root button[type="button"]:nth-child(2)').text
    expect(number_of_list).to eq('Number of lists: 1')
    find(:xpath, "//button[text()='X']").click
    number_of_list = find(:css, 'div#root button[type="button"]:nth-child(2)').text
    expect(number_of_list).to eq('Number of lists: 0')
  end
end
