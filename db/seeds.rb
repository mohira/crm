Company.create(
  name: "Google",
  url: "http://www.google.co.jp/",
  address: "東京都港区赤坂2-14-27",
  image_url: "http://images.dailytech.com/nimage/G_is_For_Google_New_Logo_Thumb.png"
  )
Company.create(
  name: "Apple",
  url: "http://www.apple.co.jp/",
  address: "東京都新宿区西新宿6-15-1",
  image_url: "http://kaorich.com/wp/wp-content/uploads/2014/02/slooProImg_20140202085402.jpg"
  )
Company.create(
  name: "Amazon",
  url: "http://www.amazon.co.jp/",
  address: "東京都港区赤坂9-7-1",
  image_url: "http://cdn-img.easyicon.net/png/11342/1134224.gif"
  )

Post.create(position_name: "社長")
Post.create(position_name: "部長")
Post.create(position_name: "課長")
Post.create(position_name: "平社員")

User.create(family_name: "八幡平", given_name: "太郎", email: "hachiman@taro.com", password: "hachimantaro", image_url: "http://www.hachimantaishi.com/shokokai/taira/gallery/gallery/63.jpg")
User.create(family_name: "安比", given_name: "花子", email: "appi@hanako.com", password: "appihanako", image_url: "http://www.appi.co.jp/wp/wp-content/uploads/2014/04/gr_top_03.jpg")
User.create(family_name: "厚切り", given_name: "ダンソン", email: "atsugiri@danson.com", password: "atsugiridanson", image_url: "http://www.appi.co.jp/wp/wp-content/uploads/2014/04/icecream.jpg")

300.times do |comment|
  Comment.create(body: "#{comment}回目のコメントです。",
                 customer_id: rand(100) + 1,
                 user_id: rand(3) + 1)
end


100.times do |index|
  Customer.create(
    family_name: Faker::Japanese::Name.last_name,
    given_name: Faker::Japanese::Name.first_name,
    email: "customer_#{index}@sparta.com",
    company_id: rand(3) + 1,
    post_id: rand(4) + 1,
    image_url: "http://www.hachimantaishi.com/shokokai/taira/gallery/gallery/63.jpg"
  )
end
