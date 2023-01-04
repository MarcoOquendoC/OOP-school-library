require_relative './../teacher'
require_relative './../person'
require_relative './../decorators/nameable'

describe "Test teacher object" do
  teacher = Teacher.new('Philosophy', 18, 'Test Name')
  
  it "takes parameters and returns a Person object" do
    expect(teacher).to be_kind_of(Person)
  end
  
  it "takes parameters and returns a Nameable object" do
    expect(teacher).to be_kind_of(Nameable)
  end
  
  it "takes parameters and returns a Student object" do
    expect(teacher).to be_instance_of(Teacher)
  end

  it "teacher name should be 'Test Name'" do
    expect(teacher.name).to eql 'Test Name'
  end

  it "teacher specialization should be 'Philosophy'" do
    expect(teacher.specialization).to eql 'Philosophy'
  end
end