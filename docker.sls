docker.repo:
  pkgrepo.managed:
    - humanname: {{ grains["os"] }} {{ grains["oscodename"]|capitalize }} Docker Package Repository
    - name: deb https://download.docker.com/linux/{{ grains["os"] | lower }} {{ grains["oscodename"] | lower }} stable
    - file: /etc/apt/sources.list.d/docker.list
    - key_url: https://download.docker.com/linux/{{ grains["os"] | lower }}/gpg
    - refresh_db: True


docker.packages:
  pkg.installed:
    - pkgs:
      - docker-ce
