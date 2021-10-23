class AppointmentMailer < ApplicationMailer
    def new_appointment_mail(appointment)
        @appointment = appointment
        mail(to: appointment.doctor.user.email, subject: "You got a new appointment demand !")
    end
end
