from flask import Flask, jsonify, request

app = Flask(__name__)

tasks = []

@app.route('/')
def home():
    return "Welcome to DevOps ToDo App!"

@app.route('/tasks', methods=['GET'])
def get_tasks():
    return jsonify(tasks)

@app.route('/tasks', methods=['POST'])
def add_task():
    data = request.get_json()
    tasks.append({"id": len(tasks)+1, "task": data['task']})
    return jsonify({"message": "Task added successfully!"}), 201

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
