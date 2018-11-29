require 'pry'

class Patient

attr_accessor :doctor, :date, :patient, :name
@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(self, doctor, date)
end

def appointments
  Appointment.all.select {|appointment| appointment.patient == self}
end

def doctors
  # appointments.map (&:doctor)
  result = []
  Appointment.all.select do |appointment|
    if appointment.patient == self
      result << appointment.doctor
    end
  end
  result
end

end
