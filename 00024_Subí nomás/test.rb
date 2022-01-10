class Colectivo
  def combustible
    @combustible
  end
end

it "Un colectivo puede llevar 20 personas máximo" do
  colectivo = Colectivo.new 300
  expect(colectivo.maximo_personas).to eq 20
end

it "Un colectivo pierde 20 litros de combustible al recorrer 10 kilómetros" do
  colectivo = Colectivo.new 300
  colectivo.recorrer! 10
  expect(colectivo.combustible).to eq 280
end

it "Un colectivo aumenta su combustible en 20 litros cuando le cargamos 20 de combustible" do
  colectivo = Colectivo.new 300
  colectivo.cargar_combustible! 20
  expect(colectivo.combustible).to eq 320
end

it "En un colectivo entran 20 personas" do
  colectivo = Colectivo.new 300
  expect(colectivo.entran? 20).to be true
end

it "En un colectivo entran menos de 20 personas" do
  colectivo = Colectivo.new 300
  expect(colectivo.entran? 19).to be true
end

it "En un colectivo no entran más 20 personas" do
  colectivo = Colectivo.new 300
  expect(colectivo.entran? 21).to be false
end