require 'pry'
class Doctor
  attr_accessor :name, :appointments
  @@all = []
  
  def initialize(name)
    self.appointments = []
    self.name = name
    @@all << self
  end
  
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, self, patient)
    # self.appointments.last
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patients
    end
  end
  
  def self.all
    @@all 
  end
end

