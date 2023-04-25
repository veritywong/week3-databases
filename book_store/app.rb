require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

DatabaseConnection.connect('book_store')

# result = DatabaseConnection.exec_params('SELECT * FROM books', [])

book_repository = BookRepository.new

book_repository.all.each do |book|
    p "#{book.id} - #{book.title} - #{book.author_name}"
end


