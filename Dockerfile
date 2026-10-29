
FROM python:3.13-slim

WORKDIR /app

COPY pyproject.toml .
COPY calculator/ calculator/
COPY test_app.py .

RUN pip install --no-cache-dir .

CMD ["python", "-m", "unittest", "-v"]
