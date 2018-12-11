FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# virtualenv
RUN mkdir -p myvirtualspaces/virtualenvs
RUN virtualenv myvirtualspaces/virtualenvs/cli-testing --no-site-packages

CMD [ "python", "./your-daemon-or-script.py" ]

