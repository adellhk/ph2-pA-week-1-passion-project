class Shoe < ActiveRecord::Base
  has_many :comments

  def image_path
    # composite attribute for shoe image based on brand and model naming convention
  end
end
