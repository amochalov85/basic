# Создание пользователей
user1 = User.create(email: "john@example.com", encrypted_password: "password")
user2 = User.create(email: "sarah@example.com", encrypted_password: "password")
user3 = User.create(email: "mike@example.com", encrypted_password: "password")

# Создание постов и связывание их с пользователями
post1 = Post.create(content: "Пример контента поста 1", user: user1)
post2 = Post.create(content: "Пример контента поста 2", user: user2)