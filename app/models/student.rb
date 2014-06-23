# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  university_id :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Student < ActiveRecord::Base
end
