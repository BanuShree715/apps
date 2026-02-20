from flask import Flask, render_template, request

app = Flask(_name_)

@app.route('/')
def home():
    return render_template('index.html', name="Kavisri V")

@app.route('/contact', methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        message = request.form['message']
        return render_template('contact.html', success=True, name=name)
    return render_template('contact.html', success=False)

if _name_ == '_main_':
    app.run(debug=True)
