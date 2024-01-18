class ContactMailer < ApplicationMailer
  default from: 'carterbacon.code@gmail.com'

  def send_email(first_name, last_name, email, company, phone, message)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @company = company
    @message = message

    mail(
      to: 'carter@worldheadquarters.co', 
      subject: 'New Contact Form Submission'
    )
    render 'send_email'
  end
end