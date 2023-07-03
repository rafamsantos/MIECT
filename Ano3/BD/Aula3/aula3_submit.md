# BD: Guião 3


## ​Problema 3.1
 
### *a)*

```
Cliente, Balcão, Veículo, Aluguer, Tipo de veiculo,similaridade, ligeiro, pesado
```


### *b)* 

```
Cliente -> PK : NIF

Balcão -> PK : número

veículo -> PK: matricula

ALuguer -> PK : número
		FK : cliente, balcão, veiculo

tipo de veiculo -> PK : código
			   FK : código

Similaridade -> FK : tipo1, tipo2

ligeiro -> FK : tipo

pesado -> FK : tipo  

```


### *c)* 

![ex_3_1c!](ex_3_1c.jpg "AnImage")


## ​Problema 3.2

### *a)*

```
Relações: airport , airplane type, can_land,airplane, leg instance, flight leg, flight
```


### *b)* 

```
Chaves primárias: 
aiport : airport_code
airplane_type : type_name
airplane: total_no_of_seats
leg instance : date
flight_leg: flight number

Chaves estrangeiras:
can_land: airport code, type name
airplane: type
leg instance : leg_no
flight_leg: leg_no
flight: number

```


### *c)* 

![ex_3_2c!](ex_3_2c.jpg "AnImage")


## ​Problema 3.3


### *a)* 2.1

![ex_3_3_a!](ex_3_3a.jpg "AnImage")

### *b)* 2.2

![ex_3_3_b!](ex_3_3b.jpg "AnImage")

### *c)* 2.3

![ex_3_3_c!](ex_3_3c.jpg "AnImage")

### *d)* 2.4

![ex_3_3_d!](ex_3_3d.jpg "AnImage")