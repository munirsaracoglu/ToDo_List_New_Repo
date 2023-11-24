# frozen_string_literal: true
def add_list(list_name)
  @browser.text_field(placeholder: 'New list').set list_name
  @browser.button(css: 'div#root div.Header > div > div > button[type="button"]').click
end
def number_of_lists
  @browser.button(css: 'div#root button[type="button"]:nth-child(2)').text
end
describe 'ToDo Lists', type: :feature do
  to_do_lists = %w[Capybara Watir Cypress Playwright]
  before :all do
    @browser = Watir::Browser.new :chrome, headless: true
  end
  before :each do
    @browser.goto 'http://localhost:3030'
  end
  after :each do
    @browser.button(text: 'Click me').click
  end
  it 'opens app page' do
    expect(@browser.text).to include 'Add'
  end

  it 'adds a list' do
    to_do_lists.each do |sample_list|
      add_list(sample_list)
    end
    expect(number_of_lists).to eq("Number of lists: #{to_do_lists.length}")
  end

  it 'adds an item to a list' do
    add_list('Watir')
    @browser.text_field(placeholder: 'New item').set 'Writing test cases'
    @browser.button(css: "div[class='AddToDoListItem list-group-item'] button[type='button']").click
    expect(@browser.text).to include 'Writing test cases'
  end

  it 'removes the list by clicking the X button' do
    add_list('Watir')
    @browser.button(css: 'div#root div.card-header > button[type="button"]').click
    expect(number_of_lists).to eq('Number of lists: 0')
  end
end
