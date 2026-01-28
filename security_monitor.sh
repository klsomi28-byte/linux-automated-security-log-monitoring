LOG_FILE="/var/log/syslog"
REPORT="security_report.txt"

echo "security log report $(date):" | tee -a "$REPORT"
echo "1. failed login attemptd" | tee -a "$REPORT"
grep -a -i "failed password" "$LOG_FILE" | wc -l 

echo "2. top 5 IPs with failed logins" | tee -a "$REPORT"
grep -a -i "failed password" "$LOG_FILE" \ | grep -o -i ' ([0-9]{1,3}\. ){3}[0,9]{1,3}' \ | sort | uniq -c | sort -nr | head -5 | tee -a "$REPORT"

echo "3. sudo command usage" | tee -a "$REPORT"
grep -a -i "sudo" "$LOG_FILE" | wc -l | tee -a "$REPORT"

echo "report saved to $REPORT"
