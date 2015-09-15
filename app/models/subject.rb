class Subject < ActiveRecord::Base
    has_many :pages
    # scope :visible, -> { where(visible: true)  }
    # scope :invisible, -> { where(visible: false)  }
    # scope :sorted, -> { where("subjects.position ASC")  }
    # scope :newest_first, -> { order("subjects.created_at DESC")  }
    # scope :search, lambda { |query|
    #     where(["name like ?","%#{query}%"])
    # }

    def self.visible
        where(:visible => true)
    end

    def self.invisible
        where(:visible => false)
    end

    def self.sorted
        order("position ASC")
    end

    def self.newest_first
        order("created_at DESC")
    end

    def self.search(query)
        where("name like ?","%#{query}%")
    end
end
