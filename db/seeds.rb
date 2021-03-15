# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
counter = 0
color_tags = ["red", "blue", "green", "yellow", "orange", "purple", "pink"].sample
puts ">>>>> 🚮 Cleaning DB \n "
SongText.destroy_all
User.destroy_all

puts "\n"
puts "//////////   creating users"

main_user = User.create(email: 'user@email.com', password: '000000')
puts "🖐🖐🖐 created user #{main_user} \n "

admin = User.create(email: 'admin@admin', password: 'admin0000', admin: true)
puts "🔑🔑🔑 created admin #{admin} \n "

user_dummy = User.create(email: 'dummy@email.com', password: '000000')
user_dummy2 = User.create(email: 'dummy2@email.com', password: '000000')

jean = User.create(email: 'jeanbattirola@gmail.com', password: 'iseeparis250792', admin: true)

puts "👨‍🦲 created dummy 1 and 2: \n
👨‍🦲 dummy 1 = #{user_dummy} \n
👨‍🦲 dummy 2 = ##{user_dummy2} \n "

puts "\n"
puts "/////////🆕  creating lyrics for users \n "

puts "SONGS FOR MAIN USER"
10.times do
  counter = counter + 1
  main_user_lyrics = SongText.create(title: "#{Faker::Book.title}", content: "'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.'", notes: "that one is cool, key: #{Faker::Music.key}, genre: #{Faker::Music.genre}", user_id: main_user.id, color_tag: "#{color_tags}", rating: rand(1..5))
  puts "🆕 created song ##{counter}: #{main_user_lyrics.title} --- #{main_user_lyrics} \n
  for user #{main_user} \n \n "
end

puts "SONGS FOR DUMMY USER 1"
10.times do
  counter = counter + 1
  dummy_lyrics = SongText.create(title: "#{Faker::Book.title}", content: "'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.'", notes: "that one is cool, key: #{Faker::Music.key}, genre: #{Faker::Music.genre}", user_id: user_dummy.id, color_tag: "#{color_tags}", rating: rand(1..5))
  puts "🆕 created song ##{counter}: #{dummy_lyrics.title} --- #{dummy_lyrics} \n 
  for user #{user_dummy} \n \n "
end

puts "SONGS FOR DUMMY USER 2"
10.times do
  counter = counter + 1
  dummy2_lyrics = SongText.create(title: "#{Faker::Book.title}", content: "'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.'", notes: "that one is cool, key: #{Faker::Music.key}, genre: #{Faker::Music.genre}", user_id: user_dummy2.id, color_tag: "#{color_tags}", rating: rand(1..5))
  puts "🆕 created song ##{counter}: #{dummy2_lyrics.title} --- #{dummy2_lyrics} \n
  for user #{user_dummy2} \n \n "
end