class Page < ActiveRecord::Base
    belongs_to :subject
    has_many :sections
    has_and_belongs_to_many :editors, :class_name =>"AdminUser"

    def self.sorted
        order("position ASC")
    end
end
