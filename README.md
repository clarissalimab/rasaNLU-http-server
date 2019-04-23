# Virtualenv
## Instalação
Instale o RasaNLU usando com o pipeline do Tensorflow:
```
$ pip install rasa_nlu[tensorflow]
```

Se você estiver usando o zsh, talvez você precise rodar assim:
```
$ pip install rasa_nlu'[tensorflow]'
```

## Treinamento
```
$ make train
```

## Servidor
Para iniciar o servidor com os logs ativados:
```
$ make serve-logging
```

Para iniciar o servidor com os logs desativados:
```
$ make serve
```

# Docker
Crie a imagem na sua máquina a partir do Dockerfile presente no projeto:
```
$ docker build -t rasa-server -f Dockerfile . --no-cache
```

Execute a imagem que você criou:
```
$ docker run -p 5000:5000 rasa-server:latest train
```

# Requisição
Você pode fazer uma requisição para o seu servidor com a seguinte URL:
```
http://localhost:5000/parse?q=[SEU TEXTO AQUI]&model=nlu
```

Dependendo de como você fez o treinamento, possivelmente você precise passar o nome do projeto como parâmetro na requisição (project=[nome do seu projeto]). O mesmo acontece se você tiver diferentes modelos de treinamento, ou se você definir um token para o seu servidor.