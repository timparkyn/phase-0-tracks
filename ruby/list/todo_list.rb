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