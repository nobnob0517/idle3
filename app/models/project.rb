class Project < ActiveRecord::Base
  belongs_to :user

  acts_as_taggable_on :labels
  acts_as_taggable
end