10.times do
  doctor = Doctor.create(
    first_name: Faker::TvShows::TwinPeaks.character,
    last_name: Faker::Games::Pokemon.name
  )
 
  10.times do 
    user = User.create(
      first_name: Faker::TvShows::ParksAndRec.character,
      last_name: Faker::Beer.brand
    )

    Appointment.create(
      date: Faker::Date,
      doctor_id: doctor.id,
      user_id: user.id
    )
  end
end

puts "Data Seeded."


