message = <<-MESSAGE
  
  **********************************************************
  Thank you for installing sassy_flash plugin!
  
  To get started, navigate to your project root, and type:
  
  $ rake sassy_flash:install[JAVASCRIPT]
  
  JAVASCRIPT - You can pass either dojo, jquery, mootools or
  prototype, or feel free to leave it blank.
  
  That will copy all of the necessary assets to their 
  appropriate homes.
  
  In your layout, add the following lines before </head>:
  
  <%= stylesheets_link_tag 'sassyFlash' %>
  <%= javascript_include_tag '[JAVASCRIPT].sassyFlash.js'%>
  
  Enjoy and have fun!
  
  **********************************************************
  
MESSAGE

puts message