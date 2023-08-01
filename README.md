# Build the container

```bash
docker-compose -f docker-compose.yml build python
```

# Run the container

```bash
docker-compose -f docker-compose.yml run python
```

# push the built container to docker hub

```bash
docker push anielsen/python3.11.4:latest
```