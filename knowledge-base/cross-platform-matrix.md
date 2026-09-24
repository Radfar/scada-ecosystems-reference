# Multi-vendor feature comparisons (Ignition, AVEVA, etc.)
# Modern SCADA & HMI Reference Implementations

[![License: MIT](https://shields.io)](https://opensource.org)
[![Industry 4.0](https://shields.io)]()
[![Platform Support](https://shields.io)]()

A professional, side-by-side reference implementation comparing the leading modern Industrial SCADA and HMI ecosystems: **Siemens WinCC Unified**, **Rockwell FactoryTalk Optix**, and **Inductive Automation Ignition (Perspective)**. 

This repository simulates a production-grade **packaging line HMI** application across all three platforms, showcasing modern responsive design, ISA-101 situational awareness, and native PLC integration.

---

## 🚀 Project Overview

Modern industrial visualization has shifted away from legacy, proprietary thick-clients toward open, scalable web technologies. This project implements identical industrial use cases—such as real-time process monitoring, historical trending, and alarm management—to evaluate engineering workflows and performance across next-generation platforms.

### 🏗️ Implemented Use Cases
* **Process Overview Screen:** High-performance, responsive layout featuring machine control (start/stop), dynamic motor status indicators, and real-time production metrics.
* **Alarm Subsystem:** Secure, role-based alarm display configuration featuring state tracking and user acknowledgement.
* **Trend Display:** Real-time and historical data logging charts plotting critical process variables (Temperature and Pressure).
* **Cross-Platform Deployment:** Architected for modern web runtimes, remote mobile clients, and physical industrial touch panels.

---

## 📂 Repository Structure

```text
├── WinCC-Unified/               # Siemens TIA Portal project files (Comfort Panel / PC RT)
│   ├── Scripts/                 # Custom JavaScript runtime extensions
│   └── Graphics/                # Scalable Vector Graphics (SVG) components
├── FactoryTalk-Optix/           # Rockwell FT Optix Studio project assets
│   ├── Nodes/                   # Object-oriented UI types and variables
│   └── NetLogic/                # Backend C# (.NET Core) automation scripts
├── Ignition-Perspective/        # Inductive Automation project exports (.gwbk)
│   ├── views/                   # Perspective JSON view definitions
│   └── scripts/                 # Python (Jython) gateway and gateway scripts
└── docs/
    └── screenshots/             # Interface and architectural visuals
```

---

## 📊 Feature & Technology Comparison Matrix

The codebase highlights how common engineering tasks map across different web-native software environments:

| Feature / Metric | Siemens WinCC Unified | Rockwell FT Optix | Inductive Ignition |
| :--- | :--- | :--- | :--- |
| **Primary Scripting** | JavaScript (ECMAScript) [1] | C# (.NET Core) [1] | Python (Jython) [1] |
| **Graphics Engine** | HTML5 / Native SVG [1] | Vector Graphics Engine [1] | HTML5 / CSS3 / SVG [1] |
| **Connectivity** | OPC UA, PROFINET, S7 Driver [1] | OPC DA/UA, EtherNet/IP [1] | OPC UA, MQTT, SQL, Modbus [1] |
| **Database Support** | SQL Server / Unified Archives [1] | SQLite / ODBC / InfluxDB [1] | Native SQL (MySQL, MS SQL, Postgres) [1] |
| **Licensing Model** | Tag-based pricing [1] | Subscription / Token-based [1] | Unlimited Tags & Clients (Server-based) [1] |

---

## 🖼️ Application Interfaces

### 1. Process Overview & Comparison
![Main Screen](https://github.com/Radfar/WinCC-Unified-FactoryTalk-Optix-and-Ignition/blob/main/compare.jpg)

### 2. Historical Trend Analysis
![Trend Display](docs/screenshots/trend-display.png)

---

## 🔧 Setup & Deployment Prerequisites

To restore, modify, or simulate these projects locally, you will need the respective IDE software packages installed:

* **Siemens WinCC Unified:** TIA Portal V18/V19 (or newer) with WinCC Unified PC Runtime or Unified Comfort Engineering licenses.
* **FactoryTalk Optix:** FactoryTalk Optix Studio (Standard or Pro IDE).
* **Ignition:** Ignition Maker Edition or Standard Edition (v8.1+).

### Quick Start
1. Clone this repository to your local engineering workstation:
   ```bash
   git clone https://github.com
   ```
2. Navigate to your target platform folder.
3. Open the project configuration using your respective platform IDE and link your simulated or live PLC tags (configured for an S7-1500 or ControlLogix driver topology).

---

## 💡 Key Engineering Takeaways

* **WinCC Unified:** Deep, seamless integration within the Siemens TIA Portal environment. Significantly outpaces legacy WinCC runtimes regarding web deployment efficiency.
* **FactoryTalk Optix:** Highly flexible, object-oriented framework. Exceptional version control potential due to its Git-friendly project file structure.
* **Ignition Perspective:** Unmatched open IT/OT convergence capabilities. Web-first architecture provides unparalleled flexibility for complex SQL data logging and custom Python scripting.

---

## 🤝 Contributing

Contributions to modernize or expand these reference architectures are welcome!
1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes.
4. Push to the Branch.
5. Open a Pull Request.

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more details.
