from flask import Flask, request, jsonify
from flask_cors import CORS
import sqlite3

app = Flask(__name__)
CORS(app)

# Shared database connection
conn = sqlite3.connect('st26_database.db', check_same_thread=False)
cursor = conn.cursor()

@app.route('/')
@app.route('/products')
def getProduct():
    try:
        result = cursor.execute('SELECT * FROM PRODUCT')
        data = result.fetchall()
        conn.commit()

        list_products = [
            {
                "id": item[0],
                "title": item[1],
                "price": item[2],
                "description": item[3],
                "category": item[4],
                "image": item[5],
                "rating": {
                    "rate": 3.9,
                    "count": 120
                }
            }
            for item in data
        ]
        return jsonify(list_products)
    except Exception as e:
        return jsonify({"error": str(e)}), 500


@app.route('/products/<int:product_id>')
def getProductById(product_id):
    try:
        result = cursor.execute("SELECT * FROM PRODUCT WHERE id=?", (product_id,))
        data = result.fetchone()
        conn.commit()

        if data:
            product = {
                "id": data[0],
                "title": data[1],
                "price": data[2],
                "description": data[3],
                "category": data[4],
                "image": data[5],
                "rating": {
                    "rate": 3.9,
                    "count": 120
                }
            }
            return jsonify(product)
        else:
            return jsonify({"error": "Product not found"}), 404
    except Exception as e:
        return jsonify({"error": str(e)}), 500




if __name__ == '__main__':
    app.run(debug=True)

