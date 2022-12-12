
FROM ubuntu
# copying requirements.txt and install the action dependencies
COPY requirements.txt /requirements.txt
RUN set -xe \
    && apt-get update -y \
    && apt-get install -y python3-pip
RUN pip install -r /requirements.txt
# script.py is the file that will contain the codes that we want to run for this action.
COPY command.sh /command.sh
# we will just run our script.py as our docker entrypoint by python script.py
ENTRYPOINT ["sh", "/command.sh"]
