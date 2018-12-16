class Doctor

attr_accessor

@@all =[]

def initialize(name)
  @name = name
  @@all << name
end

def self.all
  @@all
end

def new_appointment(patient, date)
  Appointment.new
  doctor.name = self
end

def appointments
  Appointment.all.select do |appointment|
    appointment.doctor == self
  end
end

def patients
  self.appointments.map do |appointment|
    appointment.patient
  end
end
