class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  attr_accessor :title, :author
  attr_reader :rentals

  def create_rental(date, person)
    Rental.new(date, person, self)
  end
end
