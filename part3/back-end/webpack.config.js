const path = require('path');
const NodemonPlugin = require('nodemon-webpack-plugin');
const nodeExternals = require('webpack-node-externals')

module.exports = {
    target: "node",
    entry: {
        app: ["./src/server.js"]
    },
    output: {
        path: path.resolve(__dirname, "./build"),
        filename: "app.js"
    },
    module: {
        rules: [
            {
                use: 'babel-loader',
                test: /\.js$/,
                exclude: /node_modules/
            },
            {
                test: /\.js$/,
                exclude: /node_modules/,
                // use: ['eslint-loader']
            }
        ],
    },
    externals: [nodeExternals()],
    plugins: [
        new NodemonPlugin({
            watch: path.resolve('./src'),
            script: './build/app.js'
        })
    ]
};