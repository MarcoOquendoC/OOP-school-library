class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # getters
  attr_reader :id

  # accessors (getters and setters)
  attr_accessor :name
  attr_accessor :age

  # public methods
  def can_use_services?
    is_of_age? || @parent_permission
  end

  # private methods
  private
  def is_of_age?
    @age >= 18
  end
end