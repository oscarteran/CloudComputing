{
  "resources": [
    {
      "type": "compute.v1.network",
      "name": "mi-red"
    },
    {
      "type": "compute.v1.subnetwork",
      "name": "mi-subred",
      "properties": {
        "ipCidrRange": "10.0.0.0/24",
        "region": "us-central1",
        "network": "$(ref.mi-red.selfLink)"
      }
    },
    {
      "type": "compute.v1.firewall",
      "name": "mi-firewall",
      "properties": {
        "allowed": [
          {"IPProtocol": "tcp"},
          {"IPProtocol": "icmp"}
        ],
        "sourceRanges": ["0.0.0.0/0"]
      }
    }
  ]
}
