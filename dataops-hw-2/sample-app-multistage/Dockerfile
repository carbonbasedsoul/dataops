# build stage
FROM python:3.7-slim AS builder
WORKDIR /app
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --no-cache-dir networkx dash plotly

# runtime stage
FROM python:3.7-alpine
WORKDIR /app
COPY --from=builder /opt/venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY GraphAnalysis.py .

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 8050

ENTRYPOINT ["python", "GraphAnalysis.py"]
CMD ["obj_dependency_data.csv"]
