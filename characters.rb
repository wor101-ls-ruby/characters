# hash with character details
characters = { Theon: 1,
  Morgar: 3,
  Tiddwick: 2,
  Barco: 12
}

# this is where the loop will need to begin
exit = false
while exit == false

  # Menu
  puts "Please select from the options below"
  puts "  Type 'Add' to add a character"
  puts "  Type 'Update' to updated a character"
  puts "  Type 'Delete' to delete a character"
  puts "  Type 'List' to list all characters"
  puts "  Type 'Exit' to exit the program"
  
  # takes user input and converts it to lowercase
  input = gets.chomp!.downcase   
  
  # Check user input and execute command
  case input
    # add a new character to hash
    when "add"
        #prompt user to give character name 
        puts "Please enter the characters name"
        name = gets.chomp!.to_sym
        #check to see if character already exists
        if characters[name] == nil
          puts "Please enter the characters level"
          level = gets.chomp!.to_i
          characters[name] = level
          puts " #{name} has been added as level #{characters[name]}"
        else
          puts "Sorry, that character already exists"
        end
    
    # update an existing character in the hash
    when "update"
        #prompt user to give character name
        puts "Please enter the character you would like to update"
        name = gets.chomp!.to_sym
        #check to make sure the caracter exists and update it if it does
        if characters[name] != nil
          puts "#{name} is currently level #{characters[name]}"
          puts "Please enter #{name}'s new level"
          level = gets.chomp!.to_i
          characters[name] = level
          puts "#{name}'s new level is #{characters[name]}"
        end
    
    # delete an existing character from the hash
    when "delete"
        #prompt user to give name
        puts "Please enter the character name you wish to delete"
        name = gets.chomp!.to_sym
        #check to see if character exists and if so delete
        if characters[name] != nil
          characters.delete(name)
          puts "#{name} has been deleted"
        else
          puts "#{name} does not exist"
        end
    
    # list all the characters currently in the hash
    when "list"
        characters.each do |name, level|
          puts "Name: #{name} is level #{level}"
        end
    
    # when user decides to exit
    when "exit"
      puts "Why are you leaving so soon, updated via Windows!!" 
      exit = true
      
    # error message
    else
        puts "Try again!!!"
  end
end
