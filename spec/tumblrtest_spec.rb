require 'spec_helper' 

describe "" do
  
  it "should log the user into tumblr with correct credentials" do
    expect(email = browser.text_field(id: "signup_email").set file["login"][0]["username"]).to include "testingspartan@gmail.com"
    #expect()
    
  end
  
end

