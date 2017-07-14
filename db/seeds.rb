class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: open("public/images/test.jpeg"))
    end
  end
end

Product.destroy_all
OrderItem.destroy_all
Order.destroy_all
Seed.begin
