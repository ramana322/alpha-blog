class NewUserNotifyJob < ApplicationJob
  queue_as :default

  def perform(user)
  	UserMailer.perform_later(@user)
    # Do something later
  end
end
