require 'pry'

class Doctor
  attr_accessor :name
  attr_reader :appointments, :patients
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient_name,date)
    Appointment.new(date, patient_name, self)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
    # binding.pry
  end
  
  def patients
    # binding.pry
    appointments = self.appointments.select do |appointment|
      appointment.doctor == self
    end
    appointments.collect do |appointment|
      appointment.patient
    end
  end
end