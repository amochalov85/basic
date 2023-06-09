Post.delete_all
User.delete_all

users = 3.times.map do |i|
  User.create!(
    name: Faker::Book.author,
    email: "user_#{i}@example.com",
    password: '123')
end

posts = users.map do |user|
  Post.create!(
    text: Faker::Food.description,
    user: user)
end
