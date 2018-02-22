class OnboardingController < ApplicationController 
  layout false, only: :index
  skip_before_action :verify_authenticity_token, only: :create

  def index
    @user_id = params[:user_id]
  end

  def create
    puts "Logging typeform callback"
    pp params
  end
end