class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |a|
      a.patient == self
    end
  end

  def doctors
    self.appointments.collect do |a|
      a.doctor
    end
  end

end
