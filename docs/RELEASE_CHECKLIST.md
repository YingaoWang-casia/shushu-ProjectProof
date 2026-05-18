# Release Checklist

发布前按这个清单走一遍，避免开源后第一批用户踩基础坑。

## Repository

- [ ] 仓库已初始化 git。
- [ ] README 首屏能讲清项目定位、安装方式和最小输入。
- [ ] `README_EN.md` 至少覆盖定位、边界和安装方式。
- [ ] LICENSE 是 Apache-2.0，README 中保持一致。
- [ ] `.gitignore` 没有误排除需要发布的 skill 文件。
- [ ] 上传目录只保留源码和文档，不包含临时压缩产物。

## Skill Package

- [ ] `skills/bigtech-interview-project-upgrader/SKILL.md` 存在。
- [ ] `agents/openai.yaml` 存在并能说明默认使用方式。
- [ ] `references/` 中的关键文件都被 `SKILL.md` 引用。
- [ ] 没有未脱敏个人信息、真实公司内部数据或私有代码。

## Evaluation

- [ ] 跑过 Agent/RAG 样例。
- [ ] 跑过数据清洗/算法实习样例。
- [ ] 跑过课程项目/demo 样例。
- [ ] 输出会先诊断再改写。
- [ ] 输出会拒绝虚构指标、上线状态和个人贡献。
- [ ] 输出会给 `已做 / 可补做 / 不建议写` 边界。

## GitHub Launch

- [ ] 添加 Topics。
- [ ] 写清 About。
- [ ] 创建 `v0.1.0` release。
- [ ] Release note 附上安装方式、评测样例和示例输出链接。
- [ ] 准备一条中文首发帖：痛点、before/after、安装、适合人群。
