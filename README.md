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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="/assets/js/opalrb/opal.v0.3.43.js"></script>
    <script src="/assets/js/opalrb/opal-parser.v0.3.43.js"></script>
    <script src="/assets/js/opalrb/opal-jquery.v0.0.8.js"></script>

    <!-- Custom code included as an external file -->
    <script type="text/ruby" src="/assets/js/example.rb"></script>

    <!-- Custom code included inline -->
    <script type="text/ruby">
      Document.ready? do
        alert('Document is ready')
      end
    </script>
  </body>
</html>
```