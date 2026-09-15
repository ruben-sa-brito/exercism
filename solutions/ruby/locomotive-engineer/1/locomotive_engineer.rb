class LocomotiveEngineer
  def self.generate_list_of_wagons(*args)
    args
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    fix = []
    each_wagons_id.each_with_index do |i, ind|
      if i == 1
        fix = *each_wagons_id[2..ind], *missing_wagons, *each_wagons_id[ind+1..], *each_wagons_id[0...2]
      end
    end
    fix
  end

  def self.add_missing_stops(from_to, **keywords)
    {from: from_to[:from], to: from_to[:to], stops: [*keywords.values]}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
