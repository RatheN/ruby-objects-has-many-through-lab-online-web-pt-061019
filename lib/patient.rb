class Patient

  attr_accessor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select do |a|
      a.patient
    end
  end

  def doctors
    Appointment.all.collect do |a|
      a.doctor
    end
  end
end
