class Artist < ApplicationRecord
    has_many :artistintruments
    has_many :instruments, through: :artistintruments

    validates :name, presence: :true

    validates :title, uniqueness: :true 

    def instrument_id=(id)
        artistintruments.instrument = Instrument.find_by(id:id)
    end

    def instrument_id
        self.instrument_id ? self.instrument.id : nil
    end
    


end
