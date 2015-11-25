require 'watir'
require 'YAML'
file = YAML::load_file("./login_data.yml")

#Open Browser
browser = Watir::Browser.new :firefox
browser.goto "http://tumblr.com/login"

#Login

email = browser.text_field(id: "signup_email").set file["login"][0]["username"]
password = browser.text_field(id: "signup_password").set file["login"][1]["password"]


browser.button(id: "signup_forms_submit").click

#Post
post = browser.element(class: "icon_post_text")
post.click
browser.div(class: "editor").send_keys "This is a test post"
browser.element(class: "create_post_button").click

#Verify
if browser.element(class: "post_title").text.include? "This is a test post"
  puts "Success! Test post is posted!!"
else
  puts "lolnope"
end

#Teardown
browser.close




