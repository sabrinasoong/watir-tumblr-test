$LOAD_PATH << '.'
file = YAML::load_file(./login_data.rb)

module Login
def login(email, password, username)
  email = file["login"][0]["email"]
  password = file["login"][0]["password"]
  username = file["login"][0]["username"]
end