train:
	python3 -m rasa_nlu.train -c config_tensorflow.yml -d data/ --path confidence_evaluation -o models --fixed_model_name nlu

serve:
	python3 -m rasa_nlu.server --path models/

serve-logging:
	python3 -m rasa_nlu.server --path models/ --response_log logs