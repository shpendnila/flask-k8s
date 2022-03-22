setup_infra: create_cluster deploy_ingress_controller deployments

create_cluster:
	./scripts/create-kind-cluster.sh

deploy_ingress_controller:
	./scripts/deploy-ingress-controller.sh

deployments:
	./scripts/deploy-web-deployment.sh
	skaffold run

delete_cluster:
	kind delete cluster --name kind-cluster

cleanup:
	./scripts/delete-ingress-controller.sh
	skaffold delete
	./scripts/delete-web-deployment.sh
