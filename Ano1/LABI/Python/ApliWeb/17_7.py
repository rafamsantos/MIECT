import requests

values={"username": "Rafa", "password": "rafa"}
f= requests.post("http://localhost:8080/actions/doLogin", data=values)
print(f.status_code)
print(str(f.content,"utf-8"))
