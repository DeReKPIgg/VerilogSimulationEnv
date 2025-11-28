# VerilogPatternGenerationEnv
Don't wanna use ADFP if I'm not doing synthesis.

```
docker build -t [image_name] .
```
```
docker run -id -v [local_dir_AbsPath_to_be_mounted]:/root --restart=always --name [container_name] [image_name]
```
```
docker exec -it [container_name] /bin/bash
```

