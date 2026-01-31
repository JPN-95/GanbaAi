class PagesController < ApplicationController
  # Allows anyone to see the home page without logging in
  # skip_before_action :authenticate_user!, only: :home
  def home
  end
end
