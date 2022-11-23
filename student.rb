require 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(*all, classroom)
    super(*all)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
