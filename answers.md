# Q0: Why is this error being thrown?
  The error is being thrown because the home controller cannot locate where the Pokemon model since it hasn't been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
  The random Pokemon are appearing from an array created in the home_controller's index method, where each Pokemon's trainer id is null.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  That following line instructs the page to follow the capture_path(id: pokemon) route using a patch request. It instructs the page to go to the capture method in pokemons controller by using a patch request.

# Question 3: What would you name your own Pokemon?
  "Your name's Pokemon"

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
  I passed trainer_path id:@pokemon.trainer_id into the redirect_to. It was a path and it needed the id to be specified.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
  This is because the flash message is rendered by the _messages.html.erb page under layouts in the views.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
