# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = Book.create([
	{title: "The Hitchhiker's Guide To The Galaxy", author: "Douglas Adams", year: 1979, isbn: "0-330-25864-8", genre: "Science Fiction"},
	{title: "Green Eggs And Ham", author: "Dr. Seuss", year: 1960, isbn: "978-0-394-80016-5", genre: "Children's"}, 
	{title: "Agile Development With Rails 4", author: "Sam Ruby", year: 2013, isbn: "978-1-93778-556-7", genre: "Computer Programming"}
])