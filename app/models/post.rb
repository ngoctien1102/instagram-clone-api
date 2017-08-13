# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  caption    :text
#  photo      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  filter     :string
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Post < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates :photo, presence: true
  validates :user,  presence: true

  # uploaders
  mount_uploader :photo, PhotoUploader
end