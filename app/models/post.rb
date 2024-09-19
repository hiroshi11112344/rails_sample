class Post < ApplicationRecord
  
  validates :user_id, {presence: true}

  def user
    return Uaer.find_by(id: self.user_id)
  end
end
