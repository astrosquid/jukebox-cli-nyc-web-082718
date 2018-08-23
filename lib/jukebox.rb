songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1} - #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  if songs.include?(input)
    puts "Playing #{input}"
  elsif input.to_i > 0 && input.to_i <= songs.length 
    puts "Playing #{songs[input.to_i]}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end 

def run 
  help 
  puts "Please enter a command:"
  input = gets.chomp 
  loop do 
    case input
    when "help"
      help
    when "exit" 
      break
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end 
end