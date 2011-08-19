# == Schema Information
#
# Table name: blogs
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  body             :text
#  created_at       :datetime
#  updated_at       :datetime
#  author           :string(255)
#  author_title     :string(255)
#  meta_keywords    :text
#  meta_description :text
#

require 'spec_helper'

describe Blog do
  pending "add some examples to (or delete) #{__FILE__}"
end
