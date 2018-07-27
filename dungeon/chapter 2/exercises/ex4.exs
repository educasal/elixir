defmodule MatchstickFactory do

  @big_box 50
  @medium_box 20
  @small_box 5

  def boxes(matchsticks) do
    big_boxes = div matchsticks, @big_box
    remaining_matchsticks = rem matchsticks, @big_box

    medium_boxes = div remaining_matchsticks, @medium_box
    remaining_matchsticks = rem remaining_matchsticks, @medium_box

    small_boxes = div remaining_matchsticks, @small_box
    remaining_matchsticks = rem remaining_matchsticks, @small_box

    %{
      big: big_boxes,
      medium: medium_boxes,
      small: small_boxes,
      remaining_matchsticks: remaining_matchsticks
    }
  end

end

IO.inspect MatchstickFactory.boxes(98)
IO.inspect MatchstickFactory.boxes(39)
