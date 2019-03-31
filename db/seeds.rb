# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# Gymsite.delete_all


Gymsite.create(
 surname: 'Round One',
legal_id: '0923456798-001',
description: 'Area: 80 m2; capacidad 15-20 alumnos, cuenta con vestidores, SSHH y aire acondicionado',
email: 'info@roundone.com',
start_date: '2019-02-11'
)
puts 'gymsite created'

Role.create(role_name: 'admin')
Role.create(role_name: 'staff1')
Role.create(role_name: 'trainer')
Role.create(role_name: 'member')

puts ' 4 roles created'

usr = User.create(
  gymsite_id: 1,
  first_name: 'Fernando',
  last_name: 'Zavala',
  email: 'ferzagi@roundone.com'
)

usr.roles_users.create(role_id: 1)

puts 'one user admin created'
