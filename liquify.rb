# frozen_string_literal: true

# liquify / https://www.notion.so/highereducation/liquify-22215878f7d842028dacafa012703958
# Parses variables into Liquid syntax. Helpful for converting Liquid variables in template front matter.
# {{ string | liquify }}

module LiquidFilter
  def liquify(input)
    Liquid::Template.parse(input).render(@context)
  end
end

Liquid::Template.register_filter(LiquidFilter)
