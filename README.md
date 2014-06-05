# rebar_templates
===============

## rebar_templates

Note: *have rebar in $PATH.*

### Setup Header in templates :

1) 
```bash
mkdir ~/.rebar/templates
```

2)
```bash
clone https://github.com/ruanpienaar/rebar_templates
```

3)
```bash
cd rebar_templates
```

4)
```bash
./configure "YourName YourSurname" email@email.com
```

5)
```bash
cp -R * ~/.rebar/templates
```

## Creating Application:

1)
```bash
mkdir testapp
```

2)
```bash
cd testapp
```

3)
```bash
rebar create template=application appid=testapp nodeid=testapp_node
```

4) 
```bash
make
```

5) 
```bash
rel/testapp_node/bin/testapp_node console
```

## Creating Library:

1)
```bash
mkdir testlib
```

2)
```bash
cd testlib
```

3)
```bash
rebar create template=library appid=testlib
```

4) 
```bash
make
```

5) 
```bash
./start-dev.sh
```



