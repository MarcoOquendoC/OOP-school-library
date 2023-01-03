module HandleRentals
  def handle_rentals
    return if @rentals.empty?

    data = JSON.pretty_generate(@rentals.map do |e|
                                  {
                                    date: e.date,
                                    person_name: e.person.name,
                                    book_title: e.book.title,
                                    person_id: e.person.id
                                  }
                                end)
    File.write('./data/rentals.json', data)
    puts 'rentals saved successfully'
  end
end
