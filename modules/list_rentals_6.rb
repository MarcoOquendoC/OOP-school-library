module ListRentals
  # 6
  def list_rentals_for_id
    puts "________________LIST RENTALS________________\n "
    list_all_people
    print 'Type a valid id number: '
    id = gets.chomp.to_i
    people_filtered = @people.select { |person| person.id == id }
    if people_filtered.empty?
      puts "There are no records of that person in the database\n "
    else
      puts "these are all the rentals charged to id: #{id}\n "
      if people_filtered[0].rentals.empty?
        puts "No rentals encountered for id: #{id}\n "
      else
        puts "Name: #{people_filtered[0].name}"
        people_filtered[0].rentals.each_with_index do |r, i|
          puts "Rental #{i + 1}) Book: #{r.book.title} by #{r.book.author}, Date: #{r.date}"
        end
        puts "\nEnd of the rentals' list\n "
      end
    end
    run
  end
end
