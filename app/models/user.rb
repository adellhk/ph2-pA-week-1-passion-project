class User < ActiveRecord::Base
  has_many :reviews, class_name: "User", foreign_key: "atuhor_id"
  belongs_to :foot_profile

  def all_comments
    # active record scopes
  end

  def upvote_score
    # Vote.where()
  end
end
