class AddDoctorToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :doctor, foreign_key: true
  end
end
