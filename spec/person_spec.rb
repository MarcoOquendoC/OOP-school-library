require_relative './../person'
require_relative './../decorators/nameable'

describe 'Test person object' do
  person = Person.new(18)

  it 'takes parameters and returns a Nameable object' do
    expect(person).to be_kind_of(Nameable)
  end

  it 'takes parameters and returns a Person object' do
    expect(person).to be_instance_of(Person)
  end

  it "person name should be 'Unknown' when not defined" do
    expect(person.name).to eql 'Unknown'
  end
end
