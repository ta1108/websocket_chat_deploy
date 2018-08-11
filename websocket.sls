include:
  - docker
  - docker-py


websocket_chat_app.running:
  docker_container.running:
    - name: websocket_chat_app
    - image: ta1108/websocket_chat_app:latest
    - port_bindings:
      - 8080:8080
    - require:
      - sls: docker
      - sls: docker-py
