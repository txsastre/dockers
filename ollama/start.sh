podman run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
#docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama


#Now you can run a model:
#docker exec -it ollama ollama run llama3
