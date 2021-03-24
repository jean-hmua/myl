
puts "Welcome! \n"
puts "_______________________________________________________________
|| | | ||| | ||| | | ||| | ||| | | ||| | ||| | | ||| | ||| | | ||
||_|_|_|||_|_|||_|_|_|||_|_|||_|_|_|||_|_|||_|_|_|||_|_|||_|_|_||
| | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |
|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_| \n MyLy
"
sleep(0.2)
puts "❗/// SEEDS STARTED ///❗"

puts "📐SETUP"

require 'open-uri'
require 'faker'

def color_tags 
  ["#ba3262", "#73092e", "#18096E", "#7E8C2B", "#5F42FF", "#94372B", "#E39F20", "#ff3eec88", "#463F3A", "black",  "pink", "purple", "green", "cyan"]
end

puts " 🚮 Cleaning DB... \n  "

SongText.destroy_all
User.destroy_all

puts "\n"
puts "Creating users...."

main_user = User.create(email: 'user@email.com', password: '000000')
puts "🖐 created user #{main_user} \n "

admin = User.create(email: 'admin@admin', password: 'admin0000', admin: true, username: "mylyadmin")
puts "🔑 created admin #{admin} \n "

user_dummy = User.create(email: 'dummy@email.com', password: '000000')
image = URI.open("https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg")
user_dummy.avatar.attach(io: image, filename: "dummy1", content_type: "image/png")
user_dummy.save

user_dummy2 = User.create(email: 'dummy2@email.com', password: '000000', username: "Dudinhah")
image = URI.open("http://pm1.narvii.com/5866/76b201e12343e860570c62f4067307e04ed545fe_00.jpg")
user_dummy2.avatar.attach(io: image, filename: "dummy2", content_type: "image/png")
user_dummy2.save

counter = 0
puts "Creating random Users...."
20.times do
  counter += 1
  c = counter + 1
  random_user = User.create(email: "#{Faker::Internet.email}", password: '000000', username: "#{Faker::Internet.username}")
  image = URI.open("https://thispersondoesnotexist.com/image")
  random_user.avatar.attach(io: image, filename: "random_user-#{counter}", content_type: "image/png")
  random_user.save
  sleep(0.5)
end


jean = User.create(email: 'jeanbattirola@gmail.com', password: '250792250792', admin: true)

puts "👨‍🦲 created dummy 1 and 2: \n
created admin \n
created Jean \n
and #{counter} random users "

puts "❗// Users created"


puts "\n"
puts "🆕Seeding lyrics for users \n "

