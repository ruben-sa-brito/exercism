module Diamond
  def self.make_diamond(letter)
    return "A\n" if letter == "A"
    pos = letter.ord - 'A'.ord
    l = pos*2 + 1
    s = ['A'.center(l)]
    space = 1
    (2..pos+1).each do |i|
      s << ((64+i).chr + " "*space+ (64+i).chr).center(l)
      space+=2
    end
    space-=4
    (2..pos).to_a.reverse.each do |i|
      s << ((64+i).chr + " "*space+ (64+i).chr).center(l)
      space-=2
    end
    s << s[0]
    s.join("\n") + "\n"
  end
end