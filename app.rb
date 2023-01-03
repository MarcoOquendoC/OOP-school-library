require 'time'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative './decorators/capitalize_decorator'
require_relative './decorators/trimmer_decorator'
require_relative './associations/classroom'
require_relative './associations/book'
require_relative './associations/rental'
require_relative './modules/list_all_books_1'
require_relative './modules/list_all_people_2'
require_relative './modules/create_person_3'
require_relative './modules/create_book_4'
require_relative './modules/create_rental_5'
require_relative './modules/list_rentals_6'
require_relative './modules/menu'
require_relative './data/handle_exit'

class App
  # modules one for each option [1..6]
  include ListAllBooks
  include ListAllPeople
  include CreatePerson
  include CreateBook
  include CreateRental
  include ListRentals
  include Menu
  include HandleExit

  def initialize
    @books = []
    @people = []
    @rentals = []
    @classrooms = []
  end

  def run
    display_menu
    command = gets.chomp.to_i
    system('cls')
    system('clear')
    handle_command(command) unless command == 7
    puts 'Thank you for using this app!'
    handle_exit
    exit
  end

  def handle_command(command)
    case command
    when 1
      list_all_books
      run
    when 2
      list_all_people
      run
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals_for_id
    else
      puts "Please choose a number between 1..7\n "
      run
    end
  end
end
