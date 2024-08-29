def GenerateConfig(context):
    """Generates config."""

    network_name = context.env['name']

    resources = [{
        'name': network_name,
        'type': 'compute.v1.network',
        'properties': {
            'name': network_name,
            'autoCreateSubnetworks': False,
        }
    }]

    for subnetwork in context.properties['subnetworks']:
        resources.append({
            'name': '%s-%s' % (network_name, subnetwork['region']),
            'type': 'compute.v1.subnetwork',
            'properties': {
                'name': '%s-%s' % (network_name, subnetwork['region']),
                'description': 'Subnetwork of %s in %s' % (network_name,
                                                           subnetwork['region']),
                'ipCidrRange': subnetwork['cidr'],
                'region': subnetwork['region'],
                'network': '$(ref.%s.selfLink)' % network_name,
            },
            'metadata': {
                'dependsOn': [
                    network_name,
                ]
            }
        })
    return {'resources': resources}