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


it "El método descargado? está definido en la clase Dispositivo" do
  expect(Dispositivo.method_defined? :descargado?).to be true
end

it "Una notebook está descargada cuando tiene menos de 20 de batería" do
  notebook.cargar_a_tope!
  notebook.utilizar! 81
  expect(notebook.descargado?).to be true
end

it "Una notebook está descargada cuando tiene 20 de batería" do
  notebook.cargar_a_tope!
  notebook.utilizar! 80
  expect(notebook.descargado?).to be true
end

it "Una notebook no está descargada cuando tiene más de 20 de batería" do
  notebook.cargar_a_tope!
  notebook.utilizar! 79
  expect(notebook.descargado?).to be false
end

it "Un celular está descargado cuando tiene menos de 20 de batería" do
  celular.cargar_a_tope!
  celular.utilizar! 162
  expect(celular.descargado?).to be true
end

it "Un celular está descargado cuando tiene 20 de batería" do
  celular.cargar_a_tope!
  celular.utilizar! 160
  expect(celular.descargado?).to be true
end

it "Un celular no está descargado cuando tiene más de 20 de batería" do
  celular.cargar_a_tope!
  celular.utilizar! 158
  expect(celular.descargado?).to be false
end