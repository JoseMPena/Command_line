class VehicleTest
  def self.set_vehicle
    moto = Vehicle.new("motorbike", 2, "briiim")
    car = Vehicle.new("car", 4, "braaam")
    jeep = Vehicle.new("jeep", 5, "brooom")
    truck = Vehicle.new("truck", 12, "trum, trum, trum")

    [moto, car, jeep, truck]
  end

  def self.run
    vehicles = VehicleTest.set_vehicle
    CountWheels.count_wheels(vehicles)
    PlayNoises.play_noise(vehicles)
  end
end
set_vehicle
