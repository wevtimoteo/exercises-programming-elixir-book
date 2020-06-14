defmodule ExercisesProgrammingElixir.ASCIIVerifierTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.ASCIIVerifier

  test ".verify/1 checks if a single-quoted string contains only printable ASCII chars" do
    assert(ASCIIVerifier.verify('abc'))
    assert(ASCIIVerifier.verify('-='))
    assert(ASCIIVerifier.verify(' hello~'))

    refute(ASCIIVerifier.verify("abc"))
    refute(ASCIIVerifier.verify('ãbc'))
    refute(ASCIIVerifier.verify('ábíó'))
  end
end
