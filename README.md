# Todo Application - Full Stack (Spring Boot + React)

A simple Todo application built with Spring Boot backend and React frontend.

## Project Structure

```
Todo Application/
├── backend/                    # Spring Boot Backend
│   ├── pom.xml                # Maven configuration
│   └── src/
│       ├── main/
│       │   ├── java/com/example/todo/
│       │   │   ├── TodoApplication.java
│       │   │   ├── controller/
│       │   │   │   └── TodoController.java
│       │   │   ├── entity/
│       │   │   │   └── Todo.java
│       │   │   ├── repository/
│       │   │   │   └── TodoRepository.java
│       │   │   └── service/
│       │   │       └── TodoService.java
│       │   └── resources/
│       │       └── application.properties
│
└── frontend/                   # React Frontend
    ├── package.json
    ├── public/
    │   └── index.html
    └── src/
        ├── App.js
        ├── App.css
        ├── index.js
        ├── index.css
        ├── services/
        │   └── TodoService.js
        └── components/
            ├── TodoForm.js
            ├── TodoList.js
            └── TodoItem.js
```

## Features

### Backend (Spring Boot)
- RESTful API for CRUD operations
- H2 in-memory database
- Data validation
- Cross-origin support for React frontend
- Clean architecture (Controller → Service → Repository)

### Frontend (React)
- Display list of todos
- Add new todo
- Mark todo as complete/incomplete
- Delete todo
- Update todo (inline edit)
- Clean, responsive UI
- Error handling and loading states

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/todos` | Get all todos (optional filter: `?completed=true/false`) |
| GET | `/api/todos/{id}` | Get todo by ID |
| POST | `/api/todos` | Create new todo |
| PUT | `/api/todos/{id}` | Update todo |
| DELETE | `/api/todos/{id}` | Delete todo |

## Todo Entity

```json
{
  "id": 1,
  "title": "Sample Todo",
  "description": "This is a sample todo",
  "completed": false,
  "createdAt": "2023-12-01T10:30:00"
}
```

## How to Run

### Prerequisites
- Java 17 or higher
- Node.js 16 or higher
- npm or yarn

### 1. Start the Backend (Simple Java Server)

```bash
cd backend
./run-simple-server.sh
```

The backend will start on `http://localhost:8080`

**Note**: This is a standalone Java server that doesn't require Maven or Gradle. It includes all the same REST API endpoints as the Spring Boot version.

### 2. Start the Frontend

Open a new terminal and run:

```bash
cd frontend
npm install
npm start
```

The frontend will start on `http://localhost:3000`

## Usage

1. Open `http://localhost:3000` in your browser
2. Add new todos using the form
3. Click the checkbox to mark todos as complete
4. Click "Edit" to modify existing todos
5. Click "Delete" to remove todos

## Technology Stack

### Backend (Simple Java Server)
- Pure Java (no framework required)
- Built-in HTTP server
- In-memory data storage
- Java 17+

### Alternative Backend (Spring Boot)
- Spring Boot 3.2.0
- Spring Data JPA
- Spring Web
- H2 Database
- Maven/Gradle
- Java 17

### Frontend
- React 18
- Axios for HTTP requests
- CSS3 for styling
- Create React App

## Development Notes

- The backend uses a simple in-memory Java server (no external database required)
- Data will be lost when the application restarts (same as H2 in-memory)
- CORS is configured to allow requests from `http://localhost:3000`
- The frontend includes proper error handling and loading states
- All form validations are implemented on both frontend and backend

## Alternative Backend Options

If you prefer to use the original Spring Boot version:

1. **Install Maven or Gradle**:
   - Maven: `choco install maven` or download from https://maven.apache.org/
   - Gradle: `choco install gradle` or download from https://gradle.org/

2. **Run Spring Boot**:
   ```bash
   cd backend
   mvn spring-boot:run  # or ./gradlew bootRun
   ```

The Spring Boot version includes H2 database console at `http://localhost:8080/h2-console`
