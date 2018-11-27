require_relative './appointment.rb'
require_relative './doctor.rb'
require 'pry'

class Patient
  attr_accessor :name, :patient, :appointments

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    # binding.pry
    new_appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    Appointment.all.map do |appointment|
      if appointment.patient == self
        appointment.doctor
      end
    end
  end

end
