Para que una clase pueda hacer lo mismo que superclase y algo más, usaremos `super` de esta manera:

```ruby
class Perro
  def cruzarse_con_otro_perro!
    self.mover_la_cola!
  end
end

class PerroCascarrabias < Perro
  def cruzarse_con_otro_perro!
    super
    self.ladrar!
  end
end
```