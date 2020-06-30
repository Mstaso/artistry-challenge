class Artistinstrument < ApplicationRecord
    belongs_to :artist
    belongs_to :instrument

    def instrument_id=(id)
        self.instrument = Instrument.find_by(id:id)
    end

    def instrument_id
        self.instrument ? self.instrument.id : nil
    end
end
