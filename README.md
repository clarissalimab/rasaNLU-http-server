Para treinar o bot:

```
$ python -m rasa_nlu.train -c config_spacy.json -d data/
```

Para iniciar o servidor:
```
$ python -m rasa_nlu.server --path models/nlu
```