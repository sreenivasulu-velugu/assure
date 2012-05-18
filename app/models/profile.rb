class Profile < ActiveRecord::Base

	# validations
	# validates :no_of_kids, :numericality => true

	belongs_to :user
	accepts_nested_attributes_for :user

	def score
		@max_score = 997
		@no_of_items = 18
		@item_score = @max_score/@no_of_items
	end

	def work_score
		score
		partial_score = 0
		(partial_score += @item_score) if self.work.present?
		(partial_score += @item_score) if self.work_place.present?
		(partial_score += @item_score) if self.zip_code_or_city.present?
		return partial_score
	end

	def birthday_score
		score
		partial_score = 0
		(partial_score += @item_score) if self.birthday.present?
		return partial_score

	end

	def relationship_score
		score
		partial_score = 0
		(partial_score += @item_score) if self.relationship_status.present?
		(partial_score += @item_score) if self.related_to.present?
		(partial_score += @item_score) if self.no_of_kids.present?
		return partial_score

	end

	def living_score
		score
		partial_score = 0
		(partial_score += @item_score) if self.house_type.present?
		(partial_score += @item_score) if self.address.present?
		(partial_score += @item_score) if self.house_zip_code.present?
		return partial_score

	end

	def education_score
		score
		partial_score = 0
		(partial_score += @item_score) if self.education.present?
		(partial_score += @item_score) if self.university.present?
		(partial_score += @item_score) if self.degree.present?
		(partial_score += @item_score) if self.area_of_study.present?
		return partial_score
	end

	def car_score
		score
		partial_score = 0
		(partial_score += @item_score) if self.car_type.present?
		(partial_score += @item_score) if self.car_year.present?
		(partial_score += @item_score) if self.car_make.present?
		(partial_score += @item_score) if self.car_model.present?
		return partial_score
	end

	def total_score
		self.work_score + self.birthday_score + self.relationship_score + self.living_score + self.education_score + self.car_score
	end

	def profile_completion
		total_columns = Profile.columns.count - 4
		completed = 0
		Profile.columns.each do |c|
			(completed += 1) if self.try(c.name.to_sym).present?
		end
		filled_columns = completed - 4 # removing 4 columns because not filled by user

		return (filled_columns.to_f/total_columns.to_f)*100
	end

end
