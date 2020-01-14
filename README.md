# Jupyter Lab in Docker

This is base repository for Machine Learning.

## Environment
- Docker
- docker-compose
- anaconda: 4.8.1
- Python: 3.7.4

## Operation
### Install

```
$ git clone https://github.com/YamagishiRyu/jupyter_base.git
```

### Build

```
$ make build
```

### Run
After executing below command, you can use jupyter-lab by accessing `https://localhost:8888`.
```
$ make run
```

### Update Environment
When you update pip environment, you can update environment document by below command.
```
$ make add/package
```

