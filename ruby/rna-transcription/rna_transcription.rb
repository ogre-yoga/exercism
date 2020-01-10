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


=begin
  
COMMUNITY SOLUTIONS

https://exercism.io/tracks/ruby/exercises/rna-transcription/solutions/9c29e0dafef7cba71a4b466f

class Complement

  DNA = 'CATG'
  RNA = 'GUAC'#amole

  def self.of_dna(nucleotides)
    nucleotides.tr(DNA, RNA)
  end

  def self.of_rna(nucleotides)
    nucleotides.tr(RNA, DNA)
  end

end

https://exercism.io/tracks/ruby/exercises/rna-transcription/solutions/099bbf6ffb9b7dae637ba16f

class Complement
  
  def self.of_dna(strand)
    strand.tr('GCTA', 'CGAU')
  end

  def self.of_rna(strand)
    strand.tr('CGAU', 'GCTA')
  end

end
  
=end
