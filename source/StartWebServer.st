Tp1WebApp registerAsApplication.

ZnServer defaultOn: 8080.
ZnServer default debugMode: true.
ZnServer default delegate map: Tp1WebApp handlerName to: Tp1WebApp new.
ZnServer default start.