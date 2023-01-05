require_relative './../decorators/nameable'

describe 'Test capitalize_decorator object' do
  nameable = Nameable.new
  it 'takes parameters and returns a corrected name' do
    expect do
      nameable.correct_name
    end.to raise_error(NotImplementedError)
  end
end
