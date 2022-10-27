FROM python:3.7
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE $PORT
COPY . /app
ENTRYPOINT [ "streamlit","run" ]
CMD [ "app.py" ]