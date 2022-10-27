FROM python:3.7
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE $PORT
COPY . /app
CMD sh setup.sh && streamlit run app.py