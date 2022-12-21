require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(
    specialization,
    age,
    name = 'Unknown'
  )
    super(age, name, true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
