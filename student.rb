require './person'

class Student < Person
  attr_reader :classroom

  def initialize(*all, classroom)
    super(*all)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
