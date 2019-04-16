## Instalação
### spaCy
Instale o RasaNLU com o pipeline do spaCy:
```
$ pip install rasa_nlu[spacy]
```

Se você estiver usando o zsh, talvez você precise rodar assim:
```
$ pip install rasa_nlu'[spacy]'
```

Instale a model padrão do spaCy. Se for em português, você pode usar os seguintes comandos para instalar e depois linkar:
```
$ python -m spacy download pt_core_news_sm
$ python -m spacy link pt_core_news_sm pt
```

Veja a [documentação do spaCy](https://spacy.io/usage/models) para outros idiomas.

### Tensorflow
Instale o RasaNLU usando com o pipeline do Tensorflow:
```
$ pip install rasa_nlu[tensorflow]
```

Se você estiver usando o zsh, talvez você precise rodar assim:
```
$ pip install rasa_nlu'[tensorflow]'
```

## Treinamento
### spaCy
Para treinar o bot usando o spaCy:

```
$ python -m rasa_nlu.train -c config_spacy.json -d data/
```

### Tensorflow
```
$ python -m rasa_nlu.train -c config_tensorflow.yml -d data/
```

## Servidor
Para iniciar o servidor:
```
$ python -m rasa_nlu.server --path models/nlu
```

## Requisição
Você pode fazer uma requisição para o seu servidor com a seguinte URL:
```
http://localhost:5000/parse?q=[SEU_TEXTO_AQUI]
```

Dependendo de como você fez o treinamento, possivelmente você precise passar o nome do projeto como parâmetro na requisição (project=[nome do seu projeto]).