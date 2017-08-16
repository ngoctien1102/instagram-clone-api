# == Schema Information
#
# Table name: notifications
#
#  id              :integer          not null, primary key
#  actor_id        :integer
#  recipient_id    :integer
#  read_at         :datetime
#  notifiable_id   :integer
#  notifiable_type :string
#  pristine        :boolean          default(TRUE)
#  action_type     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_notifications_on_recipient_id  (recipient_id)
#

class Notification < ApplicationRecord
  belongs_to :actor, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
  belongs_to :notifiable, polymorphic: true
end
