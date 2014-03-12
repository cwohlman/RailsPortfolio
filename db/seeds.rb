# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
u = User.new(
    username: "admin",
    email: "admin@example.com",
    password: "1234",
    password_confirmation: "1234",
    admin: true
)
u.skip_confirmation!
u.save!



# Test user accounts
(1..5).each do |i|
  u = User.new(
      username: "user#{i}",
      email: "user#{i}@example.com",
      password: "1234",
      password_confirmation: "1234"
  )
  u.skip_confirmation!
  u.save!

  puts "#{i} test users created..." if (i % 5 == 0)
end
# Test recipies
(1..5).each do |i|
  r = Recipe.new(
    user_id: i,
    name: "recipe #{i}"
  )
  r.save!
  (1..5).each do |ii|
    r.ingredients.create!(
      name: "ingredient #{ii}",
      quantity: ii,
      unit: "cup"
    )
  end
end
