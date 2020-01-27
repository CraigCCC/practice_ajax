namespace :dev do
  task fake_data: :environment do
    users = []
    5.times do
      users << User.create!(email: Faker::Internet.email, password: '12345678')
    end

    20.times do
      Post.create!(content: Faker::Lorem.paragraph, user_id: users.sample.id)
    end
  end
end
