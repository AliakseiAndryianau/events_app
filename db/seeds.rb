# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u = User.new(id: 1, first_name: 'Alex', last_name: 'Andrianov', company_name: 'qwe', company_title: 'qqq').save
m = Meeting.new(timeslot_id: 1, event_id: 1, requester_id: 1, receiver_id: 1, status: 'pending').save
t = Timeslot.new(event_id: 1, title: 'meet1', reservable: false).save
t2 = Timeslot.new(event_id: 1, title: 'meet2', reservable: false).save
e = Event.new(name: 'Event1').save
tsbm = TimeslotBookmark.new(user_id: 1, timeslot_id: 1).save
tsbm2 = TimeslotBookmark.new(user_id: 1, timeslot_id: 1).save

# m = Meeting.new(timeslot_id: 1, event_id: 1, requester_id: 1, receiver_id: 1, status: 'pending', user_id: 1)
