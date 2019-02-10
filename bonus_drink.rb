class BonusDrink
  def self.total_count_for(amount)
    # 購入した本数＝飲める本数
    total = amount
    # 最初に購入した分で交換できるBonusDrink
    bonus = amount / 3
    # BonusDrinkを飲める本数に加算
    total += bonus
    # 交換せず余った瓶
    remainder = amount % 3
    # BonusDrinkと余った瓶が３本以上なら更に交換可能
    empty_bottle = bonus + remainder
    while empty_bottle >= 3 do
      bonus = empty_bottle / 3
      remainder = empty_bottle % 3
      empty_bottle = bonus + remainder
      # 新たなBonusDrinkを飲める本数に加算
      total += bonus
    end
    total
  end
end