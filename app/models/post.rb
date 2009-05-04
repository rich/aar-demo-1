class Post < ActiveRecord::Base
  acts_as_revisable
  
  # any time a link is added we should trigger a revision
  has_many :links, :before_add => :revise!
  
  # after we've been revised let's trigger the revision of all our links
  after_revise :revise_links!
  
  private
    def revise_links!
      self.links.each(&:revise!)
    end
end
