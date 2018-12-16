class Doctor

attr_accessor :appointment
attr_reader :name

@@all =[]

def initialize(name)
  @name = name
  @appointment =nil
  @@all << self
end

def self.all
  @@all
end

def new_appointment(patient, date)
  appt = Appointment.new(date, patient, self)
  # @@all << appointment
  # doctor.name = self
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



end
