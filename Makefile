ENV_FILE=.env
CDK_STACK=FlightAppStack

install:
	@echo "Installing Python dependencies with Poetry..."
	poetry install
	@echo "Installing JavaScript dependencies with npm..."
	npm install --prefix frontend

deploy-db:
	cd infra && cdk bootstrap && cdk deploy --require-approval never

destroy-db:
	cd infra && cdk destroy --force

fixtures:
	poetry run python app/write_fixtures.py

run-be:
	@echo "Starting Backend..."
	poetry run uvicorn app.main:app --reload --port 8000
run-fe:
	@echo "Starting Frontend..."
	npm run serve --prefix frontend

