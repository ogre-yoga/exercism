class ResistorColorDuo

  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(band_colors)
    band_colors.map{|color| COLORS.index(color)}.slice(0,2).join.to_i
  end

end