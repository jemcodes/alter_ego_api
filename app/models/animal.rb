class Animal < ApplicationRecord
    validates :real_name, presence: true
    validates :alter_ego, presence: true
    validates :environment, presence: true, inclusion: { in: ["Land", "Sea", "Sky"],
                                                        message: "Must be Land, Sea, or Sky"}
end
