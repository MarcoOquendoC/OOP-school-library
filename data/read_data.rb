require 'json'

module ReadData
  def read_people
    json_from_file = File.read('./data/people.json')
    hash = JSON.parse(json_from_file)
    hash
  end
end
