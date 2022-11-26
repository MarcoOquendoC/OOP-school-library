class Classroom
  def initialize(label)
    @label = label
    @students = []
  end

  attr_accessor :label

  def add_student(student)
    @students << student unless @students.include?(student)
    student.classroom = self
  end

  attr_reader :students
end
