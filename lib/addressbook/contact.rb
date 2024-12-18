class Contact
  attr_accessor :first, :last, :phone, :email
  
  def initialize(first, last, phone, email)
    @first = first.downcase
    @last = last.downcase
    @phone = phone
    @email = email.downcase
  end

  def show_contact
    puts "HELP!!!"
    # puts "Name: #{@first_name.capitalize} #{@last_name.capitalize}"
    # puts "Phone Number: #{@phone}"
    # puts "Email: #{@email}"
  end
end
