# frozen_string_literal: true

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
      @browser.text_field(placeholder: 'New list').set sample_list
      @browser.button(css: 'div#root div.Header > div > div > button[type="button"]').click
    end
    number_of_lists = @browser.button(css: 'div#root button[type="button"]:nth-child(2)').text
    expect(number_of_lists).to eq("Number of lists: #{to_do_lists.length}")
  end

  it 'adds an item to a list' do
    @browser.text_field(placeholder: 'New list').set 'Watir'
    @browser.button(css: 'div#root div.Header > div > div > button[type="button"]').click
    @browser.text_field(placeholder: 'New item').set 'Writing test cases'
    @browser.button(css: "div[class='AddToDoListItem list-group-item'] button[type='button']").click
    expect(@browser.text).to include 'Writing test cases'
  end

  it 'removes the list by clicking the X button' do
    @browser.text_field(placeholder: 'New list').set 'Watir'
    @browser.button(css: 'div#root div.Header > div > div > button[type="button"]').click
    @browser.button(css: 'div#root div.card-header > button[type="button"]').click
    number_of_lists = @browser.button(css: 'div#root button[type="button"]:nth-child(2)').text
    expect(number_of_lists).to eq('Number of lists: 0')
  end
end
