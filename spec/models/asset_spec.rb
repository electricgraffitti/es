# == Schema Information
#
# Table name: assets
#
#  id                      :integer(4)      not null, primary key
#  teacher_id              :integer(4)
#  student_id              :integer(4)
#  blog_id                 :integer(4)
#  created_at              :datetime
#  updated_at              :datetime
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer(4)
#  attachment_updated_at   :datetime
#

require 'spec_helper'

describe Asset do
  pending "add some examples to (or delete) #{__FILE__}"
end
