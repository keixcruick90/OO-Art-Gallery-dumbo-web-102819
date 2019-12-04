require_relative '../config/environment.rb'

a1 = Artist.new("Juno", 19)
a2 = Artist.new("Vela", 36)

g1 = Gallery.new("Mizar's Palace", "Space")
g2 = Gallery.new("Goldwood", "Etheria")
g3 = Gallery.new("SS Anubis", "Ocean")

p1 = a1.create_painting("Mizar", 10000, a1, g1)
p1 = a1.create_painting("Ant Eater", 500, a1, g1)
p1 = a1.create_painting("Tribal", 900000, a1, g2)
p1 = a1.create_painting("Lupus", 628000880, a1, g3)
p1 = a2.create_painting("Tri-Rocket Launcher", 10891596968, a2, g1)
p1 = a2.create_painting("Sniper Rifle", 20004000500, a2, g1)
p1 = a2.create_painting("Magnus", 7776689646858, a2, g2)
p1 = a2.create_painting("Thorax", 628196472, a2, g2)
p1 = a2.create_painting("Battle Cruiser", 15680204626803, a2, g3)
p1 = a2.create_painting("Invincibility", 99999999999999999999, a2, g3)

binding.pry

puts "Bob Ross rules."
