class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  #Points raised will be capped at 200 chars
  validates :content, presence: true, length: {maximum: 200}

  #Newest points/First Post. Also look at the created date when a post is created and get the newest one first on request.
  default_scope -> { order(created_at: :desc)} 
end
