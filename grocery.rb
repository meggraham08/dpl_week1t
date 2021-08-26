require 'pry'
# Display a menu in the console for the user to interact with.
    # make a list of all the menu options below

# Create a default array of hashes that represent items at a grocery store.
  # create dummy date aka @grocery_store
# OPTION 1) Create a menu option to add items to a user's grocery cart.
  # create a method that 
      # 1. creates an empty list 
      # 2. references @grocery_store and adds to my list
# OPTION 2) Create a menu option to display all the items in the cart.
# OPTION 3) Create a menu option to remove an item from the users cart.
# OPTION 4) Create a menu option to show the total cost of all the items in the user's cart.
# OPTION 5) Add new items to the grocery store.
  # add new item to @grocery_list data
  #shovel the item into the array
# Zip it up and turn it in!

@grocery_store = [
  { item: 'pasta', price: 2.7 },
  { item: 'toothbrush', price: 4.5 },
  { item: 'kitty litter', price: 8.1 },
  { item: 'shampoo', price: 5 },
  { item: 'kale', price: 3.99 },
  { item: 'broccoli', price: 1.26 },
  { item: 'dog food', price: 5.9 }
]



def menu
  puts "1. Add item to grocery cart"
  puts "2. Display all items in cart"
  puts "3. Remove an item in grocery cart"
  puts "4. Total cost of all items in the user's cart"
  puts "5. Add new items to the grocery store"
end


def addSum
  @total = 0.0
  @my_cart.each_with_index |item, index|
    @total += @my_cart + []
  end
end


def my_cart
  #initialized the array
  puts "Your cart is empty, please look at whats in stock and add from there"
  @my_cart = []
  user_input =  gets.strip.to_s
  @grocery_store.each do |grocery_item|
    if user_input == grocery_item[:item]
      @my_cart << user_input
    end
  end
  if !@grocery_store.any? {|grocery_item| grocery_item[:item] == user_input}
    puts "out of stock"
  end
  puts "my_cart: #{@my_cart} , price #{@my_cart}"
end


def app
  user_input = gets.strip.to_i

  if user_input == 1
    puts "option 1"
    my_cart()
  elsif user_input == 2
    puts "option 2"
  elsif user_input == 3
    puts "option 3"

  elsif user_input == 4
    puts "option 4"

  elsif user_input == 5
    puts "option 5"
    #@grocery_list = add_items(@grocery_list)
  else
    puts "bruh wrong number..."
    menu
  end

end




app