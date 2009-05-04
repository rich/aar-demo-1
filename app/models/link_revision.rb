class LinkRevision < ActiveRecord::Base
  acts_as_revision
  
  belongs_to :post, :class_name => "PostRevision"
  
  # don't change our post association unless the post itself
  # is in the middle of changing as well.
  # 
  # this could also have been done in Link using an after_revise
  # callback. I'm doing it here using a normal rails callback because
  # the revision is what I'm modifying so, it makes more sense to look
  # for code changing the revisions here.
  before_create :reassociate_with_post, :if => :post_in_revision?
  
  private
    # grab the newest post *revision* and associate ourselves with that
    def reassociate_with_post
      self.post = self.current_revision.post.find_revision(:previous)
    end
    
    def post_in_revision?
      self.current_revision.post.in_revision?
    end
end