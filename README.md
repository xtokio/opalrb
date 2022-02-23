# Opal is a Ruby to JavaScript source-to-source compiler

#### Basic template
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Opalrb</title>
  </head>
  <body>

    <!-- Required libraries -->
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/opalrb.min.js"></script>

    <!-- Custom code included as an external file -->
    <script type="text/ruby" src="/assets/rb/example.rb"></script>

    <!-- Custom code included inline -->
    <script type="text/ruby">
      Document.ready? do
        alert('Document is ready')
      end
    </script>
  </body>
</html>
```

#### Snippets
```ruby
# Document ready
Document.ready? do
  # Code to be executed after page load
end

# Class creation
class User
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def hello
    alert("Hello - #{@user}")
  end
end

# Class usage
luis = User.new("Luis Gomez")
luis.hello # "Hello - Luis Gomez"

# GET
url = "https://randomuser.me/api/?results=10"
HTTP.get(url) do |response|
  data = response.json["results"]
  puts data
end

# POST
data = {:title => "My title", :body => "My body", :userId => 1}
HTTP.post("https://jsonplaceholder.typicode.com/posts", payload: data) do |req|
  puts req.json
  puts "Response ID #{req.json["id"]}"
end

# Finding element by class name
table = Element.find(".table").html
puts table

# Finding element by id
display = Element.find("#btn_display")

# Element by ID
title = Element.id('title')

# Get element data attribute
# <h1 id="title" data-message="Data message!">Test</h1>
title = Element.id('title').data('message')

# Set element attribute
Element.id('txt_title').attr(:id, "txt_title")
Element.id('txt_title').attr(:placeholder, "Sample text")

# Add a class
Element.id('txt_title').add_class("form-control")

# Remove a class
Element.id('txt_title').remove_class("form-control")

# Target a specific element when finding more than one
td_text = Element.find('td').at(4)

# Click event
display = Element.find("#btn_display")
display.on(:click) do
  Element.find('#tbody').html = ""
end

```