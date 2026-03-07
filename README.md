# Character API - Spring Boot Demo

VIDEO: https://www.loom.com/share/ae509a6aa20d442785d176682b5b8938

A comprehensive RESTful API for managing character records, built with Spring Boot, Spring Data JPA, and PostgreSQL. This project demonstrates fundamental concepts for building APIs with Spring Boot.

## Table of Contents

- [What is This Project?](#what-is-this-project)
- [Technology Stack](#technology-stack)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [Project Architecture](#project-architecture)
- [API Endpoints](#api-endpoints)
- [Key Spring Boot Concepts](#key-spring-boot-concepts)
- [Database Schema](#database-schema)

---

## What is This Project?

This is a **CRUD API** (Create, Read, Update, Delete) that manages character records. It demonstrates:

- How to build a REST API with Spring Boot
- How to connect to a PostgreSQL database using JPA
- How to structure a Spring Boot application with layers (Controller, Service, Repository)
- How to handle HTTP requests and responses
- How to perform database operations

**CRUD** stands for:

- **C**reate - Add new character records
- **R**ead - Retrieve character records
- **U**pdate - Modify existing character records
- **D**elete - Remove characters

---

## Technology Stack

| Technology          | Version | Purpose                                |
| ------------------- | ------- | -------------------------------------- |
| **Java**            | 25      | Programming language                   |
| **Spring Boot**     | 4.0.3   | Framework for building the application |
| **Spring Data JPA** | Latest  | ORM layer for database access          |
| **Hibernate**       | Latest  | JPA implementation                     |
| **PostgreSQL**      | Latest  | Relational database                    |
| **Maven**           | Latest  | Build and dependency management        |

### Java - [Spring ORM with JPA and Hibernate](https://medium.com/@burakkocakeu/jpa-hibernate-and-spring-data-jpa-efa71feb82ac)
- We are using ORM (Object-Relational Mapping) to deal with databases. This is a technique that allows us to interact with a relational database using object-oriented programming principles.
- JPA (Jakarta Persistence, formerly Java Persistence API) is a specification that defines ORM standards in Java. It provides an abstraction layer for ORM frameworks to make concrete implementations.
- Hibernate: Hibernate is a popular ORM framework that implements JPA. It simplifies database operations by mapping Java objects to database tables and handling queries efficiently.
- Spring ORM allows seamless integration of Hibernate and JPA, making database interactions more manageable and reducing boilerplate code.

### Key Dependencies Explained

**spring-boot-starter-data-jpa**: Provides Spring Data JPA for simplified database access through repositories and automatic query generation.

**spring-boot-starter-webmvc**: Provides Spring Web MVC for building REST APIs with annotations like `@Controller`, `@GetMapping`, etc.

**postgresql**: JDBC driver to connect to PostgreSQL database.

---

## Installation & Setup

### Prerequisites

Before you begin, ensure you have installed:

1. **Java 25 JDK**
   - Download from [Oracle Java](https://www.oracle.com/java/technologies/downloads/) or use a package manager
   - Verify installation: `java -version`

2. **Neon.tech PostgreSQL Database** (Cloud-based, Serverless)
   - This project uses [Neon.tech](https://neon.tech), a serverless PostgreSQL database in the cloud
   - You don't need to install PostgreSQL locally
   - Sign up for a free account at [Neon.tech](https://neon.tech)
   - You only need an internet connection to connect to the database

3. **Git** (optional, for cloning the project)
   - Download from [Git Official Site](https://git-scm.com/)

### About Maven Wrapper

**Good news!** This project includes the **Maven Wrapper** (`mvnw` on Mac/Linux and `mvnw.cmd` on Windows). This means you **do not need to install Maven separately**. The wrapper automatically downloads the correct Maven version for you.

The Maven Wrapper is a handy tool that ensures everyone working on the project uses the same Maven version, reducing compatibility issues.

### Setup Instructions

1. **Clone or Download the Project**

   ```bash
   git clone <repository-url>
   cd sp26-crud-api-demo
   ```

2. **Install Dependencies**
   The Maven Wrapper will automatically download dependencies from the `pom.xml` file:

   **On Windows**:

   ```cmd
   mvnw.cmd clean install
   ```

   **On Mac/Linux**:

   ```bash
   ./mvnw clean install
   ```

   This command:
   - `clean`: Removes previous build artifacts
   - `install`: Downloads all dependencies and compiles the project
   - First run may take a few minutes as Maven is downloaded

3. **Database Configuration (Neon.tech Serverless PostgreSQL)**

   #### Step 1: Get Your Neon.tech Connection String

   1. Navigate to [Neon.tech](https://neon.tech)
   2. Sign in to your account
   3. In your project dashboard, find your connection string
   4. It will look like: `postgresql://username:password@host:5432/dbname`

   #### Step 2: Stop Tracking `application.properties` Locally

   To prevent accidentally committing your database credentials to Git, use `git skip-worktree` to exclude your local copy:

   ```bash
   git update-index --skip-worktree src/main/resources/application.properties
   ```

   This tells Git to ignore any changes you make to this file locally. You can now safely edit the file without worrying about committing sensitive data.

   #### Step 3: Update Your Connection String

   Edit `src/main/resources/application.properties` and add your Neon.tech PostgreSQL connection string:

   ```properties
   spring.application.name=crud-api
   spring.datasource.url=jdbc:postgresql://host:5432/dbname
   spring.datasource.username=your_neon_username
   spring.datasource.password=your_neon_password
   spring.jpa.hibernate.ddl-auto=update

   #Log out sql queries
   logging.level.org.hibernate.SQL=DEBUG
   logging.level.org.hibernate.type.descriptor.sql.BasicBinder=TRACE
   logging.level.org.hibernate.orm.jdbc.bind=TRACE
   ```

   Replace with your actual Neon.tech credentials:
   - `host`: Your Neon.tech host (e.g., `some-cool-projectName-pooler.c-7.us-east-1.aws.neon.tech`)
   - `dbname`: Your database name (usually `neondb`)
   - `your_neon_username`: Your Neon.tech username
   - `your_neon_password`: Your Neon.tech password

   #### Example Connection String

   ```properties
   spring.datasource.url=jdbc:postgresql://ep-cool-cherry-ai9ih0ua-pooler.c-7.us-east-1.aws.neon.tech:5432/neondb
   spring.datasource.username=neondb_owner
   spring.datasource.password=your_password_here
   ```

   #### To Resume Tracking the File

   If you need to revert and track the file again:

   ```bash
   git update-index --no-skip-worktree src/main/resources/application.properties
   ```

   **Important Note**: This approach (using `git skip-worktree`) keeps credentials safe locally while the file can be tracked in Git. However, in production environments, database credentials should be managed using environment variables or cloud-based secret management services like AWS Secrets Manager or Azure Key Vault.

4. **Verify Setup**

   **On Windows (PowerShell)**:

   ```cmd
   mvnw.cmd compile
   ```

   **On Mac/Linux (Bash/zsh)**:

   ```bash
   ./mvnw compile
   ```

   If successful, you'll see `BUILD SUCCESS` at the end.

---

## Running the Application

### Using Maven Wrapper

**On Windows**:

```cmd
mvnw.cmd spring-boot:run
```

**On Mac/Linux**:

```bash
./mvnw spring-boot:run
```

The application will start on **http://localhost:8080**

You should see output like:

```
Started CrudApiApplication in 4.532 seconds
```

### Using Java (After Building)

Alternatively, after building the project, you can run the compiled JAR file:

```bash
java -jar target/crud-api-0.0.1-SNAPSHOT.jar
```

### Using VS Code GUI

1. **Open the Project**: Open the project folder in VS Code
2. **Install Extension**: Install the "Extension Pack for Java" (by Microsoft) if not already installed
3. **Run the Application**:
   - Go to the Explorer view (left sidebar)
   - Navigate to `src > main > java > com > csc340 > crud_api > CrudApiApplication.java`
   - Right-click on `CrudApiApplication.java`
   - Select **"Run Java"** or click the ▶️ **Run** button that appears above the class definition
4. **View Output**: The terminal will show the Spring Boot startup messages and confirm the application is running

### Using IntelliJ IDEA GUI

1. **Open the Project**: Open the project folder in IntelliJ IDEA (it will recognize it as a Maven project)
2. **Configure JDK**:
   - Go to **File → Project Structure → Project**
   - Set the Project SDK to Java 25
3. **Run the Application**:
   - Navigate to `src > main > java > com > csc340 > crud_api > CrudApiApplication.java` in the Project Explorer
   - Right-click on `CrudApiApplication.java`
   - Select **"Run 'CrudApiApplication.main()'"** or click the ▶️ **Run** button next to the class name
4. **View Output**: The Run window at the bottom will show Spring Boot startup messages and confirm the application is running

**Alternative: Using the Run Menu**:
- Go to **Run → Run...** and select `CrudApiApplication` from the list
- Or use the keyboard shortcut: **Shift+F10** (Windows) or **Ctrl+R** (Mac)

### Stopping the Application

Press `Ctrl+C` in your terminal to stop the running application. If using IDE GUI, click the ⏹️ **Stop** button in the Run/Debug toolbar.

---

## Project Architecture

### Folder Structure

```
src/main/java/com/csc340/crud_api/
├── CrudApiApplication.java          # Entry point of the application
├── CharacterApiController.java         # Handles HTTP requests
├── CharacterService.java               # Business logic layer
├── CharacterRepository.java            # Database access layer
└── Character.java                      # Entity/Model class

src/main/resources/
└── application.properties             # Configuration file
```

### Architectural Pattern: **Layered Architecture**

This project follows a three-tier architecture pattern:

```
┌─────────────────────────────────────┐
│   HTTP Client (REST Client, Browser)│
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Controller Layer                 │
│  (CharacterApiController)             │
│  - Handles HTTP requests/responses  │
│  - Maps URLs to methods(endpoints)  │
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Service Layer                    │
│  (CharacterService)                   │
│  - Contains business logic          │
│  - Processes data from repositories │
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Repository Layer                 │
│  (CharacterRepository)                │
│  - Communicates with database       │
│  - Performs CRUD operations         │
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Database                         │
│  (PostgreSQL)                       │
└─────────────────────────────────────┘
```

### Why This Architecture?

- **Separation of Concerns**: Each layer has a specific responsibility
- **Reusability**: Service layer logic can be reused by multiple controllers
- **Testability**: Each layer can be tested independently
- **Maintainability**: Changes in one layer don't require changes in others

---

## API Endpoints

All endpoints use the base URL: `http://localhost:8080/api/Characters`

### 1. Get All Characters

```http
GET /api/Characters/
```

**Description**: Retrieve a list of all Characters in the database.

**Parameters**: None

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of Character objects

#### Example Request

```bash
curl http://localhost:8080/api/Characters/
```

#### Example Response (Status: 200 OK)

```json
[
  {
    "CharacterId": 1,
    "name": "Alice Johnson",
    "email": "alice@university.edu",
    "major": "Computer Science",
    "gpa": 3.8
  },
  {
    "CharacterId": 2,
    "name": "Bob Smith",
    "email": "bob@university.edu",
    "major": "Mathematics",
    "gpa": 3.5
  }
]
```

---

### 2. Get Character by ID

```http
GET /api/Characters/{id}
```

**Description**: Retrieve a single Character by their ID.

**Path Parameters**:

- `id` (Long, required): The unique identifier of the Character

**Response**:

- **Status Code**: `200 OK` (if found) or `404 Not Found` (if not found)
- **Body**: Character object

#### Example Request

```bash
curl http://localhost:8080/api/Characters/1
```

#### Example Response (Status: 200 OK)

```json
{
  "characterdescription": "Heroic plumber saves princesses way too much and eats tons of mushes"
  "characterid": 1,
  "charactername": "Mario",
  "characterspecies": "human",
  "characteruniverse": "Super Mario Brothers"
}
```

#### Example Response if not found (Status: 404 Not Found)

```
(Empty body)
```

---

### 3. Create a New Character

```http
POST /api/Characters/
```

**Description**: Create a new Character record in the database.

**Request Body**: Character object with the following fields:

- `characterdescription` (String, required): Character's description
- `characterid` (String, required, unique): Character's id
- `charactername` (String, required): Character's full or partial name
- `characterspecies` (String, required): Character's species
- `characteruniverse` (String, required): Character's place of origin

**Response**:

- **Status Code**: `200 OK` (if created successfully)
- **Body**: Created Character object with assigned `CharacterId`

#### Example Request

```bash
curl -X POST http://localhost:8080/api/Characters/ \
  -H "Content-Type: application/json" \
  -d '{
    "characterdescription": "The best torterra",
    "characterid": "1",
    "charactername": "Turt",
    "characterspecies": Tortoise, Torterra
    "characteruniverse": Pokemon
  }'
```

#### Example Response (Status: 200 OK)

```json
{
    "characterdescription": "The best torterra",
    "characterid": "1",
    "charactername": "Turt",
    "characterspecies": Tortoise, Torterra
    "characteruniverse": Pokemon
  }'
```

---

### 4. Get Characters by species

```http
GET /api/Characters/species/{species}
```

**Description**: Retrieve all Characters with a specific species or universe.

**Path Parameters**:

- `species or universe` (String, required): The species or universe to filter by (e.g., "SMB, or human")

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of Character objects

---


---

### 6. Search Characters by Name

```http
GET /api/Characters/search?name={name}
```

**Description**: Search for Characters by name (partial match supported) or retrieve all Characters if no name is provided.

**Query Parameters**:

- `name` (String, optional): The name or part of the name to search for

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of matched Character objects

#### Example Request

```bash
curl "http://localhost:8080/api/Characters/search?name=Alice"
```

#### Example Response (Status: 200 OK)

```json
[
  {
    "CharacterId": 1,
    "name": "Alice Johnson",
    "email": "alice@university.edu",
    "major": "Computer Science",
    "gpa": 3.8
  }
]
```

---

### 7. Get Character by Universe

```http
GET /api/Characters/universe/{universe}
```

**Description**: Retrieve a Character by their universe.

**Path Parameters**:

- `universe` (String, required): The Character's universe

**Response**:

- **Status Code**: `200 OK` (if found) or `404 Not Found` (if not found)
- **Body**: Character object

---

### 8. Update a Character

```http
PUT /api/Characters/{id}
```

**Description**: Update an existing Character's information.

**Path Parameters**:

- `id` (Long, required): The ID of the Character to update

**Request Body**: Character object with fields to update:

- `charactername` (String): Updated name
- `species` (String): Updated species
- `universe` (String): Updated universe
- `description` (Double): Updated description

**Response**:

- **Status Code**: `200 OK` (if updated successfully) or `404 Not Found` (if Character not found)
- **Body**: Updated Character object

#### Example Request

```bash
curl -X PUT http://localhost:8080/api/Characters/1 \
  -H "Content-Type: application/json" \
  -d '{
    "name": "toppy",
    "species": "egg",
    "universe": "normal earth",
    "descrption": video game master, plays literally anything from souls like to farm games, hes very weird in terms of his likes kinda jack of all trades
  }'
```

#### Example Response (Status: 200 OK)

```json
{
    "characterid" = 2
    "name": "toppy",
    "species": "egg",
    "universe": "normal earth",
    "descrption": video game master, plays literally anything from souls like to farm games, hes very weird in terms of his likes kinda jack of all trades
  }'
```

---

### 9. Delete a Character

```http
DELETE /api/Characters/{id}
```

**Description**: Delete an existing Character record from the database.

**Path Parameters**:

- `id` (Long, required): The ID of the Character to delete

**Response**:

- **Status Code**: `204 No Content` (successful deletion)
- **Body**: Empty

#### Example Request

```bash
curl -X DELETE http://localhost:8080/api/Characters/1
```

#### Example Response (Status: 204 No Content)

```
(Empty body)
```

---

## Key Spring Boot Concepts

### What is Spring Boot?

Spring Boot is a framework that simplifies building production-ready Spring applications. It provides:

- Auto-configuration of Spring application based on jar dependencies
- Embedded web server (Tomcat) - no need to deploy WAR files
- Convention over configuration - sensible defaults
- Easy integration with databases and other services

### @Controller and @RequestMapping

```java
@Controller
@RequestMapping("/api/Characters")
public class CharacterApiController { }
```

- `@Controller`: Tells Spring this class handles HTTP requests
- `@RequestMapping("/api/Characters")`: All endpoints in this class start with `/api/Characters`

### HTTP Mapping Annotations

- `@GetMapping`: Handles GET requests (retrieve data)
- `@PostMapping`: Handles POST requests (create data)
- `@PutMapping`: Handles PUT requests (update data)
- `@DeleteMapping`: Handles DELETE requests (delete data)

### @Service and Dependency Injection

```java
@Service
public class CharacterService {
  private final CharacterRepository CharacterRepository;

  public CharacterService(CharacterRepository CharacterRepository) {
    this.CharacterRepository = CharacterRepository;
  }
}
```

- `@Service`: Marks a class as a service component (business logic)
- Constructor injection: Dependencies are provided through the constructor (best practice)

### Spring Data JPA Repository

```java
public interface CharacterRepository extends JpaRepository<Character, Long> {
  List<Character> findByMajor(String major);
  Character findByEmail(String email);
}
```

- `JpaRepository<Character, Long>`: Provides CRUD methods automatically
- Spring automatically generates implementations for custom finder methods
- `findByMajor` generates a query like: `SELECT * FROM Characters WHERE major = ?`

### @Entity and JPA Annotations

```java
@Entity
@Table(name = "Characters")
public class Character {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  public Long CharacterId;
}
```

- `@Entity`: Marks this class as a database table
- `@Table(name = "Characters")`: Specifies the table name
- `@Id`: Marks the primary key field
- `@GeneratedValue`: Auto-generates IDs (database handles increment)

### ResponseEntity

```java
public ResponseEntity<Character> getCharacterById(@PathVariable Long id) {
  Character Character = CharacterService.getCharacterById(id);
  if (Character != null) {
    return ResponseEntity.ok(Character);  // Status 200
  } else {
    return ResponseEntity.notFound().build();  // Status 404
  }
}
```

`ResponseEntity` provides full control over HTTP responses including:

- Status codes (200, 404, 201, etc.)
- Response headers
- Response body

---

## Database Schema

The application uses a single table to store Character data:

### CharacterS Table

| Column       | Type             | Constraints      | Description                                        |
| ------------    | ---------------- | ---------------- | -----------------------------------             |
| `Character_id`    | SERIAL           | PRIMARY KEY             | Auto-incrementing unique identifier    |
| `charactername`       | VARCHAR(255)     | NOT NULL            | Character's full name                  |
| `characterspecies`      | VARCHAR(255)     | NOT NULL, UNIQUE  | Character's species (must be unique)   |
| `characteruniverse`      | VARCHAR(255)     | Can be NULL      | Character's universe                   |
| `characterdescription`        | DOUBLE PRECISION | Can be NULL | Character's descrption                 |

### SQL (for reference)

```sql
CREATE TABLE Characters (
  Character_id SERIAL PRIMARY KEY,
  charactername VARCHAR(255) NOT NULL,
  characteruniverse VARCHAR(255) NOT NULL UNIQUE,
  characterspecies VARCHAR(255), NOT NULL UNIQUE
  characterdescription  VARCHAR(255)
);
```

**Note**: This schema is automatically created by Hibernate based on the entity class when `spring.jpa.hibernate.ddl-auto=update` is set in `application.properties`.

---

## Testing the API

### Using Postman/Echo API/Bruno (GUI)

1. Create a new request
2. Select HTTP method (GET, POST, PUT, DELETE)
3. Enter URL (e.g., http://localhost:8080/api/Characters/)
4. If POST/PUT, go to "Body" tab → select "raw" and "JSON"
5. Enter JSON data and click "Send"

---

## Common Issues and Solutions

### Issue: Port 8080 is already in use

**Solution**: Change the port in `application.properties`:

```properties
server.port=8081
```

Then access the API at `http://localhost:8081/api/Characters/`

### Issue: "Connection refused" when accessing database

**Solution**:
- Ensure you have **internet access** to connect to Neon.tech (the database is cloud-based and always running)
- Verify your connection string is correct in `application.properties`
- Check that your username and password from Neon.tech are correct
- Make sure the host/endpoint is reachable (not blocked by firewall)

### Issue: Getting 404 errors

**Solution**:

- Verify the endpoint URL is correct
- Make sure the application is running (use `mvnw.cmd spring-boot:run` on Windows or `./mvnw spring-boot:run` on Mac/Linux)
- Check the base path is `/api/Characters`

### Issue: JSON parsing errors in POST/PUT requests

**Solution**:

- Ensure `Content-Type: application/json` header is set
- Verify JSON syntax is valid (use online JSON validator)
- Check all required fields are included (name and email are required)

---

## Additional Resources

- [Spring Boot Official Documentation](https://spring.io/projects/spring-boot)
- [Spring Data JPA Guide](https://spring.io/projects/spring-data-jpa)
- [REST API Best Practices](https://restfulapi.net/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
