# AI/ML Docker Images

## Overview
This repository contains a collection of AI/ML Docker images catering to different levels of development and deployment needs. These images are preconfigured with essential tools, libraries, and dependencies to streamline machine learning workflows.

## Available Images

### 1. Minimal AI/ML Tools
- **Image:** `minimal-aiml`
- **Description:** A lightweight image with essential AI/ML tools like Python, NumPy, and Pandas.
- **Base Image:** `python:3.9`
- **Tags:** `latest`, `minimal`

### 2. Common AI/ML Tools
- **Image:** `common-aiml`
- **Description:** Includes TensorFlow, PyTorch, scikit-learn, and Jupyter Notebook.
- **Base Image:** `python:3.9`
- **Tags:** `latest`, `common`

### 3. Advanced AI/ML Tools
- **Image:** `advanced-aiml`
- **Description:** Contains AI/ML frameworks with GPU acceleration, Hugging Face Transformers, XGBoost, and MLFlow.
- **Base Image:** `nvidia/cuda`
- **Tags:** `latest`, `advanced`

### 4. Kitchen Sink (Full AI/ML Stack)
- **Image:** `kitchen-sink-aiml`
- **Description:** A comprehensive AI/ML environment with all major frameworks, libraries, and Jupyter support.
- **Base Image:** `nvidia/cuda`
- **Tags:** `latest`, `full-stack`

## Getting Started
### Pull an Image
```sh
# Example: Pull Common AI/ML Tools Image
docker pull ghcr.io/capturealpha/common-aiml:latest
```

### Run a Container
```sh
# Example: Run Jupyter Notebook with Advanced AI/ML Tools
docker run --gpus all -p 8888:8888 -v $(pwd):/workspace ghcr.io/capturealpha/advanced-aiml
```

## Build Your Own Image
Each directory contains a `Dockerfile`. To build an image locally:
```sh
cd common-aiml
docker build -t my-common-aiml:latest .
```

## Contributing
Contributions are welcome! Feel free to submit a PR for new AI/ML Docker images or improvements to existing ones.

## License
This repository is licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Maintainers
- **Nathan Bolam** - [GitHub](https://github.com/natebolam)
