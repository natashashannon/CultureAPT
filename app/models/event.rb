class Event < ActiveRecord::Base
	# belongs_to :venue, :org
	belongs_to :org
	belongs_to :venue

	# has_one :org
	# has_many :venues

	# # has_many :join_event_model


	# class JoinEventModel < ActiveRecord::Base
	# 	belongs_to :venue
	# 	belongs_to :org
	# 	belongs_to :event
	# end


	def self.search search
		# return scope unless search.present? 
		where(['name LIKE ? OR category LIKE ? OR subcategory LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"]) #column name before LIKE ?, change it to the correct name.
	end
end
