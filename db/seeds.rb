# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "user1", password: "pass1")
User.create(username: "user2", password: "pass2")

Message.create(body: "Welcome", user_id: User.find_by_id(1).id)
Message.create(body: "You can start chatting now :)", user_id: User.find_by_id(2).id)
