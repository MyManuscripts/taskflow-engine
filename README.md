# TaskFlow Engine

A background task processing engine built with Spring Boot, PostgreSQL, and REST API.  
Designed to demonstrate clean architecture, SOLID principles, and modern Java development practices.

> This project uses **Rancher Desktop** (Docker-compatible container runtime) on Windows with **WSL2 + Ubuntu**, providing a fully reproducible local development environment without Docker Desktop.

---

## Features

- Create and manage background tasks via REST API
- Track task status: `QUEUED`, `RUNNING`, `COMPLETED`, `FAILED`
- Flexible task parameters using JSON payload
- Database schema management with Flyway migrations
- Configurable task types (e.g., `SEND_EMAIL`, `PROCESS_VIDEO`)

---

## Tech Stack

- **Java 21**
- **Spring Boot 3.x** (Web, Data JPA, Validation, Actuator)
- **Hibernate / JPA** for ORM
- **PostgreSQL** as primary database
- **Lombok** for reducing boilerplate code
- **Flyway** for versioned database migrations
- **Rancher Desktop** (with `dockerd` engine) for containerization
- **WSL2 + Ubuntu** as Linux subsystem on Windows
- **GitHub Actions** for CI/CD pipeline

---
## Status: Research Phase  
Exploring state machines for support workflows.  
Not production-ready — but each commit includes notes on design decisions.


## Local Setup (Windows with WSL2)

### Prerequisites

- Windows 10/11 (Build 19041 or later)
- WSL2 enabled with Ubuntu distribution
- Rancher Desktop installed and configured with **`dockerd (moby)`** runtime

> Verify your setup:
> ```powershell
> wsl --list --verbose
> docker --version
> ```

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/MyManuscripts/taskflow-engine.git
   cd taskflow-engine
