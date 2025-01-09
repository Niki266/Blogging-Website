# Blogging Tool with SQLite3 and Node.js 

This is a lightweight blogging tool built with SQLite3 and Node.js. It enables users to create, edit, and view blog articles with a simple and intuitive interface.

## Features
- **Reader Page**: View all published articles.
- **Author Page**: Create and edit articles.
- **Seamless Navigation**: Easily switch between reader and author pages.
- **Database Management**: SQLite3 for storing articles with simple commands for creation and cleanup.

## Installation Requirements
- **Node.js**
- **SQLite3**

### Installation Steps
1. Clone the repository and navigate to the project directory.
2. Install all required Node packages:
   ```bash
   npm install
   ```
3. If there is an existing database, clean it:
   ```bash
   npm run clean-db
   ```
   *(Optional: Skip this step if starting fresh.)*
4. Create the database:
   ```bash
   npm run build-db
   ```
5. Start the server:
   ```bash
   npm run start
   ```
6. Access the web application in your browser at [http://localhost:3000](http://localhost:3000).

## Commands
- `npm run start` - Start the server.
- `npm run build-db` - Create the database.
- `npm run clean-db` - Delete the database.
- `npm install` - Install all required Node packages.

## Database Schema
The database schema is defined in `db_schema.sql`. This file contains the structure and relationships for the SQLite database.

## How to Use the Web App
1. Open the web app at [http://localhost:3000](http://localhost:3000).
2. **Main Pages**:
   - **Reader Page**: [http://localhost:3000/](http://localhost:3000/)
     - View all published articles.
   - **Author Page**: [http://localhost:3000/author](http://localhost:3000/author)
     - Create new articles or edit existing ones.
3. Use the navigation buttons in the top-right corner to switch between Reader and Author pages.

