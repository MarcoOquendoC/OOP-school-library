module CreateBook
  # 4
  def create_book
    puts "_________________NEW BOOK________________\n "
    puts "Enter book's information please"
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    create_book = Book.new(title, author)
    @books << { 'title' => create_book.title, 'author' => create_book.author }
    puts 'Book created successfully'
    run
  end
end
