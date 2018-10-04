require 'pry'
class Patient
  attr_accessor :name, :appointment, :doctor
  @@all = []
  
  def initialize(name)
    self.name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
     Appointment.new(date, doctor, self)
  end
  
  def appointments
   Appointment.all.select {|apoint| apoint.patient == self}
  end
  
  def self.all 
    @@all
  end
  
  def doctors
    Appointment.all.map {|apoint| apoint.doctor}
  end
  
  
end