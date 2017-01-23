# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "mharandal", password: "password")
User.create(username: "richv", password: "password")

Post.create(question: "How do I learn rails?", body: "I'm having issues understanding rails",
            author_id: 1)
Post.create(question: "How does rails work?", body: "What the fuck is rails",
            author_id: 2)
