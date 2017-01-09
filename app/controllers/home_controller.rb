class HomeController < ApplicationController
  def index
    @pics = Dir.entries( "#{Rails.root}/app/assets/images" )
    @pics_arr = []

    @pics.each do | img |
      if img.include?( '.jpg' ) && !img.include?( 'exaple' )
        @pics_arr << img
      end
    end
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
