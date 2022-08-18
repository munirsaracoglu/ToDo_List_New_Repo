describe 'ToDo Lists', type: :feature do
  before :all do
    @browser = Watir::Browser.new :chrome, headless: true
  end

  it 'opens app page' do
    @browser.goto 'http://localhost:3030'

    expect(@browser.text).to include 'Add'
  end
end
