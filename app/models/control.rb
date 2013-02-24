class Control < ActiveRecord::Base
  attr_accessible :activity_date, :berhasil, :category, :user_id

  belongs_to :user
end
