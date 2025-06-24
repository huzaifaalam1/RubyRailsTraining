User.destroy_all
Micropost.destroy_all

User.create!(name:"Example User",email:"example2004@email.com",password:"example",password_confirmation:"example",admin: true)
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@email.com"
    User.create!(name:name,email:email,password:"password",password_confirmation:"password")
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }