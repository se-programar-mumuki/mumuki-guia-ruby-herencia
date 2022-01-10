class Colectivo
  def combustible
    @combustible
  end
  
  def pasajeros
    @pasajeros
  end
end

it "Un colectivo arranca con 100 de combustible" do
  colectivo = Colectivo.new
  expect(colectivo.combustible).to eq 100
end

it "Un colectivo arranca con 0 pasajeros" do
  colectivo = Colectivo.new
  expect(colectivo.pasajeros).to eq 0
end

it "En un colectivo entran 20 personas" do
  colectivo = Colectivo.new
  expect(colectivo.entran? 20).to be true
end

it "En un colectivo entran 30 personas" do
  colectivo = Colectivo.new
  expect(colectivo.entran? 30).to be true
end

it "En un colectivo entran 35 personas" do
  colectivo = Colectivo.new
  expect(colectivo.entran? 35).to be true
end