# Day 1: 启程 - 环境搭建与决心

## 日期
2026年1月10日

## 今日成就
1. ✅ 成功安装VirtualBox 7.0
2. ✅ 创建学习目录结构：`CyberSec_Journey/`
3. ✅ 下载Ubuntu 22.04 LTS镜像
4. ✅ 注册GitHub账号：[您的用户名]
5. ✅ 创建学习仓库：`cybersecurity-learning-notes`
6. ✅ 安装Typora Markdown编辑器
7. ✅ 安装并配置Ubuntu虚拟机
   - 用户名：cyberadmin
   - 内存：4GB
   - 硬盘：60GB
8. ✅ 安装VirtualBox增强功能

## 遇到的问题与解决
1. **问题**：下载VirtualBox速度慢
   **解决**：耐心等待，同时进行其他任务
   
2. **问题**：完成Ubuntu安装后，执行cd /media/cdom 出错

   原因：bash: cd: /media/cdrom: No such file or directory找不到cdrom目录

   解决：查看光盘被挂载到哪个 位置sudo mount | grept iso9660 或lsblk或挂接查看/media/下是否 有新目录ls -la /media/

   ![image-20260111173636410](image-20260111173636410.png)

   更改目录：cd /media/cyberadmin/VBox_GAs_7.1.14

## 明日计划
1. 学习Linux基础命令：ls, cd, pwd, mkdir, touch
2. 在Ubuntu中创建第一个脚本
3. 学习Git基础：add, commit, push

## 感悟
> 千里之行，始于足下。今天迈出了从零到一的关键一步。48岁不是障碍，而是沉淀的开始。