# Flight App - Quick Setup

### Install dependencies FE/BE
```
make install
```

### Deploy DB
```
AWS_DEFAULT_REGION=<eu> ... make deploy-db
```

### Destroy DB
```
AWS_DEFAULT_REGION=<eu> ... make destroy-db
```

### Load fixtures
```
AWS_DEFAULT_REGION=<eu> ... make fixtures
```

### Run BE
```
AWS_DEFAULT_REGION=<eu> ... make run-be
```

### Run FE
```
make run-fe
```