### Hexlet tests and linter status:
[![Actions Status](https://github.com/DamirJann/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/DamirJann/devops-for-programmers-project-74/actions)
[![Actions Status](https://github.com/DamirJann/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/DamirJann/devops-for-programmers-project-74/actions)

Infrastructure for https://github.com/hexlet-components/js-fastify-blog 
 
Docker image for app: https://hub.docker.com/layers/damirpilacis/app/latest/images/sha256-51c37e4bb0067147401fb607ff85e4da30cc9a13596dca048b19553400096600?context=repo

Application uses Postgresql as DB for testing, local development and production. To change it, uncomment lines in app/config/config.cjs


Run test

```bash
make ci
```

Start server for local development

```bash
make dev-run
```

Build docker image for app

```bash
make image-build
```

Push app docker image to repository. Needs env for repository: DOCKER_USERNAME, DOCKER_PASSWORD

```bash
make image-build 
```


P.S: чтобы не забыть обсудить!
1) Из-за ограничения по времени в тестах не получилось добавить в overide более строгую проверку зависимости app -> db (а именно, service_health). 
2) Не понимаю для чего нужен .env.example