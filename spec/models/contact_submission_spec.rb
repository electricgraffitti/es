# == Schema Information
#
# Table name: contact_submissions
#
#  id              :integer(4)      not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  comments        :text
#  inquiry_type    :string(255)
#  teacher_subject :string(255)
#  teacher_grade   :string(255)
#  interest        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe ContactSubmission do
  pending "add some examples to (or delete) #{__FILE__}"
end
