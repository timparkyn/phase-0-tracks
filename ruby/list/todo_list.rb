class TodoList

	attr_reader  :list

	def initialize(phrase) 

			@list = phrase
			
	end


	def add_item(item)

		@list << item

	end


	def delete_item(item)

		@list.delete(item)

	end

	def get_item(index)
		@list[index]

	end

	def get_items
		@list

	end




end

# # oldList = TodoList.new
# newlist= ""

#newlist = TodoList.new(["do the dishes2", "mow the lawn2"])

#p newlist

# puts get_items[0]
