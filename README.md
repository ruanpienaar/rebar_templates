# rebar_templates
===============

## rebar_templates

Note: *have rebar in $PATH.*

```bash
mkdir ~/.rebar/
git clone https://github.com/ruanpienaar/rebar_templates ~/.rebar/templates/
```

## Creating Application skeleton:

```bash
mkdir testapp
```

```bash
cd testapp
```

```bash
rebar create template=application appid=testapp releaseid=testapp_node
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

## List of templates:

application [ appid, description, releaseid ]
( Create the basis for a self contained erlang applicaiton release )

apps_app [ appid, description ]
( create another app inside apps/ )

