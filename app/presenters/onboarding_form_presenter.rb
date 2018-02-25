class OnboardingFormPresenter 
  def initialize(form)
    @form = form 
  end
  def form 
    user_id = @form["form_response"]["hidden"]["user_id"]

    first_name = answer_for("SstvvqT1TyVl")["text"]
    last_name = answer_for("Z9Xuj60iPPGM")["text"]
    school = answer_for("K7ds92B2yz0M")["text"]
    bio = answer_for("ABNgubRKZ2qw")["text"]
    email = answer_for("m4sHdfLxnvXr")["text"]
    location = answer_for("i22lqhuJZKqZ")["text"]
    style = answer_for("OqTp9mVbbC0s")["choice"]["label"]
  
  
    OnboardingForm.new(user_id: user_id, 
                       first_name: first_name, 
                       last_name: last_name,
                       school: school, 
                       bio: bio, 
                       email: email, 
                       style: style,
                       location: location)

  end

  private

    def answer_for(field_id)
      @form["form_response"]["answers"].detect do |answer|
        answer["field"]["id"] == field_id
      end 
    end
end


