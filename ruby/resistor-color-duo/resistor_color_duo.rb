class ResistorColorDuo

  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(band_colors)
    band_colors = band_colors.slice(0,2)
    band_value = Array.new

    band_colors.each do |color|
      band_value.push(COLORS.index(color))
    end

    band_value.join.to_i
  end

end
