FROM erlang:latest

RUN git clone https://github.com/Antibiotic/websocket_chat.git

WORKDIR /websocket_chat
RUN make compile

EXPOSE 8080

WORKDIR /websocket_chat
CMD erl -noshell -pa _build/default/lib/cowboy/ebin/ -pa _build/default/lib/cowlib/ebin/ -pa _build/default/lib/ranch/ebin/ -pa _build/default/lib/websocket_chat/ebin/ -pa _build/default/lib/jsx/ebin/ -s websocket_chat_app fast_start
