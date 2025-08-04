# Housekeeping Service Management System

## Overview
The Housekeeping Service Management System is a web application developed to connect users with domestic helper services. This project provides a platform that allows customers to search for, schedule, and manage housekeeping services, while enabling maids to manage their work schedules and contracts.

## Technologies Used

### Backend
- **Java Spring MVC**: Main framework for building the web application  
- **Hibernate**: ORM (Object-Relational Mapping) for database interaction  
- **SQL Server**: Database management system  
- **Python**: Data processing and recommendation system  

### Frontend
- **JSP (JavaServer Pages)**: Rendering the user interface  
- **Bootstrap**: CSS framework for responsive UI design  
- **HTML/CSS/JavaScript**: Building the user interface  
- **jQuery**: JavaScript library for DOM manipulation  

### Tools & Libraries
- **Maven**: Project build and dependency management  
- **Spring Mail**: Sending email notifications  
- **Scikit-learn**: Python library for the recommendation system  
- **Pandas & NumPy**: Data processing in Python  

## System Architecture

### MVC Model
- **Model**: Java entities representing data (Customer, Maid, Service, Booking, Contract, etc.)  
- **View**: JSP pages displaying the user interface  
- **Controller**: Java classes handling business logic and routing  


## Key Features

### For Customers
- Register and log in to their account  
- Search for housekeeping services by type  
- View detailed information about services and maids  
- Book housekeeping services  
- Manage bookings and contracts  
- Make payments  
- Rate the service  

### For Maids
- Register and log in to their account  
- Manage personal information  
- View and manage work schedules  
- Manage contracts  

### For Admins
- Manage user accounts  
- Manage service categories  
- Manage maid profiles  
- Manage bookings and contracts  
- Manage invoices and payments  

## Highlight Features

### Smart Recommendation System
The system integrates a recommendation engine using Python and Scikit-learn to analyze user data and suggest suitable services based on usage history and feedback.

### Cross-Platform Interface
The UI is designed to be responsive and works seamlessly across devices from desktops to smartphones.

### Notification System
Spring Mail is integrated to send email notifications to users about booking statuses, contracts, and payment updates.

## Installation Guide

### System Requirements
- JDK 8 or higher  
- Apache Tomcat 8.5 or higher  
- SQL Server 2012 or higher  
- Python 3.6 or higher with the following libraries:
  - `pandas`
  - `numpy`
  - `scikit-learn`
  - `sqlalchemy`

### Setup Instructions
1. **Clone** the repository  
2. **Configure database connection** in `spring-config-hibernate.xml`  
3. **Configure email settings** in `spring-config-gmail.xml`  
4. **Install required Python libraries**:
   ```bash
   pip install pandas numpy scikit-learn sqlalchemy
5. **Deploy the application to Tomcat server**


