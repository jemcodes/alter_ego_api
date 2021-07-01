class Animal < ApplicationRecord
    validates :real_name, presence: true
    validates :alter_ego, presence: true
    validates :environment, presence: true
end
