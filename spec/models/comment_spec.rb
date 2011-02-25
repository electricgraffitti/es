# == Schema Information
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  blog_id    :integer(4)
#  author     :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Comment do
  pending "add some examples to (or delete) #{__FILE__}"
end
