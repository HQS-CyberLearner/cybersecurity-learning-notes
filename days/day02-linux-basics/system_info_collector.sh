#!/bin/bash
# ===========================================
#!/bin/bash
# ============================================
# 系统信息收集脚本 v1.0
# 作者：黄清寿
# 功能：收集并显示系统基本信息
# ============================================

# 设置颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 显示脚本标题
echo -e "${GREEN}"
echo "========================================="
echo "     系统信息收集工具"
echo "=========================================${NC}"
echo ""

# 1. 系统基本信息
echo -e "${YELLOW}[1] 系统基本信息${NC}"
echo "-----------------------------------------"
echo "主机名: $(hostname)"
echo "系统类型: $(uname -s)"
echo "内核版本: $(uname -r)"
echo "系统架构: $(uname -m)"
echo ""

# 2. 用户信息
echo -e "${YELLOW}[2] 用户信息${NC}"
echo "-----------------------------------------"
echo "当前用户: $(whoami)"
echo "用户ID: $(id -u)"
echo "用户组: $(id -gn)"
echo "登录终端: $TERM"
echo ""

# 3. 磁盘使用情况
echo -e "${YELLOW}[3] 磁盘使用情况${NC}"
echo "-----------------------------------------"
df -h | grep -E "/dev/sd|/dev/nvme|Filesystem"
echo ""

# 4. 内存信息
echo -e "${YELLOW}[4] 内存使用情况${NC}"
echo "-----------------------------------------"
free -h
echo ""

# 5. 当前目录信息
echo -e "${YELLOW}[5] 当前目录内容${NC}"
echo "-----------------------------------------"
echo "当前目录: $(pwd)"
echo "目录内容:"
ls -la
echo ""

# 6. 脚本运行信息
echo -e "${YELLOW}[6] 脚本运行信息${NC}"
echo "-----------------------------------------"
echo "脚本名称: $0"
echo "运行时间: $(date)"
echo "运行用户: $(whoami)"
echo ""

# 保存结果到文件
output_file="system_report_$(date +%Y%m%d_%H%M%S).txt"
{
echo "=== 系统信息报告 ==="
echo "生成时间: $(date)"
echo "主机名: $(hostname)"
echo "当前用户: $(whoami)"
echo ""
echo "=== 磁盘使用 ==="
df -h
echo ""
echo "=== 内存使用 ==="
free -h
} > "$output_file"

echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN}报告已保存到: $output_file${NC}"
echo -e "${GREEN}脚本执行完成！${NC}"
