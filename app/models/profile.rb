class Profile < ActiveRecord::Base

	# validations
	# validates :no_of_kids, :numericality => true

	belongs_to :user
	accepts_nested_attributes_for :user

	def self.relationships
		return [['single','Single'], ['committed','Committed'], ['married','Married'], ['complicated','Complicated']]
	end
end
