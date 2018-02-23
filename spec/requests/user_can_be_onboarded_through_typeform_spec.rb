require 'rails_helper'

describe "User finishes typeform" do 
  it "has the data saved from it associated to their model" do 
    user = User.create(user_name: "nico24687", password: "donothackin")
    typeform_payload = {"event_id"=>"hQJi65uTRz", "event_type"=>"form_response", "form_response"=>{"form_id"=>"FlKi4e", "token"=>"4969bac7b56e83a82ad060f0ae57faed", "submitted_at"=>"2018-02-22T03:06:49Z", "hidden"=>{"user_id"=>user.id}, "definition"=>{"id"=>"FlKi4e", "title"=>"New typeform", "fields"=>[{"id"=>"SstvvqT1TyVl", "title"=>"What is your first name?", "type"=>"short_text", "ref"=>"3666e120-a4fd-4f4c-918e-80158ddf8ae6", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"Z9Xuj60iPPGM", "title"=>"Hey {{answer_74457070}} nice to meet you. What's your last name?", "type"=>"short_text", "ref"=>"60015eb6-e162-46eb-9cf2-91e8d51040ef", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"wq5QC9DsVBf5","title"=>"Lets put a face to that name!", "type"=>"file_upload", "ref"=>"3ee31226-9a32-42e2-8d7b-2e403658c3fe", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"K7ds92B2yz0M", "title"=>"Where did you study?", "type"=>"short_text", "ref"=>"f61df93b-5883-47f1-b8fd-6b837ad7b922", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"ABNgubRKZ2qw", "title"=>"How about a little bio about yourself", "type"=>"short_text", "ref"=>"7adb5879-b6ea-4795-b778-3bee74a0107e", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"m4sHdfLxnvXr", "title"=>"So customers will want to contact you which email should they use?", "type"=>"short_text", "ref"=>"26dae44c-5f54-4f35-b9d7-e068a3954729", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"i22lqhuJZKqZ", "title"=>"What is your current location?", "type"=>"short_text", "ref"=>"d8fe1f6a-c51f-48d8-b06e-ad0347b74ce3", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"OqTp9mVbbC0s", "title"=>"Lastly what style do you gravitate towards? ", "type"=>"picture_choice", "ref"=>"aa6b5d46-09b0-47ac-9909-397fcfac8278", "allow_multiple_selections"=>false, "allow_other_choice"=>false}]}, "answers"=>[{"type"=>"text", "text"=>"John", "field"=>{"id"=>"SstvvqT1TyVl", "type"=>"short_text"}}, {"type"=>"text", "text"=>"Doe", "field"=>{"id"=>"Z9Xuj60iPPGM", "type"=>"short_text"}}, {"type"=>"file_url", "file_url"=>"https://avatars2.githubusercontent.com/u/16985874", "field"=>{"id"=>"wq5QC9DsVBf5", "type"=>"file_upload"}}, {"type"=>"text", "text"=>"Parsons", "field"=>{"id"=>"K7ds92B2yz0M", "type"=>"short_text"}}, {"type"=>"text", "text"=>"I enjoy making all types of art", "field"=>{"id"=>"ABNgubRKZ2qw", "type"=>"short_text"}}, {"type"=>"text", "text"=>"johndoe@hotmail.com", "field"=>{"id"=>"m4sHdfLxnvXr", "type"=>"short_text"}}, {"type"=>"text", "text"=>"London", "field"=>{"id"=>"i22lqhuJZKqZ", "type"=>"short_text"}}, {"type"=>"choice", "choice"=>{"label"=>"Barcelona"}, "field"=>{"id"=>"OqTp9mVbbC0s", "type"=>"picture_choice"}}]}, "controller"=>"onboarding", "action"=>"create", "onboarding"=>{"event_id"=>"hQJi65uTRz", "event_type"=>"form_response", "form_response"=>{"form_id"=>"FlKi4e", "token"=>"4969bac7b56e83a82ad060f0ae57faed", "submitted_at"=>"2018-02-22T03:06:49Z", "hidden"=>{"user_id"=>user.id}, "definition"=>{"id"=>"FlKi4e", "title"=>"New typeform", "fields"=>[{"id"=>"SstvvqT1TyVl", "title"=>"What is your first name?", "type"=>"short_text", "ref"=>"3666e120-a4fd-4f4c-918e-80158ddf8ae6", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"Z9Xuj60iPPGM", "title"=>"Hey {{answer_74457070}} nice to meet you. What's your last name?", "type"=>"short_text", "ref"=>"60015eb6-e162-46eb-9cf2-91e8d51040ef", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"wq5QC9DsVBf5", "title"=>"Lets put a face to that name!", "type"=>"file_upload", "ref"=>"3ee31226-9a32-42e2-8d7b-2e403658c3fe", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"K7ds92B2yz0M", "title"=>"Where did you study?", "type"=>"short_text", "ref"=>"f61df93b-5883-47f1-b8fd-6b837ad7b922", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"ABNgubRKZ2qw", "title"=>"How about a little bio about yourself", "type"=>"short_text", "ref"=>"7adb5879-b6ea-4795-b778-3bee74a0107e", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"m4sHdfLxnvXr", "title"=>"So customers will want to contact you which email should they use?", "type"=>"short_text", "ref"=>"26dae44c-5f54-4f35-b9d7-e068a3954729", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"i22lqhuJZKqZ", "title"=>"What is your current location?", "type"=>"short_text", "ref"=>"d8fe1f6a-c51f-48d8-b06e-ad0347b74ce3", "allow_multiple_selections"=>false, "allow_other_choice"=>false}, {"id"=>"OqTp9mVbbC0s", "title"=>"Lastly what style do you gravitate towards? ", "type"=>"picture_choice", "ref"=>"aa6b5d46-09b0-47ac-9909-397fcfac8278", "allow_multiple_selections"=>false, "allow_other_choice"=>false}]}, "answers"=>[{"type"=>"text", "text"=>"Lorem ipsum dolor", "field"=>{"id"=>"SstvvqT1TyVl", "type"=>"short_text"}}, {"type"=>"text", "text"=>"Lorem ipsum dolor", "field"=>{"id"=>"Z9Xuj60iPPGM", "type"=>"short_text"}}, {"type"=>"file_url", "file_url"=>"https://admin.typeform.com/form/results/file/download/FlKi4e/wq5QC9DsVBf5/file.ext", "field"=>{"id"=>"wq5QC9DsVBf5", "type"=>"file_upload"}}, {"type"=>"text", "text"=>"Lorem ipsum dolor", "field"=>{"id"=>"K7ds92B2yz0M", "type"=>"short_text"}}, {"type"=>"text", "text"=>"Lorem ipsum dolor", "field"=>{"id"=>"ABNgubRKZ2qw", "type"=>"short_text"}}, {"type"=>"text", "text"=>"Lorem ipsum dolor", "field"=>{"id"=>"m4sHdfLxnvXr", "type"=>"short_text"}}, {"type"=>"text", "text"=>"Lorem ipsum dolor", "field"=>{"id"=>"i22lqhuJZKqZ", "type"=>"short_text"}}, {"type"=>"choice", "choice"=>{"label"=>"Barcelona"}, "field"=>{"id"=>"OqTp9mVbbC0s", "type"=>"picture_choice"}}]}}} 
    
    post onboarding_path, params: typeform_payload

    #update the test here to have all the values you want
    #push to heroku again, it should work ... 

    onboarded_user = user.reload
 
    expect(onboarded_user.first_name).to eq("John")
    expect(onboarded_user.last_name).to eq("Doe")
    expect(onboarded_user.school).to eq("Parsons")
    expect(onboarded_user.bio).to eq("I enjoy making all types of art")
    expect(onboarded_user.email).to eq("johndoe@hotmail.com")
    expect(onboarded_user.location).to eq("London")
    expect(onboarded_user.style).to eq("Barcelona")
  
  end
end