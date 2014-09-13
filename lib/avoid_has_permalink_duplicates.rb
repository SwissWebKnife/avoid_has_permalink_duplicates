require "avoid_has_permalink_duplicates/version"
require "active_support"
require "active_record"

module AvoidHasPermalinkDuplicates
	extend ActiveSupport::Concern

	module ClassMethods
		def avoid_has_permalink_duplicates
			class_eval do
				before_create {
			  		self.generate_permalink!
			      	self.permalink += "-#{SecureRandom.hex(3)}" if self.class.exists?(permalink: self.permalink)
			  	}
			end
		end
	end
end

ActiveRecord::Base.send :include, AvoidHasPermalinkDuplicates