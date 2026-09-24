# Unified SCADA & Modern HMI Reference Architectures

[![License: MIT](https://shields.io)](https://opensource.org)
[![Industry 4.0](https://shields.io)]()
[![Ecosystem Support](https://shields.io)]()

A comprehensive, production-grade repository combining **cross-platform reference code implementations** and an **industrial automation knowledge base**. 

This project bridges the gap between traditional Operational Technology (OT) and modern Information Technology (IT). It implements identical industrial use cases—such as real-time process monitoring, database tracking, and alarm infrastructure—across modern web-native SCADA platforms while documenting the architectural layout of legacy and modern ecosystems.

---

## 🚀 Repository Objectives

1. **Side-by-Side Implementations:** Functional code baselines tracking a simulated packaging line HMI across next-generation web platforms (HTML5, SVG, JavaScript, C#, and Python).
2. **Ecosystem Decoupling:** Comprehensive documentation clarifying the evolution, features, runtimes, and engineering frameworks of major vendors.
3. **Industrial DevOps Framework:** Demonstrating how modern automation platforms scale, utilize database historians, and operate with Git version control systems.

---

## 📊 Comprehensive Platforms Comparison Matrix

This repository tracks how common engineering tasks, licensing parameters, and software stacks scale across the industry's four leading vendor platforms:

| Feature Matrix | Siemens Ecosystem | Rockwell Ecosystem | Inductive Ignition | AVEVA / Wonderware |
| :--- | :--- | :--- | :--- | :--- |
| **Primary Scripting** | JavaScript / ANSI-C [1, 2] | C# (.NET Core) / VB [1] | Python (Jython) [1] | QuickScript / .NET [1] |
| **Graphics Engine** | HTML5 / Native SVG [1, 2] | Vector Graphics Engine [1] | HTML5 / CSS3 / SVG [1] | HTML5 Web Client [1] |
| **Web Integration** | WebUX & WinCC Unified [1, 2] | FactoryTalk ViewPoint / Optix [1] | 100% Web-Native (Perspective) [1] | InTouch Access Anywhere [1] |
| **Licensing Framework** | Tag-based variables [1] | Token & Subscription [1] | Unlimited Tags / Server Base [1] | Unlimited / Server Base [1] |
| **Database/Historian** | MS SQL / Unified Archives [1, 2] | FT Historian (OSIsoft PI) [1] | Native SQL DB Open Connectivity [1] | SQL Server / ArchestrA [1] |

---

## 📂 Project Architecture

```text
├── implementations/             # READ-TO-DEPLOY CODE STACKS
│   ├── wincc-unified/           # TIA Portal project files (Comfort / PC RT)
│   ├── factorytalk-optix/       # FT Optix Studio C# automation scripts
│   └── ignition-perspective/    # Perspective views & .gwbk gateway configurations
└── knowledge-base/              # FACTUAL BLUEPRINTS & HANDBOOKS
    ├── cross-platform-matrix.md # Full analysis of software capabilities
    └── siemens-wincc-family.md  # Deep dive into the Siemens visualization stack
```

---

## 🔍 Featured Breakdown: The Siemens WinCC Landscape

To navigate deployments within the Siemens ecosystem, this project documents and covers the specific use cases for each runtime family member:

* **WinCC Unified Suite:** The future-proof, web-native core of this repository. Built entirely on HTML5, scalable JavaScript automation, and SVG vector frameworks running seamlessly across physical panels, edge devices, and local PC servers.
* **WinCC Professional & V7/V8 SCADA:** Mature, high-power plant-level standalone monitoring stations leveraging heavy SQL server backends and ANSI-C script structures.
* **WinCC Comfort/Advanced:** Legacy machine-level HMI panels managed via TIA Portal utilizing VB scripting engines.
* **WinCC Open Architecture (OA):** Enterprise-grade, vendor-agnostic object-oriented platform geared for massive distributed utility grids and critical infrastructure.

---

## 🖼️ Application Interfaces

### 1. Unified Process Overview Screen
![Main Screen](https://github.com)

### 2. Historical Data Trending
![Trend Display](docs/screenshots/trend-display.png)

---

## 🔧 Deployment & Quick Start

### Prerequisites
To open, deploy, or run the files in the `implementations/` folder, install the corresponding engineering environments:
* **Siemens:** TIA Portal V18/V19/V20 with WinCC Unified configuration.
* **Rockwell Automation:** FactoryTalk Optix Studio.
* **Inductive Automation:** Ignition Designer / Gateway 8.1+.

### Local Installation
1. Clone this unified repository:
   ```bash
   git clone https://github.com
   ```
2. Navigate to `implementations/` to pull runtime projects into your respective IDE.
3. Review `knowledge-base/` for deep-dive technical comparisons of security, connectivity, and database design.

---

## 🤝 Contributing

Contributions to update or expand these reference architectures are welcome!
1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes.
4. Open a Pull Request.

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more details.
