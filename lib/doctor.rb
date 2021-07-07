require "pry"
class Doctor 
  attr_accessor :name, :appointments
  @@all = [] 
  def initialize(name) 
    self.name = name
    @@all << self
    self.appointments = []
  end 
  
  def new_appointment(patient, date ) 
    Appointment.new(date, patient, self).tap {|apt| self.appointments << apt}
  end 
  
  def patients 
    #binding.pry
    self.appointments.map {|apt| apt.patient}.uniq
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 