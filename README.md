# codebuddy-memory

抖音 AI 自媒体项目的长期记忆库。**手机端写，电脑端只读。**

## 内容

| 文件 | 作用 |
|---|---|
| `CODEBUDDY.md` | 个人偏好与项目背景，每次启动自动加载 |
| `plans/active-plan.md` | 活跃计划（唯一事实来源） |
| `rules/plan-management.md` | 计划管理规则 |
| `sync.bat` / `sync.sh` | 一键拉取并写入本机 `~/.codebuddy/` |

## 电脑端使用

```bash
git clone https://github.com/0GreenHand0/codebuddy-memory.git
```

之后每次需要更新计划：

- **Windows**：双击 `sync.bat`
- **Mac / Linux**：`./sync.sh`

脚本会 `git pull` 然后把文件复制到 `~/.codebuddy/`，重启 WorkBuddy 生效。

## 纪律

- **计划和偏好只在手机端改**（通过对话让 AI 走 plan-sync）
- 电脑端**只读**，不做修改，避免两边冲突
- 本仓库不放代码、不放业务文件，只放计划与偏好
