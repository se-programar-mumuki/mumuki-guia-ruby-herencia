class Colectivo
  def combustible
    @combustible
  end
  
  def pasajeros
    @pasajeros
  end
  
  def subir_pasajeros(cantidad)
    @pasajeros += cantidad
  end
end

it "Un colectivo aumenta su combustible en 50 litros cuando le cargamos 50 de combustible" do
  colectivo = Colectivo.new
  colectivo.cargar_combustible! 50
  expect(colectivo.combustible).to eq 150
end

it "Un colectivo pierde sus pasajeros al cargar combustible" do
  colectivo = Colectivo.new
  colectivo.subir_pasajeros 10
  colectivo.cargar_combustible! 20
  expect(colectivo.pasajeros).to eq 0
end