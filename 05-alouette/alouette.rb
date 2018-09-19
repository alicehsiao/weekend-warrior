require 'pry'

class Alouette
  def self.lines_for_verse(verse_num)
    array = ["Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!"]

    part = array[7 - verse_num, 9]

    return part
  end

  def self.verse(verse_num)
    song_part = ""

    first_line = lines_for_verse(verse_num)[0]
    first_line.slice! "!"

    first_line += "."
    2.times do
      song_part += "Je te plumerai " + first_line[3, first_line.length-1] + "\n"
    end

    i = 0
    while i <= verse_num
      2.times do
        song_part += lines_for_verse(verse_num)[i] + "\n"
      end
      i += 1
    end

    2.times do
      song_part += "Alouette!\n"
    end

    song_part += "A-a-a-ah"

    return song_part
  end

  def self.sing
    final_song = ""
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    i = 0
    while i < 8 do
      final_song += refrain
      final_song += "\n\n"
      final_song += verse(i)
      final_song += "\n\n"
      i += 1
    end

    final_song += refrain
    return final_song
  end
end
