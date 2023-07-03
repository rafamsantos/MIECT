# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
π Pname,Ssn,Fname,Lname ( project ⨝ Dno=Dnum employee)
```


### *b)* 

```
ssn_carlos = π cssn←Ssn (σ Fname = 'Carlos' ∧ Lname = 'Gomes' (employee)) -- obter ssn carlos
employeeList = employee ⨝ Super_ssn = cssn  (ssn_carlos)
π Fname, Lname (employeeList)

```


### *c)* 

```
table = γ Pno;sum(Hours)-> total_worked (works_on)
π Pname, total_worked (project⨝ Pnumber = Pno (table))
```


### *d)* 

```
π Fname, Lname, Pname, Dno, Hours (σ works_on.Hours > 20 (employee ⨝ Ssn = works_on.Essn ((σ Pname = 'Aveiro Digital' project ) ⨝ Pnumber = Pno works_on)))
```


### *e)* 

```
π Fname, Minit, Lname (σ Pno=null (employee ⟕ Ssn=Essn works_on))
```


### *f)* 

```
γ Dname;avg(Salary) -> Avg_Salary (department ⨝Dnumber=Dno σ Sex='F' (employee))
```


### *g)* 

```
... Write here your answer ...
```


### *h)* 

```
... Write here your answer ...
```


### *i)* 

```
... Write here your answer ...
```


## ​Problema 5.2

### *a)*

```
π nome (σ fornecedor=null (encomenda ⟗ fornecedor=nif fornecedor))
```

### *b)* 

```
π nome, media (γ codProd; avg(unidades) -> media (item) ⨝ codProd=codigo produto)
```


### *c)* 

```
γ; avg(num_prod) -> media (γ numEnc; count(codProd) -> num_prod (item))

```


### *d)* 

```
AUX_TABLE = γ codProd, fornecedor; sum(unidades) -> qnt_total (item ⨝ numEnc=numero encomenda)
π fornecedor.nome, produto.nome, qnt_total (AUX_TABLE ⨝ fornecedor=nif fornecedor ⨝ codProd=codigo produto)
```


## ​Problema 5.3

### *a)*

```
π nome,paciente.numUtente (σ numPresc=null (prescricao⨝prescricao.numUtente=paciente.numUtente paciente))
```

### *b)* 

```
γ especialidade; count(numSNS)->nPresc  (prescricao⨝numMedico = numSNS (medico))
```


### *c)* 

```
γ nome; count(numPresc)-> presc_totais (prescricao⨝farmacia=nome (farmacia))
```


### *d)* 

```
πfarmaco.nome (σ numReg = 906 (farmaco⨝numRegFarm = numReg farmaceutica))
```

### *e)* 

```
... Write here your answer ...
```

### *f)* 

```
UTENTE_difMED = σ medicos_diferentes>1 (γ numUtente; count(numMedico)->medicos_diferentes (π numUtente,numMedico prescricao))
πnome (paciente ⨝paciente.numUtente=prescricao.numUtente UTENTE_difMED)
```
