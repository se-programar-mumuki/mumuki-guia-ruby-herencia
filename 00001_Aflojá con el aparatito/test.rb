class Celular
  def bateria 
    @bateria
  end
end

celular = Celular.new

it "Un celular inicializa con 100 de bateria" do
  expect(celular.bateria).to eq 100
end

it "Un celular gasta 30 de batería si lo uso una hora" do
  celular.cargar_a_tope!
  celular.utilizar! 60
  expect(celular.bateria).to eq 70
end

it "Un celular gasta 15 de batería si lo uso media hora" do
  celular.cargar_a_tope!
  celular.utilizar! 30
  expect(celular.bateria).to eq 85
end

it "Un celular gasta 25 de batería si lo uso 50 minutos" do
  celular.cargar_a_tope!
  celular.utilizar! 50
  expect(celular.bateria).to eq 75
end


it "Un celular vuelve a tener 100 de batería si lo cargo a tope" do
  celular.utilizar! 200
  celular.cargar_a_tope!
  expect(celular.bateria).to eq 100
end