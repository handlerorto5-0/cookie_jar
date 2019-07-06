class HomeController < ApplicationController
  # Rails provides a hash with the name cookies[]
  def set_cookies
    cookies.permanent.signed[:user_name] = "Smith"
    cookies.permanent.signed[:customes_number] = "1234567890"
  end

  def show_cookies
    @user_name = cookies.signed[:user_name]
    @customes_number = cookies.signed[:customes_number]
  end

  def delete_cookies
    cookies.delete :user_name
    cookies.delete :customes_number
  end
end
