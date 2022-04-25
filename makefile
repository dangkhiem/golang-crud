mup:
	- migrate -database ${POSTGRESQL_URL} -path db/migrations up
	- migrate -path databases/migrations -database "postgresql://root:123456a@@localhost:5432/go-crud?sslmode=disable" -verbose up

mdown:
	- migrate -database ${POSTGRESQL_URL} -path db/migrations up
	- migrate -path databases/migrations -database "postgresql://root:123456a@@localhost:5432/go-crud?sslmode=disable" -verbose down