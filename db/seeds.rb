# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
    chart = Chart.new
        chart.title:  'Top 10'
        chart.genre: Faker::Music.genre
        

    chart.save
    song = Song.new

    10.times do 
        song = Song.new
            song.title: Faker::Book.title
            song.artist: Faker::Music.band
            song.album: Faker::Music.album
            song.genre: Faker::Music.genre
            song.chart = chart
            song.save
        

end

puts 'Data seeded.'