require "pry"

class Patient
  
  attr_accessor :name, :appointments
  @@all = []
  def initialize(name)
    self.name = name
    self.appointments = [] 
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    #binding.pry
    Appointment.new(date, self, doctor).tap {|apt| self.appointments << apt}
  end 
  
  def doctors 
    self.appointments.map {|apt| apt.doctor}.uniq
  end 
  
  def self.all 
    @@all
  end 
  
end 