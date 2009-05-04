class Post < ActiveRecord::Base
  acts_as_revisable
  
  has_many :links, :before_add => :revise!
  
  after_revise :revise_links!
  
  private
    def revise_links!
      self.links.each(&:revise!)
    end
end
