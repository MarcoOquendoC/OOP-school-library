require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative './decorators/capitalize_decorator'
require_relative './decorators/trimmer_decorator'
require_relative './associations/classroom'
require_relative './associations/book'
require_relative './associations/rental'
require 'time'

puts '___________________ASSOCIATIONS_______________________'
puts "\nNew classroom\n "
class1 = Classroom.new('Philosophy')
puts "New students\n "
student1 = Student.new(class1, 15, 'Tadeo')
Student.new(class1, 15, 'Marco')
Student.new(class1, 15, 'Vinicio')
puts "New book\n "
book1 = Book.new('title1', 'author1')
puts "New rental\n "
rental1 = Rental.new(student1, book1)
puts "Rental data:\n#{rental1.person.name} #{rental1.book.title} #{rental1.date}\n "
puts "Student1 classroom\n#{student1.classroom.label}\n "
puts "Classroom Students\n#{class1.students_name_list}\n "
