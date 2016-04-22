class SpecialNumber < ActiveRecord::Base

	def self.generate
		tempNumber = SpecialNumber.new(:special => rand(100))
		tempNumber.save
	end

	def self.log
		File.open("./specialNumbers.txt", "a+"){|f| f << SpecialNumber.all.count }
	end
end
