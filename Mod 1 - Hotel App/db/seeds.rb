require 'faker'
Guest.delete_all
Booking.delete_all
Room.delete_all



types_of_rooms = ["Master Suite","Mini Suite","Penthouse Suite","Connecting rooms"]
r1 = Room.create(room_type: types_of_rooms.sample, room_num: Faker::Number.between(from: 1, to: 300))
r2 = Room.create(room_type: types_of_rooms.sample, room_num: Faker::Number.between(from: 1, to: 300))
r3 = Room.create(room_type: types_of_rooms.sample, room_num: Faker::Number.between(from: 1, to: 300))
r4 = Room.create(room_type: types_of_rooms.sample, room_num: Faker::Number.between(from: 1, to: 300))


b1 = Booking.create(guest_id: nil , room_id: r1.id, available: true , when: Faker::Date.between(from: '2020-07-31', to: '2020-08-31')) 
b2 = Booking.create(guest_id: nil, room_id: r2.id, available: false , when: Faker::Date.between(from: '2020-07-31', to: '2020-08-31')) 
b3 = Booking.create(guest_id: nil, room_id: r3.id, available: true , when:  Faker::Date.between(from: '2020-07-31', to: '2020-08-31')) 
b4 = Booking.create(guest_id: nil, room_id: r4.id, available: false , when: Faker::Date.between(from: '2020-07-31', to: '2020-08-31'))
