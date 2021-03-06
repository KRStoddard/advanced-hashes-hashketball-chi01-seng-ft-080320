# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end
require './hashketball.rb'
def num_points_scored(input)
  
  score = ""
  game_hash.each do |team, extra_info|
    extra_info[:players].each do |member|
      if member[:player_name] == input
        score = member[:points]
      end
    end 
  end 
  score 
 end 
 
 def shoe_size(input)
   shoesize = ""
   game_hash.each do |team, extra_info|
     extra_info[:players].each do |member|
       if member[:player_name] == input
         shoesize = member[:shoe]
       end
     end
   end
   shoesize 
 end 
 
 def team_colors(teamname)
   game_hash.each do |team, extra_info|
     if extra_info[:team_name] == teamname
       return extra_info[:colors]
     end
   end
 end 
 
 def team_names
   name_array = []
   game_hash.each do |team, extra_info|
     name_array << extra_info[:team_name]
   end
   name_array
 end 
 
 def player_numbers(teamname)
   number_array = []
   game_hash.each do |team, extra_info|
     if extra_info[:team_name] == teamname
       extra_info[:players].each do |player, info|
         number_array << player[:number]
       end
     end
   end
   number_array
 end 
 
 def player_stats(player)
   return_info = {}
   game_hash.each do |team, extra_info|
    extra_info[:players].each do |member|
      if member[:player_name] == player
        return_info = member
      end
    end 
  end 
  return_info 
 end 
 
 def big_shoe_rebounds
   size = 0 
   points = ""
   game_hash.each do |team, extra_info|
     extra_info[:players].each do |member|
       if member[:shoe] > size 
         size = member[:shoe]
         points = member[:rebounds]
       end
     end
   end
   points
 end 
 
 def most_points_scored
   points = 0
   mvp = ""
   game_hash.each do |team, extra_info|
     extra_info[:players].each do |member|
       if member[:points]> points
         points = member[:points]
         mvp = member[:player_name]
       end
     end
   end
   mvp
 end 
 
 def winning_team
   team1 = 0
   team2 = 0
   game_hash[:home][:players].each do |member|
     team1 += member[:points]
   end
   game_hash[:away][:players].each do |member|
     team2 += member[:points]
   end
   team1 > team2 ? team1 : team2
 end 
 
 