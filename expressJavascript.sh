#!/bin/bash

npm init -y

npm i express

npm i -D dotenv reload

echo node_modules/ > .gitignore

echo PORT=8080 > .env

echo .env >> .gitignore

mkdir src

git init

echo -e '
const express=require("express");\n
const dotEnv=require("dotenv");\n
const reload=require("reload");\n
const http=require("http");\n
const {log:l}=console;\n
l("Hola!!!!");\n
const app=express();\n
dotEnv.config();\n
const port=process.env.PORT;\n
app.use(express.static("public"));\n
app.use("/static",express.static("public"));\n
const server=http.createServer(app);\n
reload(app)
.then(
    server.listen(port,()=>{
        l(`Server Listening on PORT: ${port} .............`)
    })
)
.catch(e=>{
    throw new Error(e)
})
' > src/app.js

cp ../public/  public -r


sed -i "s/test/start/gi" package.json
sed -i "s/index.js/src\/app.js/gi" package.json
sed -i "s/echo.*\"/nodemon --ext js,css,html -w public\"/gi" package.json


git add .

git co -am "Inicialización de Repositorio"

# npm start



