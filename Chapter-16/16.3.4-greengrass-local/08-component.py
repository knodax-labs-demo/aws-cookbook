import json

def process_event(event):
    temp = event.get('temperature', 0)
    if temp > 75:
        return {"alert": "Overheat detected!"}
    return {"status": "Normal"}
