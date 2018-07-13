require 'rails_helper'

describe 'A user sees all books' do
  context 'it visits the index' do
    it 'sees all book titles' do
      book_one = Book.create(title: 'hehaew')
      book_two = Book.create(title: 'woo tang')
      book_three = Book.create(title: 'kool')

      visit books_path

      expect(page).to have_content(book_one.title)
      expect(page).to have_content(book_two.title)
      expect(page).to have_content(book_three.title)
    end
  end
end
describe 'A user can click a book title to see that book page' do
  context 'it visits the index' do
    it 'clicks a title and is routed to book page' do
      book_one = Book.create(title: 'hehaew')
      book_two = Book.create(title: 'woo tang')
      book_three = Book.create(title: 'kool')

      visit books_path

      click_on(book_one.title)

      expect(current_path).to eq(book_path(book_one))
      expect(page).to have_content(book_one.title)
    end
  end
end
