# docker_basic

# Sample Docker Demo

A tiny demo that shows how to package and run a minimal Python app inside Docker.

This repository contains a single Python script and a `Dockerfile` that builds a small container image which runs the script.

**Files**
- `app.py`: Minimal Python script. When run it prints "Hello World from inside Docker!".
- `Dockerfile`: Dockerfile using `python:3.11-slim`, copies `app.py` and runs it.

**Prerequisites**
- Docker: install Docker Desktop for Windows or Docker Engine. Verify with:

```powershell
docker --version
```
- (Optional) Python 3.11 if you want to run the script locally:

```powershell
python --version
```

**Quick Start — Build and Run with Docker**

Open a PowerShell terminal in the project folder (where `Dockerfile` lives) and run:

```powershell
# Build the image (tag it as sample-docker-demo)
docker build -t sample-docker-demo .

# Run the container (it will print the message and exit)
docker run --rm sample-docker-demo
```

Expected output:

```
Hello World from inside Docker!
```

**Run Locally (without Docker)**

If you just want to run the Python script on your host:

```powershell
python app.py
```

**Inspecting the Image / Container**

- List local images:

```powershell
docker images
```

- Start an interactive shell inside the image (useful for debugging). Note: `python:3.11-slim` provides a POSIX shell:

```powershell
docker run --rm -it --entrypoint sh sample-docker-demo
```

**Tips & Troubleshooting**
- If the build fails, ensure Docker is running and you are in the correct folder that contains the `Dockerfile` and `app.py`.
- If you don’t see the expected output, run the container interactively to inspect files and environment (see previous section).
- Use `docker logs <container-id>` for troubleshooting long-running containers.

**Extending this demo**
- Add more Python files and update `COPY`/`CMD` in the `Dockerfile`.
- Add `requirements.txt` and `RUN pip install -r requirements.txt` to install dependencies.

**License**
This demo is provided as-is and may be used freely for learning and experimentation.
