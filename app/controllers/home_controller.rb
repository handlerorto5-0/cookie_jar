class HomeController < ApplicationController
  # Rails provides a hash with the name cookies[]
  def set_cookies
    cookies.permanent[:user_name] = "Smith"
    cookies.permanent[:customes_number] = "1234567890"
  end

  def show_cookies
    @user_name = cookies[:user_name]
    @customes_number = cookies[:customes_number]
  end

  def delete_cookies
    cookies.delete :user_name
    cookies.delete :customes_number
  end
end
