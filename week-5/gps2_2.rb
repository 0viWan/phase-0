
def create_list
	puts "What would you like to name the list?"
	name = gets.chomp

	list = {"name" => name, "items" => Array.new}

end
def add_list_item(store)
	print "What is the name of the item?"
	item_name = gets.chomp
	print "How many are you getting?"
	quantity = gets.chomp

	store["items"] << {"name" => item_name, "quantity" => quantity}
end

my_list = create_list
add_list_item(my_list)
def print_list(my_list)
	puts "List: #{my_list['name']}"
	my_list["items"].each do |item|
		puts "Item: " + item['name']
		puts "Quantity: " + item['quantity']
	end
end

print_list(my_list)

def delete_item(my_list)
	print "What would you like to remove from the list?"
	item_name = gets.chomp
	my_list["items"].each_with_index do |item,index|
	if item_name == item['name']
		my_list['items'].delete_at index
	return
end
end

end
delete_item(my_list)
print_list(my_list)