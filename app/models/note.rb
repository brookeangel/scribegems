class Note < ActiveRecord::Base
  validates :ta_name, :body, :scribe_name, presence: true
end
