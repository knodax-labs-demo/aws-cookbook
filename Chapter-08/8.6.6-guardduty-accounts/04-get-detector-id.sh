DETECTOR_ID=$(aws guardduty list-detectors --query 'DetectorIds[0]' --output text)
