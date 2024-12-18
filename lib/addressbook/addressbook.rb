class AddressBook

  def initialize
    @contacts = []
  end

  def add_contact(contact)
    contact = {
      first_name: contact.first,
      last_name: contact.last,
      phone: contact.phone,
      email: contact.email,
    } 

    @contacts << contact
  end

  def delete_contact(email)
    found = @contacts.detect { |contact| contact(:email) == email }

    @contacts.reject! { |contact| contact.phone == phone }
    return "Contact #{found.firs_name} #{found.last_name}, with email #{contact.email} successfully deleted."
  end

  def list_contacts
    puts `clear`
    if @contacts.empty? 
      puts "Addressbook is empty, please add a new contact"
    else
      @contacts.each_with_index do |contact, idx|
        puts " #{idx += 1} ".center(30,'~')
        #contact.show_contact
        puts "#{contact.class}"
        #puts "#{contact[:first_name]} #{contact[:last_name]}"
        
        puts "~" * 30
      end
    end
  end

  def edit_contact(contact)
    puts "Editing #{contact}"
  end
end