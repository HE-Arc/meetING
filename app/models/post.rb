class Post < ActiveRecord::Base
  has_attached_file :image,
  :styles => {
  :blur => ""},
  :convert_options => { :blur => "-blur 0x40" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end 
