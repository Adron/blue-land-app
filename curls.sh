#!/usr/bin/env bash

echo "Default message at root URI."
curl 127.0.0.1:8080/

echo "Current list of todo messages."
curl 127.0.0.1:8080/todos

echo "Posting some new todo messages."
curl -H "Content-Type: application/json" -d '{"name":"New Todo"}' http://localhost:8080/todos
curl -H "Content-Type: application/json" -d '{"name":"Host the meetup."}' http://localhost:8080/todos
curl -H "Content-Type: application/json" -d '{"name":"Get the tour setup."}' http://localhost:8080/todos
curl -H "Content-Type: application/json" -d '{"name":"Write more Go code!"}' http://localhost:8080/todos
curl -H "Content-Type: application/json" -d '{"name":"Update the infrastructure bits."}' http://localhost:8080/todos

curl 127.0.0.1:8080/todos

curl 127.0.0.1:8080/todo/1
curl 127.0.0.1:8080/todo/0

