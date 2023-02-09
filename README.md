# OpenAI-Checker
Used to check if your IP can access OpenAI services.

## Detection method
Our detection results come from **Cloudflare** and the accuracy is independent of this script.

## Usage
```shell
bash <(curl -Ls https://cpp.li/openai)
```
```shell
bash <(curl -Ls https://cdn.jsdelivr.net/gh/missuo/OpenAI-Checker/openai.sh)
```
## Result
```
> bash <(curl -Ls https://cpp.li/openai)
OpenAI Access Checker. Made by Vincent
https://github.com/missuo/OpenAI-Checker
-------------------------------------
[IPv4]
Your IPv4: 205.185.1.1 - FranTech Solutions
Your IP supports access to OpenAI. Region: US
-------------------------------------
[IPv6]
Your IPv6: 2401:95c0:f001::1 - Vincent Yang
Your IP supports access to OpenAI. Region: TW
-------------------------------------
```

## Author
**OpenAI-Checker** © [Vincent Young](https://github.com/missuo), Released under the [MIT](./LICENSE) License.<br>
