class PostRevision < ActiveRecord::Base
  acts_as_revision
  
  has_many :links, :class_name => "LinkRevision", :foreign_key => "post_id"
end