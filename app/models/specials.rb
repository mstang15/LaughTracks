class Special < ActiveRecord::Base
    validates_presence_of :name
    belongs_to :comedian

    def self.average_run_length
      average(:length)
    end

    def self.comedian_id
      pluck(:comedian_id)
    end

end
