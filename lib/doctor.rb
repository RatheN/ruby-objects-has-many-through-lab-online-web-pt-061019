class Doctor

  attr_accessor :name, :doctor, :patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(self, patient, date)

  end

end
