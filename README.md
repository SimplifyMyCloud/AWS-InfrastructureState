# SMC Infrastructure State for Amazon Web Services

SimplifyMy.Cloud infrastructure state with a focus on simplicity and empathy for AWS.

---

## Infrastructure Layers

Breaking apart AWS into three layers delivers a simple infrastructure state to manage and push changes to.  The goal of a well defined and engineered infrastructure is a DevOps culture which promotes healthy collaboration between all customers of that infrastructure including; development, operations, security, end users and management.  For example this infrastructure compassion provides:

  - Compassion for developers so they will never worry about making accidental changes to Production while giving them full freedom to experiment and utilize the development environment with no permission needed by default
  - Compassion for operations by incorporating self-serving, self-healing and self-sizing infrastructure that is pre-wired up to logging and monitoring, allowing for cost optimization
  - Compassion for the security folks by siloing environments and access into audit-able and verifiable known states
  - Compassion for the business by giving the peace of mind that every team has the freedom to create great things using the infrastructure that is secure and spend optimized.



## Foundation Layer

Definition: The Foundation Layer is responsible for networking, security, users.



## Service Layer

Definition: The Service Layer is responsible for cloud native services (*-as-a-service), Baked VMs, storage, and observability.



## App Layer

Definition: The App Layer is the orchestration of applications, services, data and monitoring that resides into the Services Layer.
