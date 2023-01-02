require_relative 'app'

def main
  system('clear')
  puts "________Welcome to School Library App!________\n "
  app = App.new
  app.run
end

main
