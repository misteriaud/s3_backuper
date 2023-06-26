FROM python:3.8.10
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install nbconvert
COPY main.ipynb .
RUN jupyter nbconvert --to script main.ipynb
CMD ["ipython", "main.py"]
