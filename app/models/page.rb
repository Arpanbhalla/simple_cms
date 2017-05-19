# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  subject_id :integer
#  name       :string
#  permalink  :string
#  position   :integer
#  visible    :boolean          default("false")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Page < ApplicationRecord
    belongs_to :subject
    has_many :sections
    has_and_belongs_to_many :admin_users
end
