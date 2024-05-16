FROM python:3.8-slim

WORKDIR /code 

COPY ./requirements.txt ./

RUN pip3 install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY ./src/ ./src/


# EXPOSE 8000
# CMD ["python", "/code/src/app.py"]


# EXPOSE 8000
# CMD ["uvicorn", "src.fastapi_demo:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
