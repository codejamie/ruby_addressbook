require_relative "lib/addressbook/addressbook"
require_relative "lib/addressbook/contact"

PHONE_REGEX = '/\d{11}/'

# Create an address book
address_book = AddressBook.new

# Create some contacts
contact1 = Contact.new("Alice", "Smith", "123-456-7890", "alice@example.com")
contact2 = Contact.new("Bob", "Johnson", "987-654-3210", "bob@example.com")

# Add contacts to the address book
address_book.add_contact(contact1)
address_book.add_contact(contact2)

#puts `clear`

loop do
  puts "=" * 30
  puts "- Address Book: Main Menu - ".center(30, " ")
  puts "=" * 30
  puts "1. List Contacts"
  puts "2. Add Contact"
  puts "3. Remove Contact"
  puts "4. Exit"
  print "Choose an option (1-4): "
  
  choice = gets.chomp

  case choice
  when "1"
    puts "Contacts in Address Book:"
    address_book.list_contacts
  when "2"
    puts `clear`
    first_name, last_name = ""
    loop do
      print "First Name (2 chars min.): "
      first_name = gets.chomp
      if first_name.length >= 2
        break
      else
        puts "First name too short. It must be at least 2 charactters."
      end
      first_name
    end

    loop do
      print "Last Name (2 chars min.): "
      last_name = gets.chomp
      if last_name.length >= 2
        break
      else
        puts "Last name too short. It must be at least 2 charactters."
      end
      last_name
    end
    
    # Validate phone number length
    phone_number = ""
    loop do
      print "Phone (11 digits): "
      phone_number = gets.chomp
      if phone_number.length == 11
        break
      else
        puts "Invalid phone number. It must be exactly 11 digits long."
      end
      phone_number
    end
    
    print "Email: "
    email = gets.chomp

    new_contact = Contact.new(first_name, last_name, phone_number, email)
    address_book.add_contact(new_contact)
    puts `clear`
    puts "-" * 30 
    puts "- Contact Added - ".center(30, " ")
    puts "-" * 30 
    puts "\n"
  when "3"
    print "Enter the phone number of the contact to remove: "
    contact_to_remove = gets.chomp
    address_book.delete_contact(contact_to_remove)
    puts "Contact removed."
  when "4"
    puts "Exiting the program."
    break
  else
    puts "Invalid option. Please choose again."
  end
end