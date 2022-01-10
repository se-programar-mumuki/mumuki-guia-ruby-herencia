class Sobreviviente
  def initialize
    @energia = 1000
  end

  def energia
    @energia
  end
  
  def beber!
    @energia *= 1.25
  end

  def atacar!(zombi, danio)
    zombi.recibir_danio! danio
  end
end

class Aliado
  def initialize
    @energia = 500
  end

  def energia
    @energia
  end

  def beber!
    @energia *= 1.10
  end

  def atacar!(zombi, danio)
    zombi.recibir_danio! danio
    @energia *= 0.95
  end
end