class LinkRevision < ActiveRecord::Base
  acts_as_revision
  
  belongs_to :post, :class_name => "PostRevision"
  
  before_create :reassociate_with_post, :if => :post_in_revision?
  
  private
    def reassociate_with_post
      self.post = self.current_revision.post.find_revision(:previous)
    end
    
    def post_in_revision?
      self.current_revision.post.in_revision?
    end
end