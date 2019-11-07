FROM python:3

ENV message hello 

WORKDIR /usr/src/app

COPY . .

RUN pip install -r requirements.txt

RUN  python setup.py build

RUN  python setup.py install 


CMD [ "python", "./init.py" ]