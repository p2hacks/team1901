class Friend < ApplicationRecord
  validates :id, :userid, :firendid, presence: true
end
