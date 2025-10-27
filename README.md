# Employee Management API

A simple and efficient RESTful API for managing employee data — built with **Node.js**, **Express**, and **MongoDB (Mongoose)**.  
This API allows you to perform CRUD (Create, Read, Update, Delete) operations on employee records.

##Features

- Add new employees  
- View all employees or a single employee by ID  
- Update employee details  
- Delete employee records  
- MongoDB integration using Mongoose  
- Environment variable management with dotenv  
- CORS-enabled for easy frontend integration  

---

##Tech Stack

| Technology | Description |
|-------------|-------------|
| **Node.js** | JavaScript runtime environment |
| **Express.js** | Fast and minimalist web framework for Node.js |
| **MongoDB** | NoSQL database for storing employee data |
| **Mongoose** | Elegant MongoDB object modeling for Node.js |
| **dotenv** | Loads environment variables from `.env` |
| **cors** | Enables cross-origin requests |

## Project Structure

employee-management-api/
│
├── employee-management-api/
│ ├── server.js # Main server file
│ ├── models/ # Mongoose data models
│ ├── routes/ # API route handlers
│ ├── controllers/ # Business logic
│ └── config/ # MongoDB and environment config
│
├── .env # Environment variables
├── package.json
├── README.md
└── LICENSE

yaml

## Installation and Setup

### 1. Clone the repository
git clone https://github.com/username>/employee-management-api.git
cd employee-management-api/employee-management-api
## 2. Install dependencies
bash
Copy code
npm install
## 3. Create a .env file in the root directory

PORT=5000
MONGO_URI=mongodb://localhost:27017/employeeDB
## 4. Start MongoDB (if not already running)
bash
Copy code
sudo systemctl start mongod
## 5. Run the server

node server.js
You should see:

Server running on port 5000
MongoDB connected successfully

## API Endpoints
Method	Endpoint	Description
GET	/	API health check
GET	/api/employees	Get all employees
GET	/api/employees/:id	Get a single employee by ID
POST	/api/employees	Add a new employee
PUT	/api/employees/:id	Update employee details
DELETE	/api/employees/:id	Delete an employee

## Example Request (POST)
Request

POST /api/employees
Content-Type: application/json
Body

json
{
  "name": "Jane Doe",
  "email": "jane.doe@example.com",
  "position": "Backend Developer",
  "salary": 80000
}
Response

json
Copy code
{
  "message": "Employee added successfully",
  "employee": {
    "_id": "653f83e9b25f8f456b2c134a",
    "name": "Jane Doe",
    "email": "jane.doe@example.com",
    "position": "Backend Developer",
    "salary": 80000
  }
}
## Useful Commands
npm start	Start the app (if configured in package.json)
node server.js	Run the app manually
npm install	Install all dependencies
sudo systemctl start mongod	Start MongoDB service
sudo systemctl status mongod	Check MongoDB status

## Author
Hesbon Angwenyi
Full Stack Developer | Node.js | React | MongoDB | DevOps
hesbonmanyinsa96@gmail.com
 GitHub: hesbonangwenyi606

## License
This project is licensed under the MIT License.

## Future Improvements
Add authentication (JWT-based login for admins)

Add validation with Joi or Zod
Dockerize the app

CI/CD pipeline for deployment

## Example Health Check
Once the server is running, test the root endpoint:

curl http://localhost:5000
Expected output:
Employee Management API is running..