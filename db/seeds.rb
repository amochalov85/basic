user1 = User.create(name: "John", email: "john@example.com", password: "password")
user2 = User.create(name: "Sarah", email: "sarah@example.com", password: "password")
user3 = User.create(name: "Mike", email: "mike@example.com", password: "password")

user1.posts.create(title: "First post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
user1.posts.create(title: "Second post", content: "Nullam euismod, mi ut mattis molestie, velit lacus malesuada neque, quis vehicula tellus dolor vitae mauris.")
user2.posts.create(title: "Third post", content: "Vivamus condimentum, nibh vel varius tempor, mi ipsum elementum odio, ac feugiat quam sapien vitae odio.")
user2.posts.create(title: "Fourth post", content: "Pellentesque eget odio augue. Sed feugiat justo nec metus dapibus consequat.")
user3.posts.create(title: "Fifth post", content: "Proin in magna sit amet quam pharetra mattis. Sed id orci euismod, aliquam ex vitae, faucibus arcu.")
