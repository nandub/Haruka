# Haruka
My Haruka Bot based from Mirai

### Bot Setup

```
git clone https://github.com/nandub/Haruka.git
./setup.sh
```
### Bot Configuration

Create any custom commands on `commands` folder on this repo.  Customize `config/production.json` and don't forget to include your bot token and make any other changes.

You can create different configurations for different environments `config/test.json` or `config/dev.json` and to use any of the configurations you need to set `NODE_ENV=test` or  `NODE_ENV=dev` or `NODE_ENV=production` environment variable.

### Bot Execution

```
NODE_ENV=production npm start
```

or

```
echo NODE_ENV=production > .env
npm start
```
