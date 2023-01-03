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
      File.open('./data/books.json', 'a') do |file|
        file.write(data)
      end
      puts 'books saved successfully'
    end
  end
end
