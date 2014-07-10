# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  course_number :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  instructor_id :integer
#

class Course < ActiveRecord::Base
  
  has_and_belongs_to_many :students
  belongs_to :instructors
  has_many :assignments
  has_many :documents, :as => :attachable
  
  def self.courses_for_user(user)
    user.courses
  end
  
end
