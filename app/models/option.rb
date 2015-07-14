class Option < ActiveRecord::Base
  default_scope { order('id DESC') }
  belongs_to :user
end
