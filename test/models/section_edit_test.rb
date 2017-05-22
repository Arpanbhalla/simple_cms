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

require 'test_helper'

class SectionEditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
