defmodule RockPaperScissorsLizardSpock do
  @moduledoc """
  Documentation for RockPaperScissorsLizardSpock.
  """


  @win_map %{
      "rock" => ["scissors", "lizard"],
      "paper" => ["rock", "spock"],
      "scissors" => ["paper", "lizard"],
      "lizard" => ["spock", "paper"],
      "spock" => ["rock", "scissors"]

      }

  @doc """
  a game of rock paper scissors lizard Spock
  Scissors cuts paper
  Paper covers rock
  Rock crushes lizard
  Lizard poisons Spock

  Spock smashes scissors
  Scissors decapitates lizard
  Lizard eats paper
  Paper disproves Spock

  Spock vaporizes rock
  and , as it always has
  Rock crushes scissors


  """
  def main(argv) do
    case argv do
      [] ->
        IO.puts "come on, play something!"
      _ ->
        player_move = List.first(argv)
        {result, computer_move} = play player_move
        IO.puts "#{result}, computer played: #{computer_move}"
      end
  end


  defp get_npc_move do
    Enum.random ["rock", "paper", "scissors", "lizard", "spock"]
  end

  defp play(player_move) do
    npc_move = get_npc_move()
    
    @win_map[player_move]
    |> Enum.member?(npc_move)
    |> case do
      :true -> {"you won", npc_move}
      :false -> {"you lose", npc_move}
    end
  end
end
