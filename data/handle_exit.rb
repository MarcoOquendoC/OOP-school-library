require 'json'

module HandleExit
  def handle_exit
    if @books.empty?
      puts 'No books to save'
    else
      data = JSON.pretty_generate(@books.map do |e|
                                    {
                                      title: e.title,
                                      author: e.author
                                    }
                                  end)
      File.open('./data/books.json','w') do |file|
        file.write(data)
      end
      puts 'books saved successfully'
    end

    if @people.empty?
      puts 'No people to save'
    else
      data = JSON.pretty_generate(@people.map do |e|
                                    {
                                      id: e.id,
                                      age: e.age,
                                      name: e.name,
                                      parent_permission: e.parent_permission,
                                    }
                                  end)
      File.open('./data/people.json','w') do |file|
        file.write(data)
      end
      puts 'people saved successfully'
    end

    if @rentals.empty?
      puts 'No rentals to save'
    else
      data = JSON.pretty_generate(@rentals.map do |e|
                                    {
                                      id = e.id
                                      date: e.date,
                                      person_id: e.person.id,
                                      book_id: e.book.id,
                                    }
                                  end)
      File.open('./data/rentals.json','w') do |file|
        file.write(data)
      end
      puts 'rentals saved successfully'
    end
  end
end
