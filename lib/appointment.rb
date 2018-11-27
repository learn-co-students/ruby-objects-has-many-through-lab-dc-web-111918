require_relative './doctor.rb'
require_relative './patient.rb'


class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date, @patient, @doctor = date, patient, doctor
    self.class.all << self
  end

  def self.all
    @@all
  end

end
