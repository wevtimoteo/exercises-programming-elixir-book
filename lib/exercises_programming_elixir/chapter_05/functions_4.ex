defmodule ExercisesProgrammingElixir.Prefixer do
  def prefix do
    fn
      first -> fn
        second -> "#{first} #{second}"
      end
    end
  end
end
