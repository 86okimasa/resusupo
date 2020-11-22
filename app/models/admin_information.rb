class AdminInformation
  include ActiveModel::Model
  attr_accessor :information_id, :admin_id, :shop_name,:phone_number,:prefecture_id, :municipalities, :address, :building, :access, :business_hour, :holiday, :budget, :seat_number, :tobacco_id, :child_id, :remarks, :information_id, :wi_fi_id, :cashless_id, :genre_id, :image

  with_options presence: true do
    validates :shop_name
    validates :prefecture_id, numericality: { other_than: 0, message: "お届け先の都道府県を選択してください" }
    validates :municipalities
    validates :address
    validates :phone_number, numericality: { only_integer: true, message: "電話番号はハイフン無しで入力" }
    validates :access
    validates :business_hour
    validates :holiday
    validates :budget
    validates :seat_number
    validates :tobacco_id, numericality: { other_than: 0, message: "いずれかを選択してください" }
    validates :child_id,  numericality: { other_than: 0, message: "いずれかを選択してください" }
    validates :admin_id
    validates :information_id
    validates :wi_fi_id
    validates :cashless_id
    validates :genre_id
    validates :image
  end

  def save
    information = Information.create(admin_id: admin_id, image: image, shop_name: shop_name, phone_number: phone_number, prefecture_id: prefecture_id, municipalities: municipalities, address: address, building: building, access: access, business_hour: business_hour, holiday: holiday, budget: budget, seat_number: seat_number, tobacco_id: tobacco_id, child_id: child_id, remarks: remarks)
    genre_id.each do |genre_id|
      if genre_id != ""
        InformationGenre.create(information_id: information.id, genre_id: genre_id)
      end
    end
    cashless_id.each do |cashless_id|
      if cashless_id != ""
        InformationCashless.create(information_id: information.id, cashless_id: cashless_id)
      end
    end
    wi_fi_id.each do |wi_fi_id|
      if wi_fi_id != ""
        InformationWiFi.create(information_id: information.id, wi_fi_id: wi_fi_id)
      end
    end
  end
end
