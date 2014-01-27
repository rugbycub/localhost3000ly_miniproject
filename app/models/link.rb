class Link < ActiveRecord::Base
	def url=(val)
		write_attribute(:url, val.split("//").last)
	end
end
