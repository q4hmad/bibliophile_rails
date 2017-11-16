require 'rails_helper'

describe "the add a book process" do
  it "adds a new book" do
    visit books_path
    click_link 'New Book'
    fill_in 'Genre', :with => 'Mystery'
    click_on 'Create Book'
    expect(page).to have_content 'Books'
  end

  it "gives error when no name is entered" do
    visit new_book_path
    click_on 'Create Book'
    expect(page).to have_content 'errors'
  end
end
