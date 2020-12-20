class InformationMeasure
  include ActiveModel::Model

  attr_accessor :image, :content, :information_id, :measure_id, :general_id

  with_options presence: true do
    validates :content
    validates :information_id
    validates :general_id
    validates :image
  end

  def save
    measure = Measure.create(content: content, information_id: information_id, image: image)
    general_id.each do |general_id|
      if general_id != ""
        MeasureGeneral.create(measure_id: measure.id, general_id: general_id)
      end
    end
  end
end
