class Photo < ActiveRecord::Base
  attr_accessible :name, :attachment
  has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  belongs_to :user
  validates_presence_of :name, :user_id
   validates_numericality_of :user_id
end
