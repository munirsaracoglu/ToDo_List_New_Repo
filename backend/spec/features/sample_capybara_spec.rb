describe 'ToDo Lists', driver: :apparition do
  it 'opens app page' do
    visit 'http://localhost:3030'
    expect(page).to have_content 'Add'
  end
end
