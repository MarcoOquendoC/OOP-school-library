module CreatePerson
  # 3
  def create_person
    puts "_________________NEW PERSON________________\n "
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    type = gets.chomp.to_i
    case type
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Invalid choice'
    end
    puts 'Person created successfully!'
    run
  end

  # 3.1
  def create_student
    puts "Enter student's information please"
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'Classroom: (A1, B3..): '
    label = gets.chomp
    classroom = look_for_classroom(label)
    parent_permission = permission?
    @people << Student.new(classroom, age, name, parent_permission: parent_permission)
    @classrooms << classroom
  end

  # 3.1.classroom
  def look_for_classroom(label)
    labels = @classrooms.map(&:label)
    found_index = labels.index(label)
    found_index ? @classrooms[found_index] : Classroom.new(label)
  end

  # 3.1.Y/N
  def permission?
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp

    case permission
    when 'n', 'N'
      false
    when 'y', 'Y'
      true
    else
      puts 'Incorrect choice, kindly enter \'y\', \'Y\' or \'n\', \'N\''
      permission?
    end
  end

  # 3.2
  def create_teacher
    puts "Enter teacher's information please"
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @people << Teacher.new(specialization, age, name)
  end
end
