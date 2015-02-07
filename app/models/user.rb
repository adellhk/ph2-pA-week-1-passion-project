class User < ActiveRecord::Base
  has_many :reviews, class_name: "User", foreign_key: "atuhor_id"
  belongs_to :foot_profile

  def all_comments
    # active record scopes
  end

  def upvote_score
    # Vote.where()
  end
  # users.password_hash in the database is a :string

    def password
      @password ||= BCrypt::Password.new(password_hash)
    end

    def password=(new_password)
      @password = BCrypt::Password.create(new_password)
      self.password_hash = @password
    end

    def authenticate(password)
      self.password == password
    end
end
