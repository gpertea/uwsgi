PYTHON := python

all:
	$(PYTHON) uwsgiconfig.py --build $(PROFILE)

debug:
	$(PYTHON) uwsgiconfig.py --build debug
##	$(PYTHON) uwsgiconfig.py --build $(PROFILE)

dbgtrace:
	$(PYTHON) uwsgiconfig.py --build dbgtrace
##	$(PYTHON) uwsgiconfig.py --build $(PROFILE)

trace:
	$(PYTHON) uwsgiconfig.py --build dbgtrace

clean:
	$(PYTHON) uwsgiconfig.py --clean

check:
	$(PYTHON) uwsgiconfig.py --check

plugin.%:
	$(PYTHON) uwsgiconfig.py --plugin plugins/$* $(PROFILE)

%:
	$(PYTHON) uwsgiconfig.py --build $@
