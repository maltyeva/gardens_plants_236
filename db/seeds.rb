Plant.destroy_all if Rails.env.development?
Garden.destroy_all if Rails.env.development?

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

10.times do
  Plant.create!(name: Faker::Dessert.variety, image_url: Faker::LoremFlickr.image, garden: Garden.all.sample)
end


puts "Created #{Garden.count} gardens"
