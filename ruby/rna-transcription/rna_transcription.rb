class Complement
  DNA = %w[G C T A]
  RNA = %w[C G A U]

  def self.of_dna(dna_sequence)
    dna_sequence = dna_sequence.split("")
    rna_sequence = []

    dna_sequence.each do |dna|
      rna_sequence.push(RNA.at(DNA.index(dna)))
    end

    rna_sequence.join

  end
end
