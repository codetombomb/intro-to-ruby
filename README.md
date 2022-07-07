# Lecture 7/6 - Intro to Ruby (part 1)

- Announcements
  - Please make any corrections to your projects ASAP and let me know when you have completed them.
  - Thompson will be out the rest of the week - please direct any questions that you may have to me on Piazza
  - We will not have lectures next week but we will still have lab help sessions on our usual days/times on Tuesday and Thursday.
  - Please schedule your Phase 3 POD meetings
- SWBATs
  - [x] Create Methods
  - [x] Use `puts` and `print`
  - [x] Create variables
  - [ ] Use conditionals
  - [ ] Create, add to, and iterate over an array
  - [ ] Create hashes
  - [ ] Use binding.pry - like debugger in JS
- Deliverables
  [Pizza Planet Roadmap.drawio](https://drive.google.com/file/d/1UxzGhRPJEHrOM71C37cexBGZTwITgaRt/view?usp=drivesdk)
  Create a CLI (**C**ommand **L**ine **I**nterface) that will:
  - [x] Greet and prompt users to select an option.
  - [x] Capture and save users entry (gets.chomp gets.strip)
  - [ ] Handle user input
  - [ ] Create user information hash
  - [ ] Add hash to orders
  - [ ] Iterate over orders array and print to terminal
    
    [Demo of working app that we will build](https://youtu.be/MDyzKwr3AC0)

    
        
- Objectives
    - [x]  Create a basic file structure
    Start out with single file then refactor
    1. pizza_planet.rb - show ORDERS and create welcome method.
        - Walkthrough
            
            # bin (executables)
            
            - **Do -** Create a `bin` directory
                - add `run` file (no [.rb file extension](https://www.google.com/search?q=what+is+file+extension&rlz=1C5GCEM_enUS995US995&ei=iMPFYs6oHcirqtsPqcequA4&ved=0ahUKEwjOjOWW4uT4AhXIlWoFHamjCucQ4dUDCA8&uact=5&oq=what+is+file+extension&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEOgcIABAeELADOgkIABAeEA8QsANKBQg8EgExSgQIQRgBSgQIRhgAUJICWOYDYPYGaAFwAHgAgAHmAYgBqgSSAQUwLjIuMZgBAKABAcgBCsABAQ&sclient=gws-wiz#:~:text=file%20ex%C2%B7ten%C2%B7sion,of%20the%20file.))
                - This is an executable file and it is responsible for initializing our CLI app.
                
                ```ruby
                #!/usr/bin/env ruby
                
                # require_relative is a method sililar to 'import' in JS. It allows call upon relative files in other directories. 
                require_relative "../config/environment"
                
                start_cli #entry point into our app
                ```
                
                [Note on require](https://stackoverflow.com/questions/3672586/what-is-the-difference-between-require-relative-and-require-in-ruby#:~:text=require_relative%20is%20a,dirname(__FILE__))))
                
            - **Do -** Create a `config` dir
                - add `environment.rb` file
                - We can use this file to require any libraries that we want to use in our application.
                
                ```ruby
                # require is like an import statement except it loads all methods from the required file (not just the default export)
                
                # Require pry so that we can use binding.pry within our code
                require 'pry'
                
                #require_all so that we're able to load all of the files in the lib directory at once.
                require 'require_all'
                
                require 'colorize'
                
                require_all "lib"
                ```
                
            
            # Gemfile (like package.json)
            
            - **Do -**  Create a Gemfile
                
                ```ruby
                source "https://rubygems.org" 
                gem "require_all", "~> 3.0.0"
                
                gem "colorize" # Add color to terminal output
                gem "pry" # Debugging
                gem "tty-prompt" # Stretch goal for nice prompt
                ```
                
            - Install listed gems using the `bundle install` command.
            - Gems are packages of pre-written code like node packages.
            
            # lib (main code)
            
            - **Do -** Create a `lib` dir
                - Add a `pizza_planet.rb` file
                
                ```ruby
                def start_cli
                  puts "Welcome to Pizza Planet".green
                end
                ```
                
                - Add an `orders.rb` file
                
                ```ruby
                # seed data to start with
                ORDERS = [ 
                    {
                        first_name: "Tom",
                        last_name: "Tobar",
                        phone_number: "444-444-4444",
                        order_number: "1"
                    },
                    {
                        first_name: "Thompson",
                        last_name: "Plyler",
                        phone_number: "555-555-5555",
                        order_number: "4"
                    }
                ]
                
                ```
                
            - **Do - START THE APP**
            
    - [ ]  Build out deliverables
        - Walkthrough
            - **Do -** Create a welcome method
                - Talk about method naming
                - Talk about how they are like JS functions
                - Talk about parenthesis
            - **Do -** Create method prints menu
                - Show puts vs print
            - **Do -** Create method that takes user order
                - add a way for user to exit
