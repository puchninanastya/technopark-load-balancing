FROM python:3.6

RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 8081
CMD ["./run.sh"]