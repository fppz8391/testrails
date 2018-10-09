class Item < ApplicationRecord
  validates :model, :maker, :purdate, :rest, presence: true

  belongs_to :user
  belongs_to :article
  validates :rest, :uniqueness => {:scope => :model}

  def restofdays(rest, purdate) #残り期間の計算メソッド
    d = Date.today
    d2 = purdate >> rest*12
    dif = d2 - d
    dif = dif.to_i
    return dif
  end

  def itemchecker(model_arg) #型番から、注文日付が最も古いものを選ぶ
    result  = Item.where(model: model_arg).last
    return result
  end

end
