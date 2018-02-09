# rebar_templates
Rebar2 and Rebar3 templates 

Rebar2 ref:
Template support
As mentioned on the Rebar commands page, rebar provides the possibility to use so called templates to speedup creation of typical modules, applications, tests, etc.

For example, you can create draft of a module implementing the gen_server OTP behaviour by running the following command:

$ rebar create template=simplesrv srvid=example
==> exampleapp (create)
Writing src/example.erl
The list of built-in templates can be found on the Built-in templates page.

In addition to the built-in templates, rebar users can create their own templates by placing them in the ~/.rebar/templates/ directory. After that the templates can be invoked in the same fashion as the built-in ones:

$ rebar create template=mytemplate
You can also include templates in your local project and rebar create will find them. If they're in a sub-directory, you'll have to execute rebar -r create.

Please note that an up-to-date list of all available templates can be found by running the rebar list-templates command:

$ rebar list-templates
==> exampleapp (list-templates)
  * simplesrv: priv/templates/simplesrv.template (escript) (variables: "srvid")
  * simplenode: priv/templates/simplenode.template (escript) (variables: "nodeid")
  
  Rebar3
  https://www.rebar3.org/docs/using-templates
