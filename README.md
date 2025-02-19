# cdp-k8s-deploy

OneCDP K8s Deploy

* ##  change to env dir
`cd prod`

* ##  helm install/update cdp-admin-web
`helm upgrade cdp-admin-web helm/cdp-admin-web --namespace oneec --atomic --install --reset-values`

* ##  helm install/update cdp-merchant-web
`helm upgrade cdp-merchant-web helm/cdp-merchant-web --namespace oneec --atomic --install --reset-values`

* ##  helm install/update cdp-security-api
`helm upgrade cdp-security-api helm/cdp-security-api --namespace oneec --atomic --install --reset-values`

* ##  helm install/update cdp-data-api
`helm upgrade cdp-data-api helm/cdp-data-api --namespace oneec --atomic --install --reset-values`

* ##  helm install/update cdp-sensitive-openapi
`helm upgrade cdp-sensitive-openapi helm/cdp-sensitive-openapi --namespace oneec --atomic --install --reset-values`

* ##  helm install/update cdp-light-job
`helm upgrade cdp-light-job helm/cdp-light-job --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-check-members-pool
`helm upgrade onecdp-job-check-members-pool helm/batch-job/onecdp-job-check-members-pool --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-check-products-pool
`helm upgrade onecdp-job-check-products-pool helm/batch-job/onecdp-job-check-products-pool --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-collect-orders
`helm upgrade onecdp-job-collect-orders helm/batch-job/onecdp-job-collect-orders --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-collect-products
`helm upgrade onecdp-job-collect-products helm/batch-job/onecdp-job-collect-products --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-generate-merchant-statistic
`helm upgrade onecdp-job-generate-merchant-statistic helm/batch-job/onecdp-job-generate-merchant-statistic --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-starter
`helm upgrade onecdp-job-starter helm/batch-job/onecdp-job-starter --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-task-creator
`helm upgrade onecdp-job-task-creator helm/batch-job/onecdp-job-task-creator --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-update-members-pr
`helm upgrade onecdp-job-update-members-pr helm/batch-job/onecdp-job-update-members-pr --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-update-member-statistic
`helm upgrade onecdp-job-update-member-statistic helm/batch-job/onecdp-job-update-member-statistic --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-update-product-statistic
`helm upgrade onecdp-job-update-product-statistic helm/batch-job/onecdp-job-update-product-statistic --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-update-recommendation
`helm upgrade onecdp-job-update-recommendation helm/batch-job/onecdp-job-update-recommendation --namespace oneec --atomic --install --reset-values`

* ##  helm install/update onecdp-job-upsert-order
`helm upgrade onecdp-job-upsert-order helm/batch-job/onecdp-job-upsert-order --namespace oneec --atomic --install --reset-values`