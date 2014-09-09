# rebar_templates
===============

## rebar_templates

Note: *have rebar in $PATH.*

### Setup Header in templates :

```bash
clone https://github.com/ruanpienaar/rebar_templates
```

```bash
cd rebar_templates
```

```bash
mkdir -p ~/.rebar/templates
```

```bash
cp -R * ~/.rebar/templates
```

## Creating Application skeleton:

```bash
mkdir testapp
```

```bash
cd testapp
```

```bash
rebar create template=application appid=testapp nodeid=testapp_node
```

```bash
make
```

```bash
rel/testapp_node/bin/testapp_node console
```

## Creating Library skeleton:

```bash
mkdir testlib
```

```bash
cd testlib
```

```bash
rebar create template=library appid=testlib
```

```bash
make
```

```bash
./start-dev.sh
```

## Adding more applications to the application skeleton:

```bash
cd apps
create template=single_app appid=testapp2
```
