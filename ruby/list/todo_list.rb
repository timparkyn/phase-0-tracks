class TodoList

	def initialize(phrase) 
			@get_item = []
			@get_item << phrase
			# @get_item << phrase2

	end


	def add_item(item)

		@get_item << item

	end


	def delete_item(item)

		@get_item.delete(item)

	end



end

# oldList = TodoList.new

newlist = TodoList.new(["do the dishes", "mow the lawn"])

puts newList