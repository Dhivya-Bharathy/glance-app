# Glance Deployment Guide

## 🚀 Quick Deploy Options

### Option 1: Docker Compose (Recommended for local/self-hosted)
```powershell
# Run the deployment script
.\deploy.ps1

# Or manually:
docker-compose up -d --build
```

### Option 2: Render.com (Free hosting)
1. Go to [render.com](https://render.com) and sign up
2. Connect your GitHub repository
3. Create a new Web Service
4. Select your Glance repository
5. Set build command: `go build -o glance .`
6. Set start command: `./glance`
7. Deploy!

### Option 3: Railway.app (Free hosting)
1. Go to [railway.app](https://railway.app) and sign up
2. Install Railway CLI: `npm i -g @railway/cli`
3. Run: `railway login`
4. Run: `railway init`
5. Run: `railway up`

### Option 4: Heroku (Paid)
1. Install Heroku CLI
2. Run: `heroku create your-glance-app`
3. Run: `git push heroku main`

### Option 5: DigitalOcean App Platform
1. Go to DigitalOcean App Platform
2. Connect your repository
3. Configure as Go app
4. Deploy!

## 🌐 Public Access
After deployment, you'll get a public URL like:
- Render: `https://your-app.onrender.com`
- Railway: `https://your-app.railway.app`
- Heroku: `https://your-app.herokuapp.com`

## 📝 Configuration
Edit `glance.yml` to customize your dashboard before deploying.

## 🔧 Environment Variables
- `PORT`: Port to run on (default: 8080)
- `CONFIG_PATH`: Path to config file (default: glance.yml) 