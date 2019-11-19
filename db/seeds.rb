roles = ['doc', 'ta', 'student']
10.times do
  doctor = Doctor.create(
    name: Faker::Doc.doctor_name
  )

10.times do 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Enrollment.create(
      role: roles.sample,
      doctor_id: doctor.id,
      user_id: user.id
    )
  end
end

puts "Data Seeded."