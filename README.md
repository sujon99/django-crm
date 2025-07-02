# Django CRM (Dockerized Setup)

This is a Docker-ready fork of the original [Django CRM repository](https://github.com/DjangoCRM/django-crm). Follow the instructions below to clone and run the project using Docker.

---

## 🔧 Configuration

Before starting the application, make sure to update the allowed hosts:

1. Open the `settings.py` file located at `webcrm/settings.py`.
2. Add your host IP to the `ALLOWED_HOSTS` list.  
   Example:
   ```python
   ALLOWED_HOSTS = ['127.0.0.1', 'your.host.ip.here']


# Docker Commands
**Clone the repository**
git clone https://github.com/sujon99/django-crm.git

**Navigate to the project directory**
```python
   cd django-crm

**Build the Docker containers**
```python
   docker-compose build

**Run the containers in detached mode**
```python
   docker-compose up -d

**View container logs**
```python
   docker-compose logs -f

**Stop and remove containers**
```python
   docker-compose down
