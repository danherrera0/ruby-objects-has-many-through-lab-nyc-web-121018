class Patient

attr_accessor :appointment,:doctor
attr_reader :name

@@all =[]

def initialize(name)
  @name = name
  @appointment = nil
  @doctor = nil
  @@all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
  appt = Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select do |appt|
    appt.patient == self
  end
end

def doctors
  self.appointments.map do |appt|
    appt.doctor
  end
end

end
