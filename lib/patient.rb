class Patient
  attr_accessor :name , :appointments , :doctors
  
  @@all = []
  
  def initialize(name)
   @name = name
   @@all << self
   @doctors=[]
   @appointments = []
  end
  
  def self.all
    @@all
  end
  
  
   def new_appointment(  doctor , date)
    appointment = Appointment.new(date, self , doctor)
    
    @appointments << appointment
    
    appointment.doctor = doctor
    doctor.appointments << appointment
    @doctors << doctor
    appointment
  end
  
end