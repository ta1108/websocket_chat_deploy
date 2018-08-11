# websocket_chat app deploy

This deploys erlang websocket chat using salt and docker

### Prerequisites

salt-master needs to be configured on salt-master and salt-minion on a salt-minion.

Tested on Kubuntu 16.04, but should work on other ubuntu and centos systems as well, that supports docker.

## How To

If you have custom file_roots configured, you should make adjusment to the following.
Also, change minion_host to your target host.

```
git clone https://github.com/ta1108/websocket_chat_deploy.git
sudo cp websocket_chat_deploy/* /srv/salt/
sudo salt minion_host state.apply
```
