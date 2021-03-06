defmodule Cards do

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Diamonds", "Spades", "Clubs", "Hearts"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, hand) do
    Enum.member?(deck, hand)
  end

  def deal(deck, hand_size) do
    { hand, _ } = Enum.split(shuffle(deck), hand_size)
    hand
  end


end
