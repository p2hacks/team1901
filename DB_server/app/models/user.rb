class User < ApplicationRecord
  validates :id, :name, :jender, :hobby, :from, presence: true
end
