# PostgreSQL Industrial Historian Architecture

This module acts as the centralized data logging backend for the repository's SCADA systems. It provides a standardized schema optimized for handling high-frequency time-series data.

---

## 🔌 Connection Strategies by Platform

Every runtime project in this repository connects to the unified PostgreSQL instance using the following methods:

### 1. Inductive Automation Ignition
Ignition has native database connectivity built into its gateway architecture.
* **Driver Type:** PostgreSQL JDBC Driver (included natively in Ignition).
* **Setup:** Navigate to `Gateway Webpage -> Databases -> Connections -> Create New Connection`. Set your endpoint (`localhost:5432/scada_db`) and database credentials.
* **Usage:** Simply assign tags to the configured database provider using the built-in *Transaction Groups* or the *Tag Historian provider*.

### 2. Rockwell FactoryTalk Optix
Optix treats database interactions as modular C# software nodes.
* **Driver Engine:** Native Entity Framework Core or standard Microsoft ODBC.
* **Setup:** Add a `Database` node inside the Optix project hierarchy, select `ODBC` or `PostgreSQL Store`, and supply the connection string.
* **Usage:** Utilize Optix **NetLogic (C#)** scripts or built-in logging objects to push internal UI parameters into SQL tables asynchronously:
  ```csharp
  var myStore = Project.Current.Get<Store>("DataStores/PostgreSQL_Historian");
  myStore.Query("INSERT INTO scada_historian.tag_history_analog ...", out string[] header, out object[,] values);
  ```

### 3. Siemens WinCC Unified
WinCC Unified traditionally utilizes specialized local storage formats but bridges smoothly to external SQL layers.
* **Driver Engine:** ODBC Driver for PostgreSQL (Requires 64-bit Windows ODBC DSN creation on the host PC runtime computer).
* **Setup:** Map an ODBC System DSN pointing directly to your target PostgreSQL database.
* **Usage:** Trigger database operations inside WinCC Unified Global or Screen-level **JavaScript** modules:
  ```javascript
  // Example WinCC Unified Database Logging Fragment
  let connectionString = "DSN=PostgreSQL_SCADA;UID=postgres;PWD=MySecurePassword;";
  let dbConnection = HMIRuntime.Database.CreateConnection(connectionString);
  let query = "INSERT INTO scada_historian.tag_history_analog (timestamp, tag_id, tag_value) VALUES (NOW(), 1, 1500.5);";
  
  dbConnection.Execute(query, function(result) {
      if (result.Status === HMIRuntime.Database.Enums.DatabaseStatus.Success) {
          // Log successfully processed
      }
  });
  ```

---

## 📈 Optimization Note: TimescaleDB Extension
For true production environments managing millions of tag updates per second, you can seamlessly install the **TimescaleDB extension** directly on top of this standard PostgreSQL framework. It instantly transforms your standard `tag_history` tables into automatic, partition-managed **Hypertables**, optimizing data compression and keeping search indexes small enough to fit within quick-access RAM.

