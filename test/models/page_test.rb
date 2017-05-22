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

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
