# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Note.destroy_all
Tag.destroy_all
NoteTag.destroy_all

User.create(username:"alex", logged_in: false)
User.create(username:"ted", logged_in: false)
User.create(username:"ann", logged_in: false)
User.create(username:"raza", logged_in: false)
User.create(username:"tim", logged_in: false)
User.create(username:"donald", logged_in: false)
User.create(username:"joe", logged_in: false)

Tag.create(name: "Coding")
Tag.create(name: "JavaScript")
Tag.create(name: "React JS")


10.times{Note.create(title: "Test note", body: "Note text here", user_id: User.all.sample.id)}
    
10.times{NoteTag.create(note_id: Note.all.sample.id, tag_id: Tag.all.sample.id)}