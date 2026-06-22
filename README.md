# Student Outcomes and Psychological Factors

Progetto realizzato per il corso di **SAS**, dedicato allo studio della relazione tra caratteristiche psicologiche, risultati scolastici e programma educativo frequentato.

## Autori

* Giovanni Giacomo Cerasoli
* Alessandro Ricchebono
* Matteo Tacchella

## Dataset e obiettivo

Il dataset contiene dati relativi a **600 studenti delle scuole superiori**.

Le variabili analizzate includono:

```r
locus_of_control
self_concept
motivation
read
write
science
program_type
```

L’obiettivo è valutare la relazione tra le variabili psicologiche e i risultati accademici, considerando anche il tipo di programma scolastico:

```r
1 = generale
2 = accademico
3 = professionale
```

## Metodologia

L’analisi ha incluso:

* analisi descrittiva delle variabili;
* boxplot e scatterplot per programma educativo;
* matrice di correlazione di Pearson;
* modelli lineari univariati;
* analisi della covarianza;
* analisi MANOVA.

Le variabili psicologiche sono state considerate come variabili risposta:

```r
self_concept
motivation
locus_of_control
```

mentre `read`, `write`, `science` e `program_type` sono state utilizzate come variabili esplicative.

## Principali risultati

Le variabili accademiche risultano moderatamente correlate tra loro, soprattutto:

```r
cor(read, science) = 0.69
cor(read, write)   = 0.63
```

Le relazioni tra variabili psicologiche e accademiche sono invece più deboli.

In particolare:

* `self_concept` non presenta associazioni rilevanti con i punteggi in lettura, scrittura e scienze;
* `locus_of_control` mostra una relazione positiva con le variabili accademiche;
* `motivation` presenta associazioni più deboli, ma comunque significative con alcune performance scolastiche;
* il tipo di programma educativo risulta significativo nei modelli analizzati.

## Conclusioni

I modelli individuano alcune relazioni statisticamente significative, ma con valori di `R²` contenuti. I risultati suggeriscono quindi che rendimento scolastico e programma educativo contribuiscano a spiegare solo in parte le variabili psicologiche considerate.
