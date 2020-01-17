class HighScores

  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end

end

=begin
  
Community solutions

Ref: https://exercism.io/tracks/ruby/exercises/high-scores/solutions/26a497ce1eda42bdb6bf6fa2c0eb8bc7

class HighScores

    attr_reader :scores, :latest, :highest, :top, :report

    def initialize(scores)
        @scores  = scores
        @latest  = scores.last
        @highest = scores.max
        @top     = scores.sort.reverse.first(3)
        @report  = "Your latest score was #{latest}. #{personal_best_message}"
    end

    private

    def personal_best_message
        latest == highest ? "That's your personal best!" : "That's #{highest - latest} short of your personal best!"
    end
end
  
end
