# Common AI/ML Tools Dockerfile
# The Common AI/ML Tools Dockerfile installs a wide range of libraries and tools that are commonly used in AI/ML projects. 
# It includes core utilities, numerical and data processing libraries, visualization libraries, machine learning frameworks, 
# deep learning frameworks, Jupyter and development tools, data handling and NLP libraries, and model persistence and deployment tools.

# Use official Python base image
FROM python:3.9

# Set working directory
WORKDIR /workspace

# Install core utilities
RUN pip install --no-cache-dir \
    pip \
    setuptools \
    wheel

# Install numerical & data processing libraries
RUN pip install --no-cache-dir \
    joblib \
    numpy \
    pandas \
    scipy \
    tqdm

# Install visualization libraries
RUN pip install --no-cache-dir \
    matplotlib \
    plotly \
    seaborn

# Install machine learning frameworks
RUN pip install --no-cache-dir \
    catboost \
    lightgbm \
    scikit-learn \
    xgboost

# Install deep learning frameworks
RUN pip install --no-cache-dir \
    keras \
    tensorflow \
    torch \
    torchaudio \
    torchvision

# Install Jupyter and development tools
RUN pip install --no-cache-dir \
    ipython \
    jupyter \
    jupyterlab \
    nbconvert \
    notebook

# Install data handling and NLP libraries
RUN pip install --no-cache-dir \
    nltk \
    opencv-python \
    pillow \
    spacy \
    transformers

# Install model persistence & deployment tools
RUN pip install --no-cache-dir \
    fastapi \
    mlflow \
    onnx \
    onnxruntime

# Expose Jupyter Notebook port
EXPOSE 8888

# Default command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
