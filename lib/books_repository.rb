
require_relative './books'

class BooksRepository

  # Selecting all records
  # No arguments
  def all
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM students;
    sql = 'SELECT id, title, author_name FROM books;'
    result_set = DatabaseConnection.exec_params(sql,[])

    books = []

    # we need to get properties from the db and use them to fill the objects with the correct data
    result_set.each do |record|
      book = Books.new
      book.id = record['id']
      book.title = record['title']
      book.author_name = record['author_name']

      books << book

    end
    # Returns an array of Books objects.
    return books
  end



end