class Zombi
  def initialize
    @salud = 100
  end
  
  def salud
    @salud
  end

  def recibir_danio!(puntos)
    @salud = [@salud - puntos * 2, 0].max
  end
end

bouba = Zombi.new
kiki = Zombi.new
zombisexual = Zombi.new
julian = Aliado.new
candelo = Aliado.new
juliana = Sobreviviente.new
persona = Persona.new

it "La energía inicial de una sobreviviente es 1000" do
  expect(juliana.energia).to eq 1000
end

it "Si una sobreviviente ataca normalmente su energía no se reduce" do
  juliana.atacar!(kiki, 5)
  expect(juliana.energia).to eq 1000
end

it "Si una sobreviviente bebe una bebida energética su energía aumenta un 25%" do
  juliana.beber!
  expect(juliana.energia).to eq 1000 * 1.25
end

it "Si una sobreviviente ataca con 5 puntos de daño a un zombi su salud disminuye en 10 puntos" do
  juliana.atacar!(bouba, 5)
  expect(bouba.salud).to eq 90
end

it "La energía inicial de un aliado es 500" do
  expect(julian.energia).to eq 500
end

it "Si un aliado ataca su energía se reduce un 5%" do
  julian.atacar!(kiki, 5)
  expect(julian.energia).to eq 500 * 0.95
end

it "Si un aliado bebe una bebida energética su energía aumenta un 10%" do
  candelo.beber!
  expect(candelo.energia).to eq 500 * 1.10
end

it "Si un aliado ataca con 5 puntos de daño a un zombi su salud disminuye en 10 puntos" do
  julian.atacar!(zombisexual, 5)
  expect(bouba.salud).to eq 90
end