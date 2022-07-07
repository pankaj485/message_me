# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "suser1", password: "pass1")
User.create(username: "suser2", password: "pass1")
User.create(username: "suser3", password: "pass1")
User.create(username: "suser4", password: "pass1")
User.create(username: "suser5", password: "pass1")

Message.create(body: "I'm good how are you? ", user_id: User.find_by_id(1).id)
Message.create(body: "M also good :)", user_id: User.find_by_id(2).id)
Message.create(body: "okay then, see you.", user_id: User.find_by_id(1).id)
Message.create(body: "see ya mate!", user_id: User.find_by_id(2).id)
