User.create!(name:"Example User",email:"example2004@email.com",password:"example",password_confirmation:"example",admin: true)
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@email.com"
    User.create!(name:name,email:email,password:"password",password_confirmation:"password")
end