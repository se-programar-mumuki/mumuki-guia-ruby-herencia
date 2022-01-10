class Zombi
  def initialize(salud_inicial)
    @salud = salud_inicial
  end
  
  def salud
    @salud
  end
  
  def gritar
    "¡agrrrg!"
  end
  
  def sabe_correr?
    false
  end
  
  def sin_vida?
    @salud == 0
  end
  
  def recibir_danio!(puntos)
    @salud = [@salud - puntos * 2, 0].max
  end
end

class SuperZombi
  def initialize(salud_inicial)
    @salud = salud_inicial
  end

  def salud
    @salud
  end

  def gritar
    "¡agrrrg!"
  end

  def sabe_correr?
    true
  end

  def sin_vida?
    @salud == 0
  end

  def recibir_danio!(puntos)
    @salud = [@salud - puntos * 3, 0].max
  end
  
  def regenerarse!
    @salud = 100
  end
end