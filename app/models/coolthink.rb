class Coolthink < ActiveRecord::Base
  default_scope  { order(created_at: :desc) }
  attr_accessible :content, :userid
  belongs_to :user
 
  validates :content, length: { maximum: 150 }
end
