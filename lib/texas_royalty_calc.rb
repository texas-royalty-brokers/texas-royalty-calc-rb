# Helpers for estimating oil and gas royalty payments.
# Texas Royalty Brokers: https://texasroyaltybrokers.com/
module TexasRoyaltyCalc
  def self.decimal_interest(net_mineral_acres, unit_acres, royalty_rate)
    return 0.0 if unit_acres <= 0
    net_mineral_acres.to_f / unit_acres * royalty_rate
  end

  def self.monthly_payment(gross_value, decimal_interest, deductions)
    p = gross_value * decimal_interest - deductions
    p < 0 ? 0.0 : p
  end
end
