# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  course_id  :integer
#  student_id :integer
#

class Assignment < ActiveRecord::Base
  belongs_to :courses
  belongs_to :students
  has_many :submissions
  has_many :documents, :as => :attachable
end
