class Appointment
  attr_accessor :doctor, :date, :patient
  @@all = []
  
  
  def initialize(date, doctor, patient)
    self.doctor = doctor
    self.date = date
    self.patient = patient
    @@all << self
  end
  
  def self.all
    @@all
  end
  
   def patients
    self.patient
  end
  
   def doctors
    self.doctor
  end
  
end