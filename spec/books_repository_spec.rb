require 'books_repository'

describe BooksRepository do

  # need a method to read the seed file and use the pg gem to connect to the db and execute the SQL code
  def reset_books_table
    seed_sql = File.read('spec/seeds_books.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(seed_sql)
  end

  # call the method to clear the table each time

  before(:each) do
    reset_books_table
  end

  it "returns a list of books" do
    repo = BooksRepository.new

    books = repo.all

    expect(books.first.id).to eq('1')
    expect(books.length).to eq(2)
    expect(books.first.author_name).to eq ('David Chiang')
  end
end



