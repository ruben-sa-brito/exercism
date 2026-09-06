class Tournament
  def self.tally(input)
    teams = {}
    for m in input.split("\n")
      spl = m.split(";")
      unless teams.key?(spl[0])
        teams[spl[0]] = {
            mp: 0,
            w: 0,
            d: 0,
            l: 0,
            p: 0
          }
      end
      unless teams.key?(spl[1])
        teams[spl[1]] = {
            mp: 0,
            w: 0,
            d: 0,
            l: 0,
            p: 0
          }
      end
      if spl[2] == "win"
        teams[spl[0]][:mp] += 1
        teams[spl[0]][:w] += 1
        teams[spl[0]][:p] += 3

        teams[spl[1]][:mp] += 1
        teams[spl[1]][:l] += 1
      end
      if spl[2] == "loss"
        teams[spl[0]][:mp] += 1
        teams[spl[0]][:l] += 1
        
        teams[spl[1]][:mp] += 1
        teams[spl[1]][:w] += 1
        teams[spl[1]][:p] += 3
      end
      if spl[2] == "draw"
        teams[spl[1]][:mp] += 1
        teams[spl[1]][:d] += 1
        teams[spl[1]][:p] += 1

        teams[spl[0]][:mp] += 1
        teams[spl[0]][:d] += 1
        teams[spl[0]][:p] += 1
      end
    end
    table = ["Team                           | MP |  W |  D |  L |  P"]
    
    teams.sort_by { |i| [-i[1][:p], i[0]] }.each do |n, d|
      table.append("%-30s | %2s | %2s | %2s | %2s | %2s" % [n, d[:mp],d[:w], d[:d], d[:l], d[:p]])
    end
    table.join("\n") + "\n"
  end
end
