class CountWheels
  def self.count_wheels(vehicles)
    vehicles.each do |vehicle|
      puts "#{vehicle.type} has #{vehicle.wheels} wheels"
    end
  end
end
