### Terraform?

-   사용하는 클라우드 인프라를 코드로 관리할 수 있다. (infrastructure as code)

### AWS CloudFormation과는 무엇이 다른가?

-   인프라를 코드로 관리할 수 있다는 점은 같으나, 테라폼은 AWS말고 타회사 클라우드 서비스도 코드로 관리할 수 있다.

### Terraform을 사용하면서 느낀점

-   러닝커브가 크다. 테라폼 선언 명령어를 알아야 한다.
-   서비스가 커지면 테라폼 코드도 늘어나게 되는데 자주 배포, 수정하는 서비스위주를 관리 하는게 좋은거 같다.
-   백업 혹은 문서화를 위해서 사용해도 된다.
-   결국은 테라폼을 사용하는 조직에서 어디까지 코드로 관리할껀지 말껀지를 나누고 해야한다.

### 주요 파일

-   main.tf : Terraform이 실행할 모듈을 정의.
-   variables.tf : 구성 모듈에서 사용하는 변수를 선언.
-   provider.tf : Treeaform 제공자의 매개변수를 정의.
-   modules : AWS Service 파일 정의.

### 주요 명령어

1. 로컬에 모듈 설치 하기.

```
$ terraform get
```

2. 빌드.

```
$ terraform init
```

2. 디버깅.

```
$ terraform plan -var-file="terraform.tfvars"
```

3. 실행 (AWS 설치).

```
$ terraform apply -var-file="terraform.tfvars"
```

#### 참고 문헌

-   오라클 테라폼 토폴로지 : https://docs.oracle.com/ko/solutions/multi-tenant-topology-using-terraform/configure-terraform-execution-environment1.html#GUID-17AE60F0-FB45-4028-8BF5-71E149AA6C21
-   variables 변수 타입 : https://upcloud.com/community/tutorials/terraform-variables/
-   변수 추가 방법 : https://www.terraform.io/docs/language/values/variables.html
-   모듈 추가 방법 : https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules
-   Providers 방법 : https://www.terraform.io/docs/language/providers/configuration.html
