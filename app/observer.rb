class Doctor
	attr_reader :doctorname
	attr_accessor :doctoremail, :doctorspeciality, :doctornumber, :doctorimage
		def initialize(doctorname,  doctoremail, doctorspeciality, doctornumber, doctorimage)
		@doctorname = doctorname
		@doctoremail = doctoremail
		@doctorspeciality = doctorspeciality
		@doctornumber = doctornumber
		@doctorimage = doctorimage
	end
end