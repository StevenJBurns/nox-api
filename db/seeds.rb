# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.create(title: 'One-On-One', description: 'Zac takes people behind the woodshed')
Service.create(title: 'Group', description: 'Zac takes many people behind the woodshed')
Service.create(title: 'Online', description: 'Zac takes people behind the virtual woodshed')
Service.create(title: 'Nutrition', description: 'Zac locks people in the woodshed for a week')

Testimonial.create(service_id: 1, client_name: 'SJB', body_text: 'Loved every minute!!', image_url: '')
Testimonial.create(service_id: 1, client_name: 'BLB', body_text: 'It was just OK', image_url: '')
Testimonial.create(service_id: 2, client_name: 'JCD', body_text: 'So-So Experience', image_url: '')
Testimonial.create(service_id: 2, client_name: 'BLB', body_text: '9/10. Would do again', image_url: '')
Testimonial.create(service_id: 3, client_name: 'SJB', body_text: 'Dismantle the company. Now', image_url: '')
Testimonial.create(service_id: 3, client_name: 'BLB', body_text: 'Forgot I was enrolled', image_url: '')
Testimonial.create(service_id: 4, client_name: 'JCD', body_text: 'Best. Program. Ever', image_url: '')
Testimonial.create(service_id: 4, client_name: 'BLB', body_text: 'Enrolling my dog tomorrow', image_url: '')
