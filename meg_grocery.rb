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
  # add new item to @grocery_store data
  #shovel the item into the array
# Zip it up and turn it in!

@grocery_store = [
  { item: 'pasta', price: 2.7 },
  { item: 'toothbrush', price: 4.5 },
  { item: 'kitty litter', price: 8.1 },
  { item: 'shampoo', price: 5.0 },
  { item: 'kale', price: 3.99 },
  { item: 'broccoli', price: 1.26 },
  { item: 'dog food', price: 5.9 }
]

@my_cart = []
@total = []


def view_store
  @grocery_store.each_with_index do |item, i|
    puts "#{ i + 1}. #{item[:item]} - #{item[:price]}"
  end
end


def add_item
  view_store
  item = {}
  puts "What would you like to add to your cart?"
  user_input = gets.strip
  @grocery_store.each_with_index do |my_i |
    if user_input == my_i[:item]
      @my_cart << my_i
      @total << my_i
    end
  end
  if !@grocery_store.any? {|item| item[:item] == user_input}
    puts "not in stock!"
  end
  
end

def add_to_store
  grocery_item = {}
  puts "What are you adding to the inventory?"
  grocery_item[:item] = gets.strip
  puts "How much does it cost?"
  grocery_item[:price] = gets.strip.to_f


  @grocery_store << grocery_item
  view_store
end

def view_cart
  @my_cart.each_with_index do |item_in_cart, i|
    puts "#{ i + 1 }. #{item_in_cart[:item]}"
  end

end

def remove_item
  view_cart
  puts "which item would you like to remove?"
  index = gets.to_i - 1
  my_item = @my_cart[index]
  puts "are you sure you would like to remove #{my_item[:item]}"
  puts "y/n"
  gets.strip == "y" ? nil : menu
  @my_cart.delete_at(index)
  puts "#{my_item[:item]} has been deleted!"

end

def total
  my_total = 0.0
  @total.each do |item_price|
    my_total += item_price[:price]
  end
  puts "The total is: $#{my_total}"
end



def menu
  puts "What would you like to do?"
  puts "1. Add item to grocery cart"
  puts "2. View all items in cart"
  puts "3. Remove an item in grocery cart"
  puts "4. Total cost of all items in the user's cart"
  puts "5. Add new items to the grocery store"
  puts "6. Exit"

  @option = gets.strip.to_i
  case @option

  when 1
    add_item
    menu
  when 2
    view_cart
    menu
  when 3
    remove_item
    menu
  when 4
    total
    menu
  when 5
    add_to_store
    menu
  when 6
    exit
  else
    puts "bruh wrong number..."
    menu 
  end

end




menu