# Grocery Sales Dashboard
This project showcases an interactive **Power BI dashboard** built from data stored in a **MySQL database**.  
It analyzes grocery sales performance across outlets, item types, fat content, and locations.

## 📑 Table of Contents

1. [📊 Project Overview](#-project-overview)  
2. [⚙️ Tools & Technologies](#️-tools--technologies)  
3. [🗂️ Dataset](#️-dataset)  
4. [🧠 Dashboard Insights](#-dashboard-insights)  
5. [🔍 Recommendations](#-recommendations)  
7. [🚀 How to Use](#-how-to-use)  
9. [✨ Contact](#-contact)

10. ## 📊 Project Overview

The goal of this dashboard is to provide insights into grocery sales trends, outlet performance, and category contributions.  
It connects directly to MySQL to demonstrate **end-to-end data analysis** — from database queries to visualization.

## ⚙️ Tools & Technologies

- **MySQL** → Data storage, cleaning, and creation of analytical views  
- **Power BI** → Dashboard design, visualization, and insights  
- **Python / CSV** → (Optional) Data cleaning and export  
- **GitHub** → Version control and project documentation

  ## 🗂️ Dataset

| Field | Description |
|--------|-------------|
| Item Identifier | Unique code for each product |
| Item Type | Category of grocery item |
| Item Fat Content | Fat level of the item (Low Fat, Regular, etc.) |
| Outlet Identifier | Unique code for each outlet |
| Outlet Type | Format of the store (e.g., Supermarket Type1) |
| Outlet Location Type | Tier classification of outlet location |
| Outlet Establishment Year | Year the outlet was established |
| Total Sales | Total sales value per item/outlet |
| Rating | Customer or performance rating |

## 🧠 Dashboard Insights

### Main Visuals

1. **Treemap** – Displays *share of total sales by outlet location type*.  
2. **Clustered Column Chart (Top N)** – Highlights *Top 10 item types by total sales* using Top N filter.  
3. **Stacked/Clustered Column Chart** – Compares *item fat content across item types*.  
4. **Matrix Table** – Shows *breakdown of total and average sales by outlet and fat content*.  
5. **Line Chart** – Visualizes *sales trends over the years*.  

### Supporting Visuals

- **Cards** – Display key metrics such as:
  - Total Sales  
  - Average Sales  
  - Number of Items  
  - Average Rating  
- **Slicers** – Used to filter the dashboard dynamically by:
  - Outlet Location Type  
  - Item Fat Content
 
### Dynamic Title

A dynamic title was created using a DAX measure:

    ```DAX
Dynamic Title = 
"Grocery Sales  Dashboard - " &
SELECTEDVALUE('grocery_cleaned'[Outlet Location Type], "All Locations") & 
" | " &
SELECTEDVALUE('grocery_cleaned'[Item Fat Content], "All Items")```

## 🔍 Recommendations

- Use **Treemap** for a compact, hierarchical view of outlet sales share.  
- Use **Stacked Column Chart** to show category contribution within each fat content group.  
- Use **Slicer + Top N filter** to display the *Top 10 Item Types by Sales*.  
- Add a **Dynamic Title** for better context during filtering.

## 🚀 How to Use

1. Open `grocery_sales_dashboard.pbix` in **Power BI**.  
2. Connect to your **MySQL database** if required.  
3. Refresh the data to update visuals.  
4. Interact with slicers and watch the **dynamic title** adjust automatically.

## 🤝 Contribution

Contributions are welcome!  
If you’d like to improve this project:
1. Fork the repository  
2. Create a new branch (`feature-name`)  
3. Make your changes and commit  
4. Open a pull request with a clear explanation of what you’ve added or fixed  

## Contact

Lets connect:
- [LinkedIn](www.linkedin.com/in/chinenye-jennifer-nwachukwu)
- [Email](mailto:nwachukwuchinenyejennifer@gmail.com)

## 🕓 Last Updated

October 13, 2025