puts "Creating song for main user...."
counter = 0
10.times do
  counter += 1
  main_user_lyrics = SongText.create(title: "#{Faker::Book.title}", content: "Only Fire fuck it up

    Don’t you ever get bored
    When you’re deep in my vagina
    Going down the path
    Long as the Great Wall of China
    You want something tight
    That fits right onto your dick
    You want something that doesn’t bleed
    Every 4th week
    
    Let’s do anal sex
    So my pussy can rest
    Let’s do anal sex
    So that you can tell your ex
    I’ll lick my shit off your dick
    If you show me respect
    I’ll lick my shit off your dick
    If you write me a check
    Let’s do anal sex
    So my pussy can rest
    Let’s do anal sex
    So that you can tell your ex
    I’ll lick my shit off your dick
    If you show me respect
    I’ll lick my shit off your dick
    If you write me a check
    If it’s sharp
    Like a needle
    I may cry
    Just a little
    You can’t cum
    In the middle
    We ain’t married
    That’s illegal
    But I really don’t care
    If it’s something wrong
    I haven’t done anal
    For so long
    Bitch, pour me up a drink
    I want something strong
    Your dick in my ass
    That’s my favorite song
    
    Can you cum on my nose
    As I suck your big toes
    Anus red like a rose
    When you eat it strike a pose
    Eat it good, eat it right
    Beat it hard, don’t beat it light
    I shake my ass when there’s cum in it
    Watch it pop like Sprite
    Let’s do anal sex
    So my pussy can rest
    Let’s do anal sex
    So that you can tell your ex
    I’ll lick my shit off your dick
    If you show me respect
    I’ll lick my shit off your dick
    If you write me a check
    Let’s do anal sex
    So my pussy can rest
    Let’s do anal sex
    So that you can tell your ex
    I’ll lick my shit off your dick
    If you show me respect
    I’ll lick my shit off your dick
    If you write me a check", notes: "that one is cool, key: #{Faker::Music.key}, genre: #{Faker::Music.genre}", user_id: main_user.id, color_tag: "#{color_tags.sample}", rating: rand(1..5))
  puts "🆕 created song ##{counter}: #{main_user_lyrics.title} for user #{main_user} \n"
end
puts "Songs for main user created"

puts "Creating song for dummy user 1...."
15.times do
  counter += 1
  dummy_lyrics = SongText.create(title: "#{Faker::Book.title}", content: "Baby, can't you see?
    I'm calling 
    A guy like you should wear a warning 
    It's dangerous 
    I'm falling 
    
    There's no escape 
    I can't wait 
    I need a hit 
    Baby, give me it 
    You're dangerous 
    I'm loving it 
    
    Too high 
    Can't come down 
    Losin' my head 
    Spinnin' 'round and 'round 
    Do you feel me now? 
    
    With a taste of your lips 
    I'm on a ride 
    You're toxic I'm slippin' under 
    With a taste of a poison paradise 
    
    I'm addicted to you 
    Don't you know that you're toxic? 
    And I love what you do 
    Don't you know that you're toxic? 
    
    It's getting late 
    To give you up 
    I took a sip 
    From my devil's cup 
    Slowly, it's taking over me 
    
    Too high 
    Can't come down 
    It's in the air and it's all around 
    Can you feel me now? 
    
    With a taste of your lips 
    I'm on a ride 
    You're toxic I'm slippin' under 
    With a taste of a poison paradise 
    
    I'm addicted to you 
    Don't you know that you're toxic? 
    And I love what you do 
    Don't you know that you're toxic? 
    Don't you know that you're toxic? 
    
    (Oh, oh) 
    (Oh, oh) 
    
    Taste of your lips 
    I'm on a ride 
    You're toxic I'm slippin' under 
    With a taste of a poison paradise 
    
    I'm addicted to you 
    Don't you know that you're toxic? 
    
    With the taste of your lips 
    I'm on a ride 
    You're toxic I'm slippin' under (toxic) 
    With a taste of the poison paradise 
    
    I'm addicted to you 
    Don't you know that you're toxic? 
    
    Intoxicate me now 
    With your lovin' now 
    I think I'm ready now 
    I think I'm ready now 
    
    Intoxicate me now 
    With your lovin' now 
    I think I'm ready now", notes: "I've never heard it before. \n That one is cool, key: #{Faker::Music.key}, genre: #{Faker::Music.genre}", user_id: user_dummy.id, color_tag: "#{color_tags.sample}", rating: rand(1..5))
  puts "🆕 created song ##{counter}: #{dummy_lyrics.title} --- #{dummy_lyrics} \n 
  for user #{user_dummy} \n \n "
end
puts "Songs for dummy user 1 created"

puts "Creating song for dummy user 2...."
10.times do
  counter += 1
  dummy2_lyrics = SongText.create(title: "#{Faker::Book.title}", content: "Como puede ser verdad  
     
    Last night I dreamt of San Pedro  
    Just like I'd never gone, I knew the song  
    A young girl with eyes like the desert  
    It all seems like yesterday, not far away  
     
    Tropical the island breeze   
    All of nature wild and free  
    This is where I long to be  
    La isla bonita  
    And when the samba played   
    The sun would set so high  
    Ring through my ears and sting my eyes   
    Your Spanish lullaby  
     
    I fell in love with San Pedro   
    Warm wind carried on the sea, he called to me  
    Te dijo te amo  
    I prayed that the days would last  
    They went so fast  
     
    Tropical the island breeze  
    All of nature wild and free  
    This is where I long to be  
    La isla bonita  
    And when the samba played  
    The sun would set so high  
    Ring through my ears and sting my eyes  
    Your Spanish lullaby  
     
    I want to be where the sun warms the sky  
    When it's time for siesta you can watch them go by  
    Beautiful faces, no cares in this world  
    Where a girl loves a boy, and a boy loves a girl  
     
    Last night I dreamt of San Pedro  
    It all seems like yesterday, not far away  
     
    Tropical the island breeze  
    All of nature wild and free  
    This is where I long to be  
    La isla bonita  
    And when the samba played  
    The sun would set so high  
    Ring through my ears and sting my eyes  
    Your Spanish lullaby  
     
    Tropical the island breeze  
    All of nature wild and free  
    This is where I long to be  
    La isla bonita  
    And when the samba played  
    The sun would set so high  
    Ring through my ears and sting my eyes  
    Your Spanish lullaby  
     
    La la la la la la la  
    Te dijo te amo  
    La la la la la la la  
    El dijo que te ama", notes: "Original song by me. That one is cool, key: #{Faker::Music.key}, genre: #{Faker::Music.genre}", user_id: user_dummy2.id, color_tag: "#{color_tags.sample}", rating: rand(1..5))
  puts "🆕 created song ##{counter}: #{dummy2_lyrics.title} --- #{dummy2_lyrics} \n
  for user #{user_dummy2} \n \n "
end
puts "Songs for dummy user 2 created"

puts "Creating song for random users...."
30.times do
  counter += 1
  random_lyrics = SongText.create(title: "#{Faker::Book.title}", content: "Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    Rosita: Get down, Elmo! Yeah! 
    Elmo: Elmo has something to tell you 
    The Macarena is a dance 
    Named after a girl in Spain called ''Macarena!'' 
    Maybe someday Elmo will get a dance named after him 
    Yeah, something like this, ''Hey, do the Elmo!''
    
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    Hoots: Hey, listen to Hoots! 
    Move your hands, move your arms 
    Move your tummy, move your legs 
    Move your knees, move your feet 
    Move everything! 
    
    Big Bird: I'm moving my beak 
    Prairie Dawn: I find this song very inspirational 
    Hoots: Yeah, let's do the Macarena! 
    Big Bird: Shake your tail feathers 
    Benny: Hey, I don't want to do this 
    I don't want to do this at all 
    I'm gonna get downtown! 
    
    Zoe: Take it, Wolfgang! 
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    The Count: If everybody in the world would just try this dance 
    Then there would be over 5 and a half billion people 
    Doing the Macarena! 
    Here let me count them for you ... 
    
    One person doing the Macarena 
    Two people doing the Macarena 
    Yes! 
    Three people doing the Macarena 
    I love it! 
    Four people doing the Macarena 
    
    Oscar: Will you stop it already?! 
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    Oscar: How many thousands of times are you going to sing it?! 
    Dale a tu cuerpo 
    Alegria Macarena 
    Que tu cuerpo es pa darle 
    Alegria why cosa buena 
    Dale a tu cuerpo 
    Alegria Macarena 
    Eh, Macarena! 
    
    The Count: That's 3,200,563,043 people doing the Macarena! 
    Ha! Ha! Come on, folks, we're over half way there! 
    Ha! Ha! Ha!", notes: "Original song by me. That one is cool, key: #{Faker::Music.key}, genre: #{Faker::Music.genre}", user_id: User.all.sample.id, color_tag: "#{color_tags.sample}", rating: rand(1..5))
  puts "🆕 created song ##{counter}: #{random_lyrics.title} --- #{random_lyrics} \n
  for user #{random_lyrics.user.username} \n \n "
end
puts "Songs for random users created...."

puts "❗/// SEEDS ENDED ///❗"