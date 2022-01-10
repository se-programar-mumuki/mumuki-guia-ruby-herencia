superzombi = SuperZombi.new(100)
zombi = Zombi.new(50)

it "El método descansar! está definido en la clase Zombi" do
  expect(Zombi.method_defined? :descansar!).to be true
end

it "Cuando un zombi descansa una cantidad de minutos, restaura su salud en esa cantidad" do
  zombi.descansar! 30
  expect(zombi.salud).to eq 80
end

it "Cuando un super zombi descansa una cantidad de minutos, restaura su salud en esa cantidad" do
  superzombi.descansar! 90
  expect(superzombi.salud).to eq 190
end
