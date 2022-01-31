# Vite React Docker Example

## How to run?
1. Make sure Docker is installed
2. Run `docker-compose up -d`
3. Run `docker-compose exec app npm install`
4. Run `docker-compose logs app`
5. See a lot of the following error:
```log
error when starting dev server:
Error: EACCES: permission denied, stat '/root/.node_modules/react/jsx-dev-runtime'
    at Object.statSync (node:fs:1538:3)
    at isDirectory (/var/www/node_modules/resolve/lib/sync.js:31:23)
    at loadNodeModulesSync (/var/www/node_modules/resolve/lib/sync.js:200:17)
    at Function.resolveSync [as sync] (/var/www/node_modules/resolve/lib/sync.js:107:17)
    at resolveFrom$3 (/var/www/node_modules/vite/dist/node/chunks/dep-f5552faa.js:3911:29)
    at resolvePackageData (/var/www/node_modules/vite/dist/node/chunks/dep-f5552faa.js:30046:19)
    at /var/www/node_modules/vite/dist/node/chunks/dep-f5552faa.js:30426:15
    at Array.find (<anonymous>)
    at tryNodeResolve (/var/www/node_modules/vite/dist/node/chunks/dep-f5552faa.js:30425:44)
    at Context.resolveId (/var/www/node_modules/vite/dist/node/chunks/dep-f5552faa.js:30257:28)
```
