require 'birthdate_from_pesel/version'

module BirthdateFromPesel
  class Parser
    MONTHS_MAP = {
      '8' => '0',
      '9' => '1',
      '2' => '0',
      '3' => '1',
      '4' => '0',
      '5' => '1',
      '6' => '0',
      '7' => '1'
    }.freeze

    def initialize(pesel)
      @pesel = pesel
    end

    def birthdate
      match = @pesel.match(/\A([0-9]{2})([0-9]{2})([0-9]{2})/)

      if match
        year, month, day = match.captures
        Date.new(full_year(month, year), month(month), day.to_i)
      end
    end

    def full_year(month, year)
      "#{match_century(month)}#{year}".to_i
    end

    def match_century(month)
      case month.chars.first
      when '8', '9'
        18
      when '2', '3'
        20
      when '4', '5'
        21
      when '6', '7'
        22
      else
        19
      end
    end

    def month(month)
      month.chars.tap do |result|
        MONTHS_MAP.each do |k, v|
          result[0] = result[0].tr(k.to_s, v.to_s)
        end
      end.join.to_i
    end
  end
end
