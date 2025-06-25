## 👥 Team Avanteguard Structure

This project is managed by a team of engineers, each responsible for a section of infrastructure, which we whichh is why you will see multiple branches, representing each infrastrcture or department. Here is the breakdown:

- `vpc` branch – Networking Team: VPC, subnets, NAT gateways
- `eks` branch – Platform Team: Kubernetes EKS cluster and workers
- `database` branch – DB Team: RDS, storage, backups
- `dns` branch – Domain/Cert Team: DNS and SSL setup
- `ci-cd` branch – DevOps Team: GitHub Actions, Terraform automation

### Team Workflow:
1. Clone the repo to your local machine.
2. Create a branch for your module (e.g., `vpc`, `eks`, `database`, `dns`, `ci-cd`).
3. Work on your assigned module in your branch.
4. Push your changes to your branch.
5. Once everything is finished in your branch, create a pull request to `main` <<~~ (THIS MUST BE APPROVED BY ME ONLY BEFORE PUSHING TO MAIN, STICK TO YOUR BRANCH!!!)
6. DO NOT PUSH CREDENTIALS AND ACCESS KEYS!!!