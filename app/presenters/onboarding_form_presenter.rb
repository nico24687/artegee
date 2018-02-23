class OnboardingFormPresenter 
  def initialize(form)
    @form = form 
  end
  def form 
    
    puts "creating form PORO..."
    pp @form

    user_id = @form["form_response"]["hidden"]["user_id"]
    first_name = @form["form_response"]["answers"][0]["text"]
    last_name = @form["form_response"]["answers"][1]["text"]
    avatar = @form["form_response"]["answers"][2]["file_url"]
    school = @form["form_response"]["answers"][3]["text"]
    bio = @form["form_response"]["answers"][4]["text"]
    email = @form["form_response"]["answers"][5]["text"]
    location = @form["form_response"]["answers"][6]["text"]
    style = @form["form_response"]["answers"][7]["choice"]["label"]
  
    #do this for all the other answers
    OnboardingForm.new(user_id: user_id, 
                       first_name: first_name, 
                       last_name: last_name, 
                       avatar: avatar, 
                       school: school, 
                       bio: bio, 
                       email: email, 
                       style: style,
                       location: location)

  end
end


