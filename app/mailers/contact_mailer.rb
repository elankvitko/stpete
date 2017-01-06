class ContactMailer < ApplicationMailer
  def new_contact( name, email, phone )
    @name = name
    @email = email
    @phone = phone

    mail to: "assets@floridahealthcarebrokerage.com",
         subject: "Info Request - St. Petersburg"
  end
end
