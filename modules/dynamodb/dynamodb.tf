//DynamoDB 생성
resource "aws_dynamodb_table" "basic-dynamodb-table" {
    name = var.dynamodb_table_name // 테이블 이름
    read_capacity  = 5
    write_capacity = 5
    hash_key = "UserId" // 기본 파티션 키
    range_key = "GameTitle" //정렬 키 (Optional)

    attribute {
        name = "UserId"
        type = "S"
    }

    attribute {
        name = "GameTitle"
        type = "S"
    }

    tags = {
        Name = "dynamodb-table-2"
        Environment = "production"
    }
}