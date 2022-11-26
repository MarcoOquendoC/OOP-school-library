require 'nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    rentals = []
  end

  # getters
  attr_reader :id

  # accessors (getters and setters)
  attr_accessor :name, :age

  # public methods
  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  # belongs to relationship
  attr_accessor :classroom

  # many to many relationship
  attr_reader :rentals
  def create_rental(rental)
    @rentals << rental
    rental.person = self
  end

  # private methods
  private

  def of_age?
    @age >= 18
  end
end
