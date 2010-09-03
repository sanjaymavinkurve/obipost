class Photoframe < ActiveRecord::Base
  belongs_to :post

  has_attached_file :photo,
    :storage => :s3, 
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", 
    :path => "/:style/:filename"
end