{% from "haveged/map.jinja" import haveged_map with context %}

haveged:
  pkg.removed:
    - name: {{ haveged_map.pkg }}
  service.dead:
    - name: {{ haveged_map.service }}
