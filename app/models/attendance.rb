class Attendance < ApplicationRecord
    belongs_to :user
	belongs_to :attendee , class_name:"user"

	    after_create :email_send
def email_send
    ConfirmMailer.confirm_email(self).deliver_now
  end



end



