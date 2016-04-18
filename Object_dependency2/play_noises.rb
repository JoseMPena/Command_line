class PlayNoises
  def self.play_noise(vehicles)
    vehicles.each do |vehicle|
      puts "#{vehicle.type} does #{vehicle.noise}"
    end
  end
end
