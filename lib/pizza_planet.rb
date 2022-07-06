def start_cli
    clear_screen
    greet_user
    print_menu
    menu_selection = collect_user_input
    puts menu_selection
end

def greet_user
    puts "Welcome to Pizza Planet!".green
end

def clear_screen
    puts "\n" * 35
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
    gets.strip
end




