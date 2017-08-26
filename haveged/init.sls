{% from "haveged/map.jinja" import haveged_map with context %}

haveged:
  pkg.installed:
    - name: {{ haveged_map.pkg }}
  service.running:
    - name: {{ haveged_map.service }}
    - enable: True
    - require:
      - pkg: haveged
    - watch:
      - pkg: haveged
