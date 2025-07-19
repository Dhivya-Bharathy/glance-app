# Glance Deployment Script
Write-Host "🚀 Deploying Glance Dashboard..." -ForegroundColor Green

# Check if Docker is installed
try {
    docker --version | Out-Null
    Write-Host "✅ Docker is installed" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker is not installed. Please install Docker Desktop first." -ForegroundColor Red
    exit 1
}

# Build and run with Docker Compose
Write-Host "📦 Building and starting Glance..." -ForegroundColor Yellow
docker-compose up -d --build

Write-Host "✅ Glance is now running!" -ForegroundColor Green
Write-Host "🌐 Access your dashboard at: http://localhost:8080" -ForegroundColor Cyan
Write-Host "📊 To view logs: docker-compose logs -f" -ForegroundColor Gray
Write-Host "🛑 To stop: docker-compose down" -ForegroundColor Gray 