class Auto
  def combustible
    @combustible
  end
end

class Moto
  def combustible
    @combustible
  end
end

it "Un auto puede llevar 5 personas máximo" do
  auto = Auto.new 200
  expect(auto.maximo_personas).to eq 5
end

it "Un auto pierde 5 litros de combustible al recorrer 10 kilómetros" do
  auto = Auto.new 200
  auto.recorrer! 10
  expect(auto.combustible).to eq 195
end

it "Un auto aumenta su combustible en 20 litros cuando le cargamos 20 de combustible" do
  auto = Auto.new 200
  auto.cargar_combustible! 20
  expect(auto.combustible).to eq 220
end

it "En un auto entran 5 personas" do
  auto = Auto.new 200
  expect(auto.entran? 5).to be true
end

it "En un auto entran menos de 5 personas" do
  auto = Auto.new 200
  expect(auto.entran? 4).to be true
end

it "En un auto no entran más 5 personas" do
  auto = Auto.new 200
  expect(auto.entran? 6).to be false
end

it "Una moto puede llevar 2 personas máximo" do
  moto = Moto.new 100
  expect(moto.maximo_personas).to eq 2
end

it "Una moto pierde 10 litros de combustible al recorrer 10 kilómetros" do
  moto = Moto.new 100
  moto.recorrer! 10
  expect(moto.combustible).to eq 90
end

it "Una moto aumenta su combustible en 50 litros cuando le cargamos 50 de combustible" do
  moto = Moto.new 100
  moto.cargar_combustible! 50
  expect(moto.combustible).to eq 150
end

it "En una moto entran 2 personas" do
  moto = Moto.new 100
  expect(moto.entran? 2).to be true
end

it "En una moto entran menos de 2 personas" do
  moto = Moto.new 100
  expect(moto.entran? 1).to be true
end

it "En una moto no entran más 2 personas" do
  moto = Moto.new 100
  expect(moto.entran? 3).to be false
end