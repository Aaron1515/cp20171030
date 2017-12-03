# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
	subscriber = Subscriber.create(name: "aaron"+i.to_s, email: "aaron" + i.to_s+ "@mail.com")
	b = Activity.create(note: "added new subscriber")
	b.update_attribute(:info, subscriber)
end

5.times do |i|
	contact = Contact.create(name: "aaron"+i.to_s, email: "aaron" + i.to_s+ "@mail.com", organization: "School", comment: "This is a test.")
	b = Activity.create(note: "added new contact")
	b.update_attribute(:info, contact)
end



Admin.create(password: "password1", email: "aaron@aaron.com")
Admin.create(password: "password1", email: "hello.stephwang@gmail.com")
Admin.create(password: "password1", email: "vivien.macnguyen@gmail.com")
Admin.create(password: "password1", email: "alb.t.hwang@gmail.com")