¿Acaso para la `Notebook` no deberíamos preguntar si está `descargada?` en lugar de `descargado?`? 

¡Puede ser! Pero si tuvieramos un método por cada clase, no podríamos tratar polimórficamente a los objetos. Por ejemplo, no habría manera de saber cuántos dispositivos están descargados porque no existiría un único mensaje que respondiera nuestra pregunta.

```ruby
ム dispositivos.count { |dispositivo| dispositivo.descargado? }
=> #¡Fallaría porque Notebook no podría responder al mensaje descargado?!

ム dispositivos.count { |dispositivo| dispositivo.descargada? }
=> #¡Fallaría porque Celular no podría responder al mensaje descargada?!
```