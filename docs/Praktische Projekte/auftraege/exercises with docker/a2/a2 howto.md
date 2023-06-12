****

## 1. PHP_INI_DIR herausfinden

```
docker inspect containerid | grep PHP_INI_DIR
```

## 2. Container mit env set_manual=true

```
docker run -d -e SET_MANUAL=true 176
docker inspect containerid | grep SET_MANUAL=
```

## 3. ENV im image build

1. Im Dockerfile hinzufügen:

```
ENV PRAKTIKUM=true
```

2. Neu Builden

```
docker build -t v5-sel-env --network=host .
```

3. Test
   `docker inspect imageid | grep PRAKTIKUM`

## 4. Env bei start ausgeben

1. Dockerfile dies hinzufügen:

```
CMD echo $PRAKTIKUM $PHP_INI_DIR
```

2. Build

```
docker build -t v5-sel-env-echo --network=host .
```

3. Run

```
docker run imageid
```
