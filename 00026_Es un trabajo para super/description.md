Bien sabemos que los colectivos también necesitan cargar combustible como cualquier `MedioDeTransporte`, pero ¡qué molesto para los pasajeros! Es por esto que cuando un `Colectivo` carga combustible, además de incrementarlo pierde a todos sus `@pasajeros`. :pensive:

El tema es que si redefinimos `cargar_combustible!` en `Colectivo` vamos a repetir lógica con nuestra superclase `MedioDeTransporte`. No necesariamente, gracias al mensaje `super`. :muscle:

Al utilizar `super` en el método de una subclase, **se evalúa el método con el mismo nombre de su superclase**. Por ejemplo...

```ruby
class Saludo
  def saludar
    "Buen día"
  end
end

class SaludoDocente < Saludo
  def saludar
    super + " estudiantes"
  end
end
```

De esta forma, al enviar el mensaje `saludar` a `SaludoDocente`, `super` **invoca** el método `saludar` de su superclase, `Saludo`. :wave: 

```ruby
ム mi_saludo = SaludoDocente.new
ム mi_saludo.saludar
=> "Buen día estudiantes"
```

> ¡Ahora te toca a vos! Redefiní el método `cargar_combustible!` en `Colectivo`, de modo que haga lo mismo que cualquier `MedioDeTransporte` y además se quede sin pasajeros. Recordá utilizar `super` para evitar repetir lógica.