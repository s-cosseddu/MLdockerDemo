#! /bin/bash
# init conda env and run jupyter
conda init bash
conda activate MLdemo
jupyter lab --notebook-dir=/app --port=8888 --no-browser

