```shell
% aws ecr get-login-password | docker login --username AWS --password-stdin ${repository_name}

% docker push ${repository_name}
```