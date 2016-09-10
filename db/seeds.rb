Company.create(name: "YES高須クリニック", url: "http://www.takasu.co.jp/", address: "東京都港区赤坂2-14-27")
Company.create(name: "株式会社ノーウォール", url: "http://nowall.co.jp/", address: "東京都新宿区西新宿6-15-1")
Company.create(name: "ヤフー株式会社", url: "http://www.yahoo.co.jp/", address: "東京都港区赤坂9-7-1")

Post.create(position_name: "社長")
Post.create(position_name: "部長")
Post.create(position_name: "課長")
Post.create(position_name: "平社員")

User.create(family_name: "hoge", given_name: "jojo", email: "hoge@hoge.com", password: "999999")
User.create(family_name: "八幡平", given_name: "太郎", email: "hachiman@taro.com", password: "hachimantaro")
User.create(family_name: "安比", given_name: "花子", email: "appi@hanako.com", password: "appihanako")
User.create(family_name: "厚切り", given_name: "ダンソン", email: "atsugiri@danson.com", password: "atsugiridanson")

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
    post_id: rand(4) + 1
  )
end