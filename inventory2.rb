#this is an iventory program where you enter the item and quantity and it will return your final inventory
#ask for an inventory item
inventory = {"apple" => 3,"banana" => 5,"orange" => 8}
inventory.each do |name, quantity|
	puts "Current inventory has: #{quantity} #{name}" + "s"
end
puts "What is your inventory item?"
#get that item
item_name = gets.chomp.downcase
#ask for the quantity
puts "What is the quantity of your item?"
#get that quantity
item_count = gets.chomp
#update the hash
inventory[item_name] = item_count
#the = is assigning the value to the associated key
#ask if there are more inventory items
puts  "Do you have another item to add? Please answer yes or no."
#get answer
answer = gets.chomp.downcase
#if answer is yes, ask for the inventory item, get item, ask for quantity, get quantity; repeat section (while)
while answer != "no"
	puts "What is your inventory item?"
	item_name = gets.chomp.downcase
	puts "What is the quantity of your item?"
	item_count = gets.chomp
	inventory[item_name] = item_count
	puts  "Do you have another item to add? Please answer yes or no."
	answer = gets.chomp.downcase
end
#if answer is no, output the total items in inventory
if answer == "no"
	puts "Here is your total inventory:"

	#this should out put the item name: item quantity entered
	inventory.each do |name, quantity|
		puts "Current inventory has: #{quantity} #{name}" + "s"
	end
end
