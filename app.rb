require_relative 'lib/database_connection'

# we need to give the database a name to the method 'connect'.
# FYI 'connect' is actually a class method so we are not calling the method on an object
DatabaseConnection.connect('book_store')

# Perform a SQL query on the database and get the result set.

sql = 'SELECT * FROM books;'
result = DatabaseConnection.exec_params(sql,[])

# print out each record from the result set
result.each do |record|
  p record
end