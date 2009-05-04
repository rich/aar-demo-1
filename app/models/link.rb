class Link < ActiveRecord::Base
  acts_as_revisable
  
  belongs_to :post
end
