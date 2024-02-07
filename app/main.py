from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return "hello"


@app.get("/ping")
async def ping():
    return "pong"
