# http1.1-project-flask

# HTTP/1.1 Cloud Run Application

This is a simple HTTP/1.1 application deployed on **Google Cloud Run**.

## Features
- Built using **Flask**
- Deployed on **Cloud Run**
- Supports HTTP/1.1 requests

## Folder Structure
```
http1-app/
│-- app.py              # Main Flask application
│-- Dockerfile          # Defines containerization steps
│-- requirements.txt    # Lists required dependencies
│-- README.md           # Project documentation
```

## Prerequisites
Make sure you have the following installed:
- **Google Cloud SDK**
- **Docker**
- **Git**

## Setup Instructions

### 1. Clone the Repository
```sh
git clone https://github.com/your-username/http1-cloud-run.git
cd http1-cloud-run
```

### 2. Install Dependencies
```sh
pip install -r requirements.txt
```

### 3. Run Locally (For Testing)
```sh
python app.py
```
Test with:
```sh
curl -v --http1.1 http://localhost:8080
```

### 4. Build & Push Docker Image
```sh
gcloud builds submit --tag gcr.io/YOUR_PROJECT_ID/http1-app
```

### 5. Deploy to Cloud Run
```sh
gcloud run deploy http1-app \
    --image gcr.io/YOUR_PROJECT_ID/http1-app \
    --platform managed \
    --region us-central1 \
    --allow-unauthenticated
```

### 6. Test Deployment
```sh
curl -v --http1.1 https://http1-app-YOUR_PROJECT_ID.us-central1.run.app
```

## Enforcing HTTP/1.1
By default, Google Cloud Run uses **HTTP/2** over HTTPS. To explicitly use HTTP/1.1, run:
```sh
curl -v --http1.1 https://http1-app-YOUR_PROJECT_ID.us-central1.run.app
```

## Contributing
Feel free to fork and contribute!

## License
This project is licensed under the MIT License.

