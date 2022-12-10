class ApplicationController < ActionController::Base
  include ActionController::Cookies

  # Added this to prevent default Cross-Site REquest Forgery (CSRF)
  # security measures from blocking my API request. Read more 
  # about that here - 
  # https://guides.rubyonrails.org/security.html#cross-site-request-forgery-csrf
  # UNNECESSARY IF YOU DO rails new appname --api WHEN CREATING YOUR APP
  protect_from_forgery with: :null_session

end
