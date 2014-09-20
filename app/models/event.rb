class Event < ActiveRecord::Base

	def self.search search
		# return scope unless search.present? 
		where(['name LIKE ? OR category LIKE ? OR subcategory LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"]) #column name before LIKE ?, change it to the correct name.
	end

	def self.findDates startDate, endDate
		# where(['start_date Like ? AND end_Date LIKE ?', "%#{startDate}%", "%#{endDate}%" ])
		# where(['start_date >= ? AND end_date <= ?', "%#{startDate}%", "%#{endDate}%"])
		# where(['? <= start_date AND ? >= end_date', "%#{startDate}%", "%#{endDate}%"])
	end

	def self.findCategory categorySearch1, categorySearch2
		where(['category Like ? OR category Like ?', "%#{categorySearch1}%" , "%#{categorySearch2}%"])
	end
	
end
