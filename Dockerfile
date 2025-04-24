FROM tensorflow/tensorflow:latest

RUN apt-get update && apt-get install -y \
python3-pip \
python3-dev \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install --ignore-installed blinker
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask", "--app" , "FlaskAPI.py" , "run" , "--host=0.0.0.0"]

            