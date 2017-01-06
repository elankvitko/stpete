class HomeController < ApplicationController
  def index
  end

  def create
    name = params[ 'name' ]
    email = params[ 'email' ]
    phone = params[ 'mobile' ]

    if request.xhr?
      ContactMailer.new_contact( name, email, phone ).deliver_now
      render partial: "contact_done"
    end
  end
end
