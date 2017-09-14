class Subject < ApplicationRecord

    # belongs_to :user
    # belongs_to :users, class_name: 'users', foreign_key: 'userid'
    belongs_to :user, :foreign_key => 'userid'
end
