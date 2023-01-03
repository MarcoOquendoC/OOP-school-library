require 'time'

class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(person, book, date = Time.now)
    @id = Random.rand(1..1000)
    @date = date
    self.person = person
    self.book = book
  end

  def person=(person)
    @person = person
    person.rentals << self unless person.rentals.include?(self)
  end

  def book=(book)
    @book = book
    book.rentals << self unless book.rentals.include?(self)
  end
end
