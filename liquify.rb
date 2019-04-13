# frozen_string_literal: true

# liquify / https://github.com/jasoncomes/Liquify-Liquid-Filter
# Parses variables into Liquid syntax. Helpful for converting Liquid variables in template front matter.
# {{ string | liquify }}

module LiquidFilter
  def liquify(input)
    Liquid::Template.parse(input).render(@context)
  end
end

Liquid::Template.register_filter(LiquidFilter)
