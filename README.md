<p align="center">
  <img src="https://janapix.files.wordpress.com/2015/04/artegee-logo.jpg?w=300&h=300" alt="Adop Shop logo"/>
</p>

# Artegee

[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

A social selling platform to allow users to connect directly with local artists. Art listed has no price tags, and no buy it now buttons. Instead users must learn about each piece directly from the artist and negotiate a price that works for both.  

## Getting Started


These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ensure you have rails installed, if not:

```
gem install rails 
```

### Installing

To get up and running in your browser clone this repo 

Install the dependenices

```
bundle install 
```

Create the database

```
rails db:create
```

Run the migrations

```
rails db:migrate
```

Start the server

```
rails server
```

Visit localhost:3000 in your browser to start exploring our artists

## Running the tests

Install the dependencies

```
bundle install
```

Run rspec

```
rspec
```


### Test Example

Each test ensures working functionality for a particular user story. 

```
describe "as a registered user" do 
  it "can post to its own user show page" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_path(user)
    fill_in "post[body]", with:"Check out my post"
    find(:css, '.submit-post').click

    expect(current_path).to eq(user_path(user))
    expect(user.posts.count).to eq(1)
    expect(page).to have_content("Check out my post")

  end
end 
```

## Built With

* [Rails](https://github.com/rails/rails) 
* [Bootstrap](https://github.com/twbs/bootstrap-rubygem) 
* [Faye](https://faye.jcoglan.com/)

## Versioning

Version 1.0

## Authors

* **Nico Lewis** [contact](https://github.com/nico24687)

## License

This project is licensed under the MIT License 

