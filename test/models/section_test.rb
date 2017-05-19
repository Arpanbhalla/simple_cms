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

require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
