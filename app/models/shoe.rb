class Shoe < ActiveRecord::Base
  has_many :reviews

  def image_path
    path = "#{self.brand}"+"_"+"#{self.model}"
    path.gsub(" ", "-").gsub("\'", "")
  end
end
