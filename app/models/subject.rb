# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  name       :string
#  position   :integer
#  visible    :boolean          default("false")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subject < ApplicationRecord
    has_many :pages
end
