class Account < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user_id
  
  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }
                      
  validates :user_id, :presence => true,
                      :uniqueness => true
end
 