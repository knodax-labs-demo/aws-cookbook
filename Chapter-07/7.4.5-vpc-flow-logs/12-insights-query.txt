fields @timestamp, srcAddr, dstAddr, dstPort, action
| filter action = "REJECT"
| stats count() by dstAddr
