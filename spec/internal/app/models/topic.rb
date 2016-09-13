class Topic < ActiveRecord::Base
  scope :online, -> { where(online: true) }
end
