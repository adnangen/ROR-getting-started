class User < ApplicationRecord
  has_secure_password
  do_not_validate_attachment_file_type :image

  has_attached_file :image, :default_url => "/images/:style/missing.png", validate_media_type: false

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => "/images/:style/missing.png", validate_media_type: false
  
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
