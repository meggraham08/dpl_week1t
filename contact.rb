require 'colorize'
# build a contact list
# create a menu that allows a user to select
# grab the user information
# store into a variable to use later
# 1) create a contact 2) view all contacts 3) exit
# grab the user information
# store into a variable to use later
# use a conditional
# store contacts somewhere array
# contact a hash { first_name: "mom", "last_name": "" , phone: "" , email: ""} // this is a contact object
# 1) create a contact
        # grab the first name of the contact
        # grab the last name of the contact
        # grab the nick name
        # grab the phone number
        # grab the email
        # think I/O // input output
        # put the value in the right keys in the new contact hash 
        # add the contact hash into the contacts array // thinks shovelling
# 2) view all contacts
         # grab the array of contacts, dont want to display all of the contacts, do it one by one, want to iterate through the array        
        # puts with string interpolation to make it readable for the user // in a readable way       
# 3) exit
  #if option 3, exit out of the program
# the menu should loop until the user exits
# loop, recursion  (do recursion)
# pseudo coding, commenting out the process and break up the problem 

###homework due 08/18 ###


@contacts = [
  { first_name: "bob", "last_name": "graham", nickname: "b", phone: "123-123-123" , email: "bob@email.com"},
  { first_name: "jill", "last_name": "rick" , nickname: "jj" , phone: "123-123-123" , email: "jill@email.com"},
  { first_name: "lucy", "last_name": "jims" , nickname: "lol",  phone: "123-123-123" , email: "lucky@email.com"},

]
def main_menu
  puts "Please enter a number from the options below".colorize(:light_blue)
  puts "1. Create a contact".colorize(:green)
  puts "2. View all contacts".colorize(:green)
  puts "3. Exit".colorize(:green)
  user_input = gets.strip.to_i
  if user_input == 1
    create_contact
  elsif user_input == 2
    all_contacts
  elsif user_input == 3
    "You have exited out!"
    exit
  else  
    puts "Sorry, that is an invalid number. Please select 1, 2 or 3".colorize(:red)
    main_menu
  end
end


def all_contacts
  #puts "view all contacts"
  # grab the array of contacts, dont want to display all of the contacts, do it one by one, want to iterate through the array        
  # puts with string interpolation to make it readable for the user // in a readable way  
  ####iterator way #####
  # @contacts.each do |contact|
  #   puts "First Name: #{contact[:first_name]}" 
  #   puts "Last Name: #{contact[:last_name]}" 
  #   puts "Nick Name: #{contact[:nickname]}" 
  #   puts "Phone: #{contact[:phone]}" 
  #   puts "Email : #{contact[:email]}" 
  #   puts "--------------------"
  # end

  ###for loop (but in js)###
  # for (i = 0; i < @contacts.count; i++) {
  #   puts "First Name: #{@contacts[i][:first_name]}"
  #}
  for contact in @contacts do
    puts "First Name: #{contact[:first_name]}"
    puts "Last Name: #{contact[:last_name]}" 
    puts "Nick Name: #{contact[:nickname]}" 
    puts "Phone: #{contact[:phone]}" 
    puts "Email : #{contact[:email]}" 
    puts "--------------------"
  end
  main_menu
end

def create_contact
  puts "plesae type in first name, last name, nickname, phone and email (in that order)"
  name_arr =  gets
end

main_menu