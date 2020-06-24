defmodule ExercisesProgrammingElixir.CapitalizerTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.Capitalizer

  test ".capitalize receives a string and returns sentence capitalized" do
    assert(Capitalizer.capitalize_sentences("oh. a DOG. woof. ") == "Oh. A dog. Woof. ")
    assert(Capitalizer.capitalize_sentences("capitalize thiS. AND fix some Upcase chars") == "Capitalize this. And fix some upcase chars")
  end
end

