FROM ollama/ollama AS pull-stage
COPY ollama-pull.sh /ollama-pull.sh
RUN chmod +x /ollama-pull.sh
# ENV model="llama2"
ENV model="qwen:0.5b"
RUN /ollama-pull.sh
FROM pull-stage AS final-stage

ENTRYPOINT ["/bin/ollama"]
EXPOSE 11434
ENV OLLAMA_HOST 0.0.0.0
CMD ["serve"]


