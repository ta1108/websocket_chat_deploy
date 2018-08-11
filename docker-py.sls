python-pip:
  pkg.installed:
    - pkgs:
      - python-pip


docker-py:
  pip.installed:
    - pkgs:
      - docker-py
    - reload_modules: True
