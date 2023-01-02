module ListAllPeople
  # 2
  def list_all_people
    puts "_________________LIST PEOPLE________________\n "
    puts "These are all saved people:\ncount(#{@people.count})\n "
    if @people.empty?
      puts "No people in the database\n "
    else
      @people.each_with_index do |p, i|
        puts "
          #{i + 1})\s[#{p.class}] Id: #{p.id},\s
          Name: #{p.name}, Age: #{p.age},\s
          #{if p.class.to_s == 'Student'
              "Class: #{p.classroom.label}"
            else
              "Spec.: #{p.specialization}"
            end}
        "
      end
      puts "\nEnd of the people's list\n "
    end
    @people.count
  end
end
