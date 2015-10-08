class PostAttachment < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :post
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags , allow_destroy: true
  before_save :assign_tags
 private
  def assign_tags
      self.tags = tags[0].name.split(',').map do |name|
        Tag.find_or_create_by_name(name)
      end
   end
   def previous_post
  self.class.first(:conditions => ["id < ?", id], :order => "id desc")
end

def next_post
  self.class.first(:conditions => ["id > ?", id], :order => "id asc")
end
 end
 