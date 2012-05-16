module ProfileHelper

	def relationships
		return [['single','Single'], ['committed','Committed'], ['married','Married'], ['complicated','Complicated']]
	end
	
	def house_types
		[['own','own'], ['rent','rent']]
	end

	def car_types
		[['own','own'], ['rent','rent'], ['lease','lease']]
	end

end
