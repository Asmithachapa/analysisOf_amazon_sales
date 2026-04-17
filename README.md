#  Amazon Sales Analysis (Python + SQL)

##  Project Overview

This project analyzes Amazon sales data using **Python and SQL** to extract meaningful insights about product categories, ratings, and sales trends. It combines data querying and visualization to support data-driven decision-making.

---

##  Objectives

* Analyze sales performance across categories
* Identify top-rated and top-selling products
* Perform data analysis using SQL queries
* Visualize insights using Python

---

##  Tools & Technologies Used

* **Python**
* **SQL** (for querying and data extraction)
* **Pandas** – Data analysis
* **NumPy** – Numerical operations
* **Matplotlib & Seaborn** – Visualization
* **Jupyter Notebook**

---

##  Project Structure

```id="y9mbr8"
analysisOf_amazon_sales/
│── sales.ipynb                # Python analysis notebook
│── queries.sql                # SQL queries used in analysis# Visualization output
│── README.md                  # Project documentation
│── dataset/ (optional)        # Dataset files
```

---

##  SQL Analysis Performed

* Retrieve top categories based on sales
* Calculate average ratings per category
* Filter high-performing products
* Perform aggregations using GROUP BY

###  Example SQL Query

```id="zwlhxi"
SELECT main_category, AVG(rating) AS avg_rating
FROM amazon_sales
GROUP BY main_category
ORDER BY avg_rating DESC
LIMIT 10;
```

---

##  Python Analysis

* Data cleaning and preprocessing
* Handling missing values
* Category-wise analysis
* Data visualization using bar charts and plots

---

##  Key Insights

* Some categories consistently receive higher ratings
* Ratings distribution varies across product types
* Combining SQL + Python improves analysis efficiency

---

##  How to Run the Project

### 1️⃣ Clone the repository

```id="2h86g4"
git clone https://github.com/Asmithachapa/analysisOf_amazon_sales.git
```

### 2️⃣ Navigate to the folder

```id="qbwqei"
cd analysisOf_amazon_sales
```

### 3️⃣ Install Python dependencies

```id="21r3dc"
pip install pandas numpy matplotlib seaborn
```

### 4️⃣ Run Jupyter Notebook

```id="m7h4sn"
jupyter notebook sales.ipynb
## 🙌 Author

**Asmitha Chapa**

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!
