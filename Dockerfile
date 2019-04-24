FROM python:2.7

WORKDIR /usr/src/app

COPY ./ /usr/src/app

RUN pip install --no-cache-dir -r build-requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

ENV DESTALINATOR_LOG_LEVEL WARNING
CMD python scheduler.py
