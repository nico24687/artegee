class OnboardingController < ApplicationController 
  layout false, only: :index

  def index
    @user_id = params[:user_id]
  end

  def create
    puts "Logging typeform callback"
    pp params
  end
end