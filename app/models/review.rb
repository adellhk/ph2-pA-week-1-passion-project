class Review < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :shoe
  has_many :votes

end