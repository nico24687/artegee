class OnboardingController < ApplicationController 
  layout false, only: :index
  skip_before_action :verify_authenticity_token, only: :create

  def index
    @user_id = params[:user_id]
  end

  def create
    form = OnboardingFormPresenter.new(params).form
    @user = User.find(form.user_id)
    @user.update!(first_name: form.first_name,
                 last_name: form.last_name,
                 school: form.school,
                 bio: form.bio,
                 email: form.email,
                 location: form.location,
                 style: form.style,
                 avatar: URI.parse(form.avatar))
  end
end