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
