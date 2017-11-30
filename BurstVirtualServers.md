# Burst Multiple Virtual Servers Reference Architectures

## Background

Cloud bursting is the use of cloud services (single-tenant or multi-tenant) to rapidly deploy, process and deprecate resources. Bursting temporarily expands your IaaS capacity during scheduled or unscheduled events. Bursting requires timely deployment and integration of the additional resources using scalable architecture patterns.

### Business Challenge
Clients whose on premises or managed virtualization may be sufficient to support steady state operations. However, it may require excess costs and time to routinely scale IaaS resources to perform short term processing. These clients are challenged by periodic processing needs that require IaaS resources that exceed their on premises capacity for limited periods. 

## Reference Architectures

## Burst virtual servers in multi-tenant hosts

   ![Burst virtual servers (multi-tenant) reference architecture](https://github.ibm.com/pbahrs/iaas_ref_architectures/blob/master/imgs/burstvs_multi_tenant.png)
   
                            
   ![Get the code for Softlayer Classic!](https://github.ibm.com/pbahrs/iaas_ref_architectures/tree/master/terraform/ClassicSoftLayer/Burst)
   
   ![Get the code for GT!](https://github.ibm.com/pbahrs/iaas_ref_architectures/tree/master/terraform/GT/Burst)

## Burst virtual servers in single-tenant hosts

   ![Burst virtual servers (single-tenant) reference architecture](https://github.ibm.com/pbahrs/iaas_ref_architectures/blob/master/imgs/burstvs_single_tenant.png)
   
   
   Get the code for Softlayter Classic! (provider under development)
   
   Get the code for GT!
   
   
## Co-existence and Migration considerations

 - Bursting should be automated integrated with a full stack (application, middleware, data, infrastructure) deployment. Architecture patterns may include HPC, VS, Containers, PaaS services, Security Groups and a VPC/VLAN for all resources. 

 - Reuse of existing DevOps automation that can be refactored to deploy IBM Cloud services may be an option. This architecture pattern and implementation examples should be used to translate the current architecture to IBM Cloud services. The examples can be adjusted to specific client requirements and executed with IBM Cloud services/products.  

## Implementation requirements

### Use Cases
 - [x] Burst multi-tenant virtual servers into a single availability zone using a pre-existing, using a pre-existing,  common private network
 
 - [ ]  Burst single-tenant virtual servers into a single availability zone and, depending on capacity, deploy to one or more hosts, using a pre-existing, common private network
 
 - [ ] Deploy multiple virtual servers using a pre-existing, common private network used by HPC and existing storage/data services

### Funcational requirements

 - Provision a virtual network architecture to support Burst use cases (SDN, FW, LB, RTR, Data, Storage) in advance of bursting
 - Use a private network architecture with VPN access
 - Assign public SSH key to virtual server
 - Assign IP address to virtual server
 - Use a hostname naming convention 
 - Mount pre-existing block storage
 - Provision multiple virtual servers concurrently
 - Provision instances into one availability zone
 - Deploy single tenant virtual servers to one or more hosts based on capacity at deploy time 
 
### Non-functional requirements
 
 - Burst 1- 100 virtual server from 1 or more standard or tailored image templates
 - Deploy each virtual server < 5 minutes, concurrently
 - Deploy virtual servers with > 99% success  
 - Run the deployed virtual servers pattern for 24 hours with 99%  success 
 - Support the latest Windows, Linux, CentOS, Ubuntu Operating Systems
 - Support pre-definition of multiple host locations information for single-tenant deployments 
 - Support deployments to all regions/availability zones




