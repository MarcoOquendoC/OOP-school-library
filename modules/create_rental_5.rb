module CreateRental
  # 5
  def create_rental
    puts "_________________NEW RENTAL________________\n "
    books_count = list_all_books
    if books_count.zero?
      puts "Please Create a book to create a rental\n "
      run
    end
    print 'Select a book from the list above by number. '
    book = @books[gets.chomp.to_i - 1]
    people_count = list_all_people
    if people_count.zero?
      puts "Please Create a person to create a rental\n "
      run
    end
    print 'Select a person from the list above by number (not id). '
    person = @people[gets.chomp.to_i - 1]
    print 'Date [yyyy/mm/dd] : '
    date = gets.chomp
    @rentals << Rental.new(person, book, date)
    puts 'Rental created successfully!'
    run
  end
end
