
## Installation instructions

Install with python poetry:
```
poetry install
```

Set the required keys (depends on the model that you use)
```
export OPENAI_API_KEY=.....
export OCTOAI_TOKEN=....
```

### List available models

Running directly from the checkout repository
```
poetry run python ./hdlagent/hdlagent.py  --openai_models_list
poetry run python ./hdlagent/hdlagent.py  --octoai_models_list
```

### Run a Simple test from json

```
cd sample
poetry run python ../hdlagent/hdlagent.py --supp_context  --llm gpt-4-turbo-preview --lang Verilog --bench ./sample-test.json
```

