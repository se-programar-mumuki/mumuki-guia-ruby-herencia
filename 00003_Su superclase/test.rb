class Notebook
  def bateria 
    @bateria
  end
end

class Celular
  def bateria 
    @bateria
  end
end

notebook = Notebook.new
celular = Celular.new

it "Una notebook inicializa con 100 de bateria" do
  expect(notebook.bateria).to eq 100
end

it "Una notebook gasta 60 de batería si lo uso una hora" do
  notebook.cargar_a_tope!
  notebook.utilizar! 60
  expect(notebook.bateria).to eq 40
end

it "Una notebook gasta 30 de batería si lo uso media hora" do
  notebook.cargar_a_tope!
  notebook.utilizar! 30
  expect(notebook.bateria).to eq 70
end

it "Una notebook vuelve a tener 100 de batería si la cargo a tope" do
  notebook.utilizar! 200
  notebook.cargar_a_tope!
  expect(notebook.bateria).to eq 100
end

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

it "Un celular vuelve a tener 100 de batería si lo cargo a tope" do
  celular.utilizar! 200
  celular.cargar_a_tope!
  expect(celular.bateria).to eq 100
end