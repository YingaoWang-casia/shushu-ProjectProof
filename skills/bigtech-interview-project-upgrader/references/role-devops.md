# Role: DevOps / 云原生 / 运维开发

适用：Docker、Kubernetes、CI/CD、监控告警、部署平台、云服务器、自动化运维。

## 大厂看重点

- 能讲清构建、部署、配置、日志、监控、告警、回滚。
- 不是“会写 Dockerfile”，而是让服务可复现、可观测、可恢复。
- 能处理环境差异、依赖冲突、端口、数据库、密钥和资源限制。

## Toy 感

- 只写“使用 Docker 部署项目”。
- 没有环境变量、healthcheck、日志、监控。
- 没有 CI/CD、回滚、失败定位。
- 没有资源和成本估算。

## 可补强动作

半天：

- 补 `.env.example`、启动命令、依赖说明。
- 写部署失败排查表。
- 增加 healthcheck。

1 天：

- 写 Dockerfile / Docker Compose。
- 加结构化日志和启动前配置校验。
- 补 smoke test。

3 天：

- 接入 CI：lint/test/build。
- 增加部署流水线和回滚步骤。
- 加基础监控：CPU、内存、错误率、延迟。

1 周：

- 增加 Kubernetes manifest、HPA、config/secret 管理。
- 做告警和仪表盘。
- 做容量估算和压测。

## 简历表达素材

```text
负责 TODO 项目本地与容器化运行环境整理，补充 Docker Compose、环境变量模板和 smoke test；针对依赖缺失、端口冲突和数据库连接失败等问题沉淀排查文档，提升项目复现和交付效率。
```

```text
参与 TODO 服务部署流程建设，负责 CI 构建、健康检查、日志采集和回滚步骤设计；通过自动化测试和部署检查降低环境差异导致的发布失败风险。
```

## 高频追问

1. Dockerfile 怎么分层优化？
2. 环境变量和密钥怎么管理？
3. 服务启动失败怎么排查？
4. healthcheck 检查什么？
5. CI/CD 流程怎么设计？
6. 回滚怎么做？
7. 监控哪些指标？
8. Kubernetes 资源限制怎么设？
