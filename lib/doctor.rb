class Doctor 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
    def appointments
    Appointment.all.select{ |app| app.doctor == self }
  end 
  
  def patients 
    appointments.collect{ |app| app.patient }
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end 
end 