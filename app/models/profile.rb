class Profile < ActiveRecord::Base
  belongs_to :user
  accepts_nested_attributes_for :user

  def self.relationships
  	return [['single','Single'], ['committed','Committed'], ['married','Married'], ['complicated','Complicated']]
  end
end
