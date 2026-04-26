aws directconnect create-private-virtual-interface \
  --connection-id dxcon-abc123 \
  --new-private-virtual-interface '{
    "virtualInterfaceName": "ProdVIF",
    "vlan": 101,
    "asn": 65001,
    "amazonAddress": "175.45.176.1/30",
    "customerAddress": "175.45.176.2/30",
    "virtualGatewayId": "vgw-xxxx"
  }'
