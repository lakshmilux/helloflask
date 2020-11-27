from flask import Flask

app = Flask(__name__)
@app.route('/')
def hello():
    # Use a breakpoint in the code line below to debug your script.
    return 'hello'  # Press Ctrl+F8 to toggle the breakpoint


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    app.run(debug = True)

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
