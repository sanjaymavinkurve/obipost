class Photoframe < ActiveRecord::Base
  belongs_to :post

  has_attached_file :photo
end