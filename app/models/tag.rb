class Tag < ActiveRecord::Base
   has_and_belongs_to_many :post_attachments
   
  validates :name, presence: true,uniqueness: true
end
