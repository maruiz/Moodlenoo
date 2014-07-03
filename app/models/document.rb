# == Schema Information
#
# Table name: documents
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  attachable_id   :integer
#  attachable_type :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Document < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
end
