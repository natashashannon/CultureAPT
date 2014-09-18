class Event < ActiveRecord::Base

	def self.search search
		# return scope unless search.present? 
		where(['name LIKE ? OR category LIKE ? OR subcategory LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"]) #column name before LIKE ?, change it to the correct name.
	end
	
end
