const path = require('path');

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
            },
            {
                test: /\.js$/,
            }
        ],
    },
};