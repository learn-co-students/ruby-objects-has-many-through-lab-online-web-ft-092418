class Appointment
  attr_accessor :patient , :date , :doctor
  
  @@all = []
  
  def initialize( date , patient , doctor)
   @doctor = doctor
   @@all << self
   @date = date
   @patient = patient
  end
  
  def self.all
    @@all
  end
  
end