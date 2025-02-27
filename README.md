# AI/ML Docker Images

## Overview
This repository contains a collection of AI/ML Docker images catering to different levels of development and deployment needs. These images are preconfigured with essential tools, libraries, and dependencies to streamline machine learning workflows.

## Available Images

### 1. Minimal AI/ML Tools
- **Image:** `minimal-aiml`
- **Description:** A lightweight image with essential AI/ML tools for data processing and scientific computing.
- **Base Image:** `python:3.9`
- **Tags:** `latest`, `minimal`
- **Includes:**
  - **Python Essentials:** `pip`, `setuptools`
  - **Numerical & Data Processing:** `numpy`, `pandas`
  - **Visualization:** `matplotlib`, `seaborn`
  - **Jupyter Support:** `jupyter`
  - **Utilities:** `scipy`, `tqdm`
- **Build and Push:**
  - Navigate to the `minimal` directory and run the following command:
    ```sh
    ./build_and_push.sh
    ```

### 2. Common AI/ML Tools
- **Image:** `common-aiml`
- **Description:** Includes TensorFlow, PyTorch, scikit-learn, and Jupyter Notebook.
- **Base Image:** `python:3.9`
- **Tags:** `latest`, `common`
- **Includes:**
  - **Python Essentials:** `pip`, `setuptools`, `wheel`
  - **Numerical & Data Processing:** `numpy`, `pandas`, `scipy`, `tqdm`, `joblib`
  - **Visualization:** `matplotlib`, `seaborn`, `plotly`
  - **Machine Learning:** `scikit-learn`, `xgboost`, `lightgbm`, `catboost`
  - **Deep Learning Frameworks:** `tensorflow`, `torch`, `torchvision`, `torchaudio`, `keras`
  - **Jupyter & Interactive Development:** `jupyter`, `jupyterlab`, `notebook`, `ipython`, `nbconvert`
  - **Data Handling & Feature Engineering:** `pillow`, `opencv-python`, `nltk`, `spacy`, `transformers`
  - **Model Persistence & Deployment:** `mlflow`, `onnx`, `onnxruntime`, `fastapi`
- **Build and Push:**
  - Navigate to the `common` directory and run the following command:
    ```sh
    ./build_and_push.sh
    ```

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
docker pull dockerhub.com/capturealpha/common-aiml:latest
```

### Run a Container
```sh
# Example: Run Jupyter Notebook with Advanced AI/ML Tools
docker run --gpus all -p 8888:8888 -v $(pwd):/workspace dockerhub.com/capturealpha/advanced-aiml
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
- **Nathan Bolam** - [GitHub](https://github.com/yourusername)
