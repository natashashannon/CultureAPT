class Venue < ActiveRecord::Base
	# has_many :events
	# has_one :org
	# belongs_to :event

	# has_one :org, through: :join_event_model
	# has_many :events, through: :join_event_model

	# class JoinEventModel < ActiveRecord::Base
	# 	belongs_to :event
	# 	belongs_to :org
	# end

	# join address fiels to geocode
	def address
		[name, street, city, state, zip].compact.join(', ')
	end

	# geocoding
	geocoded_by :address
	after_validation :geocode #, :if => :address_changed?

	

	# def self.search search_term
	# 	# return scope unless search_term.present? 
	# 	where(['name LIKE ? OR street LIKE ?', "%#{search_term}%", "%#{search_term}%"])  #column name before LIKE ?, change it to the correct name.
	# end
end
