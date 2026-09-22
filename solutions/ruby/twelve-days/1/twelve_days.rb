module TwelveDays
  def self.song
    qt = ["two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve"]
    day = ["second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
    gifts = ["Turtle Doves", "French Hens", "Calling Birds", 
    "Gold Rings", "Geese-a-Laying", "Swans-a-Swimming", "Maids-a-Milking", "Ladies Dancing",
    "Lords-a-Leaping", "Pipers Piping", "Drummers Drumming"]
    lyrics = ["On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."]
    (0..10).each do | i|
      lyrics << "On the #{day[i]} day of Christmas my true love gave to me:" + gifts[0..i].map.with_index {|v, i| " #{qt[i]} #{v}"}.reverse.join(",") + ", and a Partridge in a Pear Tree."
      
    end
    lyrics.join("\n\n") + "\n"
  end
end