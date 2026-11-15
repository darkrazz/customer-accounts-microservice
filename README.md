# DevOps Capstone

[![CI Build](https://github.com/darkrazz/customer-accounts-microservice/actions/workflows/ci-build.yaml/badge.svg)](https://github.com/darkrazz/customer-accounts-microservice/actions)

## Overview
This repository contains the Customer Accounts Microservice, developed as a capstone project. The service provides a fully functional RESTful API to manage customer accounts, built with Python and Flask. 

The project demonstrates a complete DevOps lifecycle, including agile planning (Kanban/User Stories), Test-Driven Development (TDD), Continuous Integration (GitHub Actions), containerization (Docker), and cloud-native deployment (Kubernetes and Tekton).

## Technologies Used
* **Application Framework:** Python, Flask, Flask-RESTX
* **Database:** PostgreSQL (or in-memory for testing)
* **Testing:** `nosetests`, `coverage`, `flake8`, `pylint`
* **Security:** Flask-Talisman (Security Headers), Flask-CORS
* **CI/CD:** GitHub Actions, Tekton
* **Containerization & Orchestration:** Docker, Kubernetes

## RESTful API Endpoints
This microservice supports the following operations for managing accounts:

| HTTP Method | Endpoint | Description |
| ----------- | -------- | ----------- |
| `POST`      | `/accounts` | Create a new account |
| `GET`       | `/accounts` | List all accounts |
| `GET`       | `/accounts/<id>` | Read a specific account by ID |
| `PUT`       | `/accounts/<id>` | Update an existing account |
| `DELETE`    | `/accounts/<id>` | Delete an account |

## Development Setup

### 1. Clone the repository
```bash
git clone [https://github.com/darkrazz/customer-accounts-microservice.git](https://github.com/darkrazz/customer-accounts-microservice.git)
cd customer-accounts-microservice
