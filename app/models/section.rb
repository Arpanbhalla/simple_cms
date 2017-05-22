# == Schema Information
#
# Table name: sections
#
#  id           :integer          not null, primary key
#  page_id      :integer
#  name         :string
#  position     :integer
#  visible      :boolean          default("false")
#  content_type :string
#  content      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Section < ApplicationRecord
    belongs_to :page
    has_many :section_edits
    has_many :admin_users, :through => :section_edits
end
