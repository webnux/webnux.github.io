module Octopress
  module Date

    # Returns a datetime if the input is a string
    def datetime(date)
      if date.class == String
        date = Time.parse(date)
      end
      date
    end

    # Returns an ordinal date eg 1 juillet 2007 -> 1er juillet 2007
    def ordinalize(date)
      date = datetime(date)
      "#{ordinal(date.strftime('%e').to_i)} " +
      "#{french_month(date.strftime('%-m'))} " +
      "#{date.strftime('%Y')}"
    end

    # Returns an ordinal number. 1 -> 1er.
    def ordinal(number)
      if number.to_i == 1
        "#{number}<span>er</span>"
      else
        "#{number}"
      end
    end

    # Returns a string french month. 1 -> janvier, 2 -> février, etc.
    def french_month(number)
      case number.to_i
      when 1; "janvier"
      when 2; "février"
      when 3; "mars"
      when 4; "avril"
      when 5; "mai"
      when 6; "juin"
      when 7; "juillet"
      when 8; "août"
      when 9; "septembre"
      when 10; "octobre"
      when 11; "novembre"
      when 12; "décembre"
      end
    end

    # Formats date either as ordinal or by given date format
    # Adds %o as ordinal representation of the day
    def format_date(date, format)
      date = datetime(date)
      if format.nil? || format.empty? || format == "ordinal"
        date_formatted = ordinalize(date)
      else
        date_formatted = date.strftime(format)
        date_formatted.gsub!(/%o/, ordinal(date.strftime('%e').to_i))
      end
      date_formatted
    end
    
    # Returns the date-specific liquid attributes
    def liquid_date_attributes
      date_format = self.site.config['date_format']
      date_attributes = {}
      date_attributes['date_formatted']    = format_date(self.data['date'], date_format)    if self.data.has_key?('date')
      date_attributes['updated_formatted'] = format_date(self.data['updated'], date_format) if self.data.has_key?('updated')
      date_attributes
    end

  end
end


module Jekyll

  class Post
    include Octopress::Date

    # Convert this Convertible's data to a Hash suitable for use by Liquid.
    # Overrides the default return data and adds any date-specific liquid attributes
    alias :super_to_liquid :to_liquid
    def to_liquid
      super_to_liquid.deep_merge(liquid_date_attributes)
    end
  end

  class Page
    include Octopress::Date

    # Convert this Convertible's data to a Hash suitable for use by Liquid.
    # Overrides the default return data and adds any date-specific liquid attributes
    alias :super_to_liquid :to_liquid
    def to_liquid
      super_to_liquid.deep_merge(liquid_date_attributes)
    end
  end
end
