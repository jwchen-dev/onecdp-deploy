# OneCDP 單機版 PoC

## Step 1：建立基礎環境

1. ~~安裝 k8s~~
    02/12-02/23：以 k3d 在 Azure 上模擬 K8s 環境。
1. ~~Deploy K8s Dashboard~~
    02/23-02/23：deployed。
1. ~~Deploy Kafka~~
    02/17：deployed
1. ~~Deploy Kafka UI~~
    02/17-02/21：deploy kafka ui，確認可以在 UI 上建立 Cluster。
1. ~~Deploy Inifinispan~~
    02/23：deployed。
1. ~~Deploy Postgresql~~
    02/23：deployed。
    02/26~02/28：因 K8s Volume 掛不起來，改在 VM 上以 Docker Compose 啟動。
1. ~~Deploy Solr~~
    02/23-02/25：deployed，確定自定義的 Schema + Config + IK jar 可以正確埋入與運行。
    02/26~02/28：因 K8s Volume 掛不起來，改在 VM 上以 Docker Compose 啟動。

## Step 2：佈署 OneCDP Container

在本地 Build Docker Image，並推到自己的 docker hub，再從 Azure 的 VM 做佈署到 K8s。

1. cdp-member-process-job
    03/03：deployed。
1. cdp-order-process-job
    03/03：deployed。
1. cdp-platform-job
    02/25：deployed。
1. cdp-product-process-job
1. cdp-recommend-job
1. cdp-statistic-job
1. cdp-task-generate-job
1. cdp-admin-web
1. cdp-data-api
1. cdp-embedded-openapi
1. cdp-event-job
1. cdp-mail-ob
1. cdp-merchant-web
1. cdp-mm-event-job
1. cdp-security-api
1. cdp-sensitive-openapi
1. cdp-sensitive-openapi-job
