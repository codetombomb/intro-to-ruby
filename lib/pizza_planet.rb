require 'pry' # debugging tool
require "colorize" # prints in color in the terminal


def start_cli
    clear_screen
    greet_user
    print_menu
    menu_selection = collect_user_input
    confirmation = confirm_menu_selection(menu_selection)
    handle_confirmation(confirmation, menu_selection)
    print_orders
end

def greet_user
    puts "Welcome to Pizza Planet!".green
end

def clear_screen
    puts "\n" * NUM_TIMES
end

def print_menu
    puts "Please select an option from our menu: ".yellow
    puts "1 Peperoni pizza"
    puts "2 Cheese pizza"
    puts "3 Vegi pizza"
    puts "4 Desert pizza"
    puts "5 Exit"
end

def collect_user_input
    user_input = gets.strip
end

def confirm_menu_selection(menu_selection)
    message = if menu_selection.to_i > 0 && menu_selection.to_i < 5
        puts food_selection(menu_selection)
    elsif 5
        "Goodbye!"
    else
        "You did not choose anything"
    end
    puts message 
    puts "Y/n"
    confirmation = gets.chomp # check if this is actually a y of n
end

def food_selection(selection)
    "You chose #{selection} - is that correct?"
end

def handle_confirmation(confirmation, menu_selection)
    if confirmation == "y"
        take_name(menu_selection)
    else
        start_cli
    end
end

def take_name(menu_selection)
    puts "What is your first name?"
    first_name = collect_user_input
    puts "What is your lasts name?"
    last_name = collect_user_input
    puts "What is your phone number?"
    number = collect_user_input
    
    new_customer = {
        first_name: first_name,
        last_name: last_name,
        phone_number: number,
        order_number: menu_selection
    }
    ORDERS << new_customer
end

def print_orders
    ORDERS.each do |order|
        puts "---------------------------------------------------"
        puts "Customer Name: #{order[:first_name]} #{order[:last_name]}"
        puts "Customer phone number: #{order[:phone_number]}"
        puts "Menu item number: #{order[:order_number]}"
        puts "---------------------------------------------------"
    end
    sleep 5
    start_cli
end

