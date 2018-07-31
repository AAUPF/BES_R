# frozen_string_literal: true

module NewricesHelper
  def self.ranges(a, b, c, d, e, f, g)
    array3 = [{ below_min: { min: a, max: b }, min: { min: b, max: c }, blow_max: { min: c, max: d }, max: { min: d, max: e }, above_max: { min: e, max: f }, extreme: { min: f, max: g }, above_extreme: { min: 0, max: g } }]

    array3
  end

  def self.ranges1(a, b, c, d, e, f, g)
    array3 = [{ below_min: { min: g, max: f }, min: { min: f, max: e }, blow_max: { min: e, max: d }, max: { min: d, max: c }, above_max: { min: c, max: b }, extreme: { min: b, max: a }, above_extreme: { min: 0, max: a } }]

    array3
  end
end
