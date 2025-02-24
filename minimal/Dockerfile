# Minimal AI/ML Tools Dockerfile

# Use official Python base image
FROM python:3.9

# Set working directory
WORKDIR /workspace

# Install essential libraries
RUN pip install --no-cache-dir \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    jupyter \
    scipy \
    tqdm \
    setuptools

# Expose Jupyter Notebook port
EXPOSE 8888

# Default command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
