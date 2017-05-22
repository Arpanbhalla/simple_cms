# == Schema Information
#
# Table name: section_edits
#
#  id            :integer          not null, primary key
#  admin_user_id :integer
#  section_id    :integer
#  summary       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class SectionEdit < ApplicationRecord
    belongs_to :admin_user
    belongs_to :section
end
