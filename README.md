# ubnt-mips-packages
- 为基于 mipsle, mips64 的 Ubiquiti EdgeMax(ER-X, ER-4), UniFi Security Gateway(USG) 等交叉编译

- Cross complie shadowsocks for UBNT devices(ER-X ER-4 USG) based on mips or mips64  

## 使用方法
```bash
docker build --tag ubnt-mips-packages .
docker run -it --name ubnt-mips-packages ubnt-mips-packages
docker cp ubnt-mips-packages:/opt/ss-mips/ss-bin .
```  
## mips 与 mips64
- 由 ENV 参数 ARCHITECH 判断，默认生成 mips，需要 mips64 在第 4 步的时候替换成下面的命令  
- 默认的mips64就是mipsle, 适合er-x
Controlled by ENV ARCHITECH, default build mips, you can set ARCHITECH="mips64" to build mips64 file.

```bash
docker run -it --name ubnt-mips-packages -e ARCHITECH="mips64" ubnt-mips-packages
```


