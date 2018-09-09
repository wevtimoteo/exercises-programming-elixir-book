defmodule MyList do
  def span(from, to) when from == to, do: [to]
  def span(from, to) when from < to do
    [from | span(from + 1, to)]
  end
  def span(from, to) when from > to do
    [from | span(from - 1, to)]
  end
end

IO.inspect MyList.span(4, 12)
IO.inspect MyList.span(5, 5)
IO.inspect MyList.span(12, 4)
