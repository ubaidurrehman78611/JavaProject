# NewDemo - EJB Product Management Application

This is a Jakarta EE 11 application that demonstrates EJB (Enterprise JavaBeans) functionality for managing products in a database.

## Features

- Add products to database using EJB
- View all products from database
- Product count tracking
- JSF-based user interface

## Prerequisites

1. **Java 17** or higher
2. **Maven 3.6** or higher
3. **MySQL 8.0** or higher
4. **Application Server** (GlassFish, WildFly, or TomEE)

## Database Setup

1. Start MySQL server
2. Run the database setup script:
   ```sql
   source database_setup.sql
   ```
   Or manually create the database:
   ```sql
   CREATE DATABASE IF NOT EXISTS product;
   ```

3. Ensure MySQL user credentials match those in `persistence.xml`:
   - Username: `root`
   - Password: `root`
   - Database: `product`

## Application Setup

1. **Clone/Download** the project
2. **Navigate** to the project directory
3. **Build** the project:
   ```bash
   mvn clean package
   ```

## Deployment

### Option 1: GlassFish Server
1. Download and install GlassFish 7.0 or higher
2. Start GlassFish server
3. Deploy the WAR file:
   ```bash
   asadmin deploy target/newDemo-1.0-SNAPSHOT.war
   ```

### Option 2: WildFly Server
1. Download and install WildFly 30 or higher
2. Start WildFly server
3. Deploy the WAR file to the `deployments` folder

### Option 3: TomEE
1. Download and install TomEE Plume
2. Start TomEE server
3. Deploy the WAR file to the `webapps` folder

## Usage

1. **Access** the application: `http://localhost:8080/newDemo-1.0-SNAPSHOT/`
2. **Add Products**:
   - Enter a price in the "New Price" field
   - Select a product name from the dropdown
   - Click "Add Product"
3. **View Products**: Click "Page2" to see all products in the database

## Troubleshooting

### Common Issues:

1. **Database Connection Error**:
   - Ensure MySQL is running
   - Verify database credentials in `persistence.xml`
   - Check if the `product` database exists

2. **EJB Not Found Error**:
   - Ensure you're using an application server (not just Tomcat)
   - Verify the server supports EJB 4.x

3. **JSF Errors**:
   - Check that the application server includes JSF implementation
   - Verify the JSF namespaces in XHTML files

4. **Build Errors**:
   - Ensure Java 17 is being used
   - Run `mvn clean` before building

## Project Structure

```
src/
├── main/
│   ├── java/
│   │   └── com/example/newdemo/
│   │       ├── cdi/ProductCDI.java      # CDI Bean for UI
│   │       ├── ejb/ProductEJB.java      # EJB for business logic
│   │       └── entity/Product.java      # JPA Entity
│   ├── resources/
│   │   └── META-INF/
│   │       ├── beans.xml                # CDI configuration
│   │       └── persistence.xml          # JPA configuration
│   └── webapp/
│       ├── index.xhtml                  # Main page
│       ├── page2.xhtml                  # Product list page
│       └── WEB-INF/
│           ├── faces-config.xml         # JSF navigation
│           └── web.xml                  # Web configuration
```

## Key Components

- **Product Entity**: JPA entity mapped to `items` table
- **ProductEJB**: Stateless EJB with transaction management
- **ProductCDI**: Session-scoped CDI bean for UI interaction
- **JSF Pages**: User interface for adding and viewing products

## Database Schema

The `items` table is automatically created with:
- `product_id` (Primary Key, Auto-increment)
- `product_name` (VARCHAR)
- `product_price` (DOUBLE)

## Logging

The application includes console logging for:
- Successful product additions
- Database errors
- Validation errors

Check the application server logs for detailed information. 