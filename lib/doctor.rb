require_relative './patient.rb'
require_relative './appointment.rb'
require 'pry'

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    Appointment.all.map do |appointment|
      if appointment.doctor == self
        appointment.patient
      end
      # binding.pry
    end
  end

end
