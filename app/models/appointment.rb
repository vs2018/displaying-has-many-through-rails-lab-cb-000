class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  
  def human_format 
    array = self.appointment_datetime.to_formatted_s(:long).split(" ")
    array[0..1].join(" ") + " " + array[2] + " at " + array[3] 
  end

end
