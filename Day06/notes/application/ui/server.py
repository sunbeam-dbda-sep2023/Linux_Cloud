from flask import Flask, render_template, request
import pickle

with open("/tmp/model.pkl", "rb") as file:
    model = pickle.load(file)
    print(model)


app = Flask(__name__)


@app.route("/", methods=["GET"])
def root():
    return render_template("index.html")


@app.route("/predict", methods=["POST"])
def predict_salary():
    experience = int(request.form.get("experience"))
    salary = model.predict([[experience]])
    return f"You may earn ${salary[0]}"


app.run(host="0.0.0.0", port=4000, debug=True)