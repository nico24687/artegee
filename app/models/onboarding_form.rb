class OnboardingForm 
  attr_reader :user_id, :first_name, :last_name, :avatar, :school, :bio, :email, :location, :style
  def initialize(attributes={})
    @user_id = attributes[:user_id]
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @avatar = attributes[:avatar]
    @school = attributes[:school]
    @bio = attributes[:bio]
    @email = attributes[:email]
    @location = attributes[:location]
    @style = attributes[:style]
  end
end