# Script 2: FOSS Package Inspector
# Author: Shivanya Tomar

PACKAGE="git"   # chosen software

echo "Checking package: $PACKAGE"
echo "-----------------------------"

# Check if package is installed
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."

    echo "Package Details:"
    dpkg -s $PACKAGE | grep -E 'Package|Version|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"
# Case statement providing a short description based on package name
case $PACKAGE in
    git) echo "Git: a distributed version control system that enables collaboration and code sharing." ;;
    httpd) echo "Apache: the web server that built the open internet." ;;
    mysql) echo "MySQL: open-source database used in millions of applications." ;;
    firefox) echo "Firefox: a browser that supports an open and free web." ;;
    *) echo "Unknown software." ;;
esac
