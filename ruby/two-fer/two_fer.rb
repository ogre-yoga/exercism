class TwoFer
	def self.two_fer( name="none" ) #default value for arg
		if name == "Alice"
			"One for Alice, one for me."
		elsif name == "Bob"
			"One for Bob, one for me."
		elsif name ==  "none"
			"One for you, one for me."
		end	
	end
end