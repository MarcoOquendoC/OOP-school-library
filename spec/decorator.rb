require_relative './../decorators/decorator'
require_relative './../decorators/nameable'
require_relative './../person'

describe 'Test decorator object' do
  person = Person.new(18)
  decorator = Decorator.new(person)

  it 'takes parameters and returns a Nameable object' do
    expect(decorator).to be_kind_of(Nameable)
  end

  it 'takes parameters and returns a Decorator object' do
    expect(decorator).to be_instance_of(Decorator)
  end
end
