# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#
class User < ActiveRecord::Base
  attr_accessible :name, :email
 # email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #should work but it is failing
 #       in the begining and ending of the expression \A.....\z
   email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i
  
  validates :name, :presence    => true,
                   :length      => {:maximum => 50}
                   
  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
end
