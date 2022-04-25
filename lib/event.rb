require 'pry'

class Event
    attr_accessor :start_date, :duration, :title, :attendees
    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration
        @title = title
        @attendees = attendees
    end

    def postpone_24h
        return @start_date += 60*60*24
    end

    def end_date
        return @start_date += @duration
    end

    def is_past?
       return Time.now > @start_date
    end

    def is_future?
        return !self.is_past?
    end

    def is_soon?
        return @start_date < Time.now + 60*30
    end


    def to_s
        puts ">Titre : #{title}"
        puts ">Date de début : #{start_date}"
        puts ">Durée : #{duration}"
        puts "> #{attendees.join(", ")}"
    end
end

binding.pry




