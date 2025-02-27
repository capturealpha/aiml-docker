# Advanced AI/ML Tools Dockerfile

# Use official NVIDIA CUDA base image for GPU acceleration
FROM nvidia/cuda:12.1-cudnn8-runtime-ubuntu22.04

# Set working directory
WORKDIR /workspace

# Install core utilities
RUN pip install --no-cache-dir \
    pip \
    setuptools \
    wheel \
    nvidia-pyindex \
    nvidia-dali-cuda

# Install numerical & data processing libraries
RUN pip install --no-cache-dir \
    numpy \
    pandas \
    scipy \
    tqdm \
    joblib \
    dask \
    modin \
    faiss-cpu

# Install visualization & monitoring tools
RUN pip install --no-cache-dir \
    matplotlib \
    seaborn \
    plotly \
    tensorboard \
    wandb

# Install machine learning frameworks
RUN pip install --no-cache-dir \
    scikit-learn \
    xgboost \
    lightgbm \
    catboost \
    rapidsai

# Install deep learning frameworks
RUN pip install --no-cache-dir \
    tensorflow \
    torch \
    torchvision \
    torchaudio \
    keras \
    jax \
    flax \
    timm

# Install NLP libraries
RUN BLIS_ARCH="generic" pip install --no-cache-dir \
    nltk \
    spacy \
    transformers \
    sentence-transformers \
    textblob \
    fugashi

# Install reinforcement learning tools
RUN pip install --no-cache-dir \
    gym \
    stable-baselines3 \
    ray[rllib]

# Install model optimization & deployment tools
RUN pip install --no-cache-dir \
    onnx \
    onnxruntime-gpu \
    mlflow \
    torchscript \
    tritonserver \
    fastapi

# Install data handling & feature engineering tools
RUN pip install --no-cache-dir \
    pillow \
    opencv-python \
    pyarrow \
    scikit-image \
    faiss-gpu

# Install distributed computing & scalability tools
RUN pip install --no-cache-dir \
    ray \
    horovod \
    dask \
    spark-nlp \
    pytorch-lightning

# Expose Jupyter Notebook port
EXPOSE 8888

# Default command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
