class Person
  attr_accessor :name, :phone, :address, :position, :salary, :github
  def initialize(name, phone, address, position, salary, github)
    @name = name
    @phone = phone
    @address = address
    @position = position
    @salary = salary
    @github = github
  end
end

class Menu
  def initialize
    @people = []
  end

  def prompt
    loop do
          puts "A for Add a person"
          puts "S for Search for a person"
          puts "D for Delete a person"
          puts "E for Exit"
          choice = gets.chomp
          break if choice == "E"
          if choice == "A"
            puts "Enter employee first and last name"
            name = gets.chomp
            puts "Enter employee phone number"
            phone = gets.chomp
            puts "Enter employee address"
            address = gets.chomp
            puts "Employee's position"
            position = gets.chomp
            puts "Employee's salary"
            salary = gets.chomp
            puts "Employee's github account"
            github = gets.chomp
            person = Person.new(name, phone, address, position, salary, github)
            @people << person
            p @people
          elsif choice == "S"
            puts "Search by name"
            input_name = gets.chomp
            for person in @people
              if person.name == input_name
                puts "Employee is listed:
                      #{person.name}
                      #{person.phone}
                      #{person.address}
                      #{person.position}
                      #{person.salary}
                      #{person.github}"
              elsif puts "Person not found"
              end
            end
              elsif choice == "D"
                puts "Delete which Employee? "
                input_name = gets.chomp
                for person in @people
                  if person.name == input_name
                    @people.delete(person)
                    puts "#{person.name} has been deleted."
                    return
                  else puts "Person not found"
                end
              end
            end
          end
        end
      end

menu = Menu.new
menu.prompt
p @people
