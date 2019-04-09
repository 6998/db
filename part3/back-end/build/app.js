/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./src/api/ListOfCompanies.js":
/*!************************************!*\
  !*** ./src/api/ListOfCompanies.js ***!
  \************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _utils_responses__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../utils/responses */ \"./src/utils/responses.js\");\n\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\nconst query = 'SELECT * FROM company';\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (async (req, res) => {\n  const client = new Client();\n  await client.connect();\n  await client.query(query, (err, results) => {\n    if (err) {\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'bad query');\n    } else {\n      const { rows } = results;\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_200\"])({ req, res }, rows);\n      console.log(results);\n    }\n    return client.end();\n  });\n});\n\n//# sourceURL=webpack:///./src/api/ListOfCompanies.js?");

/***/ }),

/***/ "./src/api/ListOfCountries.js":
/*!************************************!*\
  !*** ./src/api/ListOfCountries.js ***!
  \************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _utils_responses__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../utils/responses */ \"./src/utils/responses.js\");\n\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\nconst query = 'SELECT * FROM country';\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (async (req, res) => {\n  const client = new Client();\n  await client.connect();\n  await client.query(query, (err, results) => {\n    if (err) {\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'bad query');\n    } else {\n      const { rows } = results;\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_200\"])({ req, res }, rows);\n    }\n    return client.end();\n  });\n});\n\n//# sourceURL=webpack:///./src/api/ListOfCountries.js?");

/***/ }),

/***/ "./src/api/ListOfPorts.js":
/*!********************************!*\
  !*** ./src/api/ListOfPorts.js ***!
  \********************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _utils_responses__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../utils/responses */ \"./src/utils/responses.js\");\n\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\nconst query = 'SELECT * FROM port';\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (async (req, res) => {\n  const client = new Client();\n  await client.connect();\n  await client.query(query, (err, results) => {\n    if (err) {\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'bad query');\n    } else {\n      const { rows } = results;\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_200\"])({ req, res }, rows);\n    }\n    return client.end();\n  });\n});\n\n//# sourceURL=webpack:///./src/api/ListOfPorts.js?");

/***/ }),

/***/ "./src/api/ListOfTrips.js":
/*!********************************!*\
  !*** ./src/api/ListOfTrips.js ***!
  \********************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _utils_responses__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../utils/responses */ \"./src/utils/responses.js\");\n\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\nconst query = 'SELECT * FROM trip';\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (async (req, res) => {\n  const client = new Client();\n  await client.connect();\n  await client.query(query, (err, results) => {\n    if (err) {\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'bad query');\n    } else {\n      const { rows } = results;\n      Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_200\"])({ req, res }, rows);\n    }\n    return client.end();\n  });\n});\n\n//# sourceURL=webpack:///./src/api/ListOfTrips.js?");

/***/ }),

/***/ "./src/api/Queries.js":
/*!****************************!*\
  !*** ./src/api/Queries.js ***!
  \****************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _utils_responses__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../utils/responses */ \"./src/utils/responses.js\");\n/* harmony import */ var _utils_SQLQueries__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../utils/SQLQueries */ \"./src/utils/SQLQueries.js\");\n\n\n\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (async (req, res) => {\n  const { query, values } = Object(_utils_SQLQueries__WEBPACK_IMPORTED_MODULE_1__[\"selectQuery\"])(req.body);\n\n  console.log(\"selectQuery(req.body)\", Object(_utils_SQLQueries__WEBPACK_IMPORTED_MODULE_1__[\"selectQuery\"])(req.body));\n\n  if (query) {\n    const client = new Client();\n    await client.connect();\n    await client.query(query, values, (err, results) => {\n      if (err) {\n        Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'bad query');\n      } else {\n        const { rows, fields } = results;\n        Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_200\"])({ req, res }, { rows, fields });\n      }\n      return client.end();\n    });\n  } else {\n    return Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'no query');\n  }\n});\n\n//# sourceURL=webpack:///./src/api/Queries.js?");

/***/ }),

/***/ "./src/api/query.js":
/*!**************************!*\
  !*** ./src/api/query.js ***!
  \**************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _utils_responses__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../utils/responses */ \"./src/utils/responses.js\");\n\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (async (req, res) => {\n  const query = req.body.query;\n  if (query) {\n    const client = new Client();\n    await client.connect();\n    await client.query(query, (err, results) => {\n      if (err) {\n        Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'bad query');\n      } else {\n        const { rows, fields } = results;\n        Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_200\"])({ req, res }, { rows, fields });\n      }\n      return client.end();\n    });\n  } else {\n    return Object(_utils_responses__WEBPACK_IMPORTED_MODULE_0__[\"_500\"])({ req, res }, 'no query');\n  }\n});\n\n//# sourceURL=webpack:///./src/api/query.js?");

/***/ }),

/***/ "./src/lib/express.js":
/*!****************************!*\
  !*** ./src/lib/express.js ***!
  \****************************/
/*! exports provided: server, startServer, initExpress */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"server\", function() { return server; });\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"startServer\", function() { return startServer; });\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"initExpress\", function() { return initExpress; });\n/* harmony import */ var express__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! express */ \"express\");\n/* harmony import */ var express__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(express__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var cors__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! cors */ \"cors\");\n/* harmony import */ var cors__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(cors__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var body_parser__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! body-parser */ \"body-parser\");\n/* harmony import */ var body_parser__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(body_parser__WEBPACK_IMPORTED_MODULE_2__);\n\n\n\nconst server = express__WEBPACK_IMPORTED_MODULE_0___default()();\n\nconst startServer = server => {\n  if (!server) throw 'Need Server object to start';\n\n  const port = process.env.PORT;\n  server.listen(port, () => {\n    console.log(`starting server on port ${port}`);\n  });\n};\n\nconst initExpress = server => {\n  return new Promise(resolve => {\n    server.use(cors__WEBPACK_IMPORTED_MODULE_1___default()());\n    server.use(body_parser__WEBPACK_IMPORTED_MODULE_2___default.a.json());\n    server.use(body_parser__WEBPACK_IMPORTED_MODULE_2___default.a.urlencoded({ extended: true }));\n    return resolve(server);\n  });\n};\n\n\n\n//# sourceURL=webpack:///./src/lib/express.js?");

/***/ }),

/***/ "./src/lib/postgress.js":
/*!******************************!*\
  !*** ./src/lib/postgress.js ***!
  \******************************/
/*! exports provided: pgClient, default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"pgClient\", function() { return pgClient; });\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\nconst pgClient = new Client();\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (server => new Promise(async (resolve, reject) => {\n  console.log('init start');\n  try {\n    await pgClient.connect();\n    pgClient.query('SELECT NOW()', (err, res) => {\n      if (err) throw err;\n      console.log('PG Connection success');\n      pgClient.end();\n    });\n    resolve(server);\n  } catch (e) {\n    reject('connect to postgress db', e);\n  }\n  console.log('init end');\n  resolve(server);\n}));\n\n//# sourceURL=webpack:///./src/lib/postgress.js?");

/***/ }),

/***/ "./src/lib/router.js":
/*!***************************!*\
  !*** ./src/lib/router.js ***!
  \***************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _utils_healthcheck__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../utils/healthcheck */ \"./src/utils/healthcheck.js\");\n/* harmony import */ var _api_ListOfCountries__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../api/ListOfCountries */ \"./src/api/ListOfCountries.js\");\n/* harmony import */ var _api_ListOfPorts__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../api/ListOfPorts */ \"./src/api/ListOfPorts.js\");\n/* harmony import */ var _api_ListOfCompanies__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../api/ListOfCompanies */ \"./src/api/ListOfCompanies.js\");\n/* harmony import */ var _api_ListOfTrips__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../api/ListOfTrips */ \"./src/api/ListOfTrips.js\");\n/* harmony import */ var _api_query__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../api/query */ \"./src/api/query.js\");\n/* harmony import */ var _api_Queries__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../api/Queries */ \"./src/api/Queries.js\");\n\n\n\n\n\n\n\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (server => new Promise(resolve => {\n  server.get('/api', _utils_healthcheck__WEBPACK_IMPORTED_MODULE_0__[\"default\"]);\n\n  server.get('/api/list-of-countries', _api_ListOfCountries__WEBPACK_IMPORTED_MODULE_1__[\"default\"]);\n  server.get('/api/list-of-ports', _api_ListOfPorts__WEBPACK_IMPORTED_MODULE_2__[\"default\"]);\n  server.get('/api/list-of-companies', _api_ListOfCompanies__WEBPACK_IMPORTED_MODULE_3__[\"default\"]);\n  server.get('/api/list-of-trips', _api_ListOfTrips__WEBPACK_IMPORTED_MODULE_4__[\"default\"]);\n\n  server.post('/api/queries', _api_Queries__WEBPACK_IMPORTED_MODULE_6__[\"default\"]);\n  server.post('/api/query', _api_query__WEBPACK_IMPORTED_MODULE_5__[\"default\"]);\n\n  resolve(server);\n}));\n\n//# sourceURL=webpack:///./src/lib/router.js?");

/***/ }),

/***/ "./src/server.js":
/*!***********************!*\
  !*** ./src/server.js ***!
  \***********************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _lib_express__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./lib/express */ \"./src/lib/express.js\");\n/* harmony import */ var _lib_postgress__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./lib/postgress */ \"./src/lib/postgress.js\");\n/* harmony import */ var _lib_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./lib/router */ \"./src/lib/router.js\");\n\n\n\n__webpack_require__(/*! dotenv */ \"dotenv\").config();\n\nObject(_lib_express__WEBPACK_IMPORTED_MODULE_0__[\"initExpress\"])(_lib_express__WEBPACK_IMPORTED_MODULE_0__[\"server\"]).then(_lib_postgress__WEBPACK_IMPORTED_MODULE_1__[\"default\"]).then(_lib_router__WEBPACK_IMPORTED_MODULE_2__[\"default\"]).then(_lib_express__WEBPACK_IMPORTED_MODULE_0__[\"startServer\"]);\n\n//# sourceURL=webpack:///./src/server.js?");

/***/ }),

/***/ "./src/utils/SQLQueries.js":
/*!*********************************!*\
  !*** ./src/utils/SQLQueries.js ***!
  \*********************************/
/*! exports provided: selectQuery */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"selectQuery\", function() { return selectQuery; });\n/* harmony import */ var lodash__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! lodash */ \"lodash\");\n/* harmony import */ var lodash__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(lodash__WEBPACK_IMPORTED_MODULE_0__);\n\n\nconst a = 'SELECT ' + '  p.port_country ' + 'FROM ' + '  port AS p ' + 'WHERE' + '  ( p.port_id IN (' + '    SELECT' + '      t.from_port FROM trip AS t ' + '    GROUP BY' + '      t.from_port ' + '    ORDER BY COUNT(*) DESC ' + '    LIMIT $1 ' + '    )' + '  )';\n\nconst b = 'SELECT DISTINCT' + '  c.name ' + 'FROM ' + '  ship_works_for as s ' + 'INNER JOIN ' + '  company as c on s.company_id = $1 ' + 'WHERE s.company_id IN (' + '  SELECT ' + '    s.company_id' + '  FROM' + '     ship_works_for as s ' + '  group by ' + '    s.company_id' + '  order by count(*) desc ' + '  limit 3)';\n\nconst c = \"SELECT *\tFROM trip Inner join ship_works_for ON trip.ship_id=ship_works_for.ship_id Where to_country=$1\";\n\nconst d = '' + 'SELECT ' + '  sc.first_name, sc.Last_name, c.name, t.trip_id ' + 'FROM ' + '  sailor_crews as sc ' + 'INNER JOIN ' + '  trip as t ON sc.current_trip = t.trip_id ' + '  ' + 'INNER JOIN ' + '  ship_works_for as s ON s.ship_id = t.ship_id ' + 'INNER JOIN ' + '  company as c ON c.company_id = s.company_id ' + 'WHERE ' + '  t.trip_id = $1';\n\nconst queries = [a, b, c, d];\n\nconst selectQuery = body => {\n  const { queryIndex } = body;\n  const query = queries[queryIndex - 1];\n  let values;\n\n  if (queryIndex === 1) {\n    values = Object.values(lodash__WEBPACK_IMPORTED_MODULE_0___default.a.pick(body, ['num']));\n  }\n\n  if (queryIndex === 2) {\n    values = Object.values(lodash__WEBPACK_IMPORTED_MODULE_0___default.a.pick(body, ['companyId']));\n  }\n\n  if (queryIndex === 3) {\n    values = Object.values(lodash__WEBPACK_IMPORTED_MODULE_0___default.a.pick(body, ['country']));\n  }\n\n  if (queryIndex === 4) {\n    values = Object.values(lodash__WEBPACK_IMPORTED_MODULE_0___default.a.pick(body, ['tripId']));\n  }\n\n  return { query, values };\n};\n\n//# sourceURL=webpack:///./src/utils/SQLQueries.js?");

/***/ }),

/***/ "./src/utils/healthcheck.js":
/*!**********************************!*\
  !*** ./src/utils/healthcheck.js ***!
  \**********************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _responses__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./responses */ \"./src/utils/responses.js\");\n\nconst { Client } = __webpack_require__(/*! pg */ \"pg\");\n\n/* harmony default export */ __webpack_exports__[\"default\"] = (async (req, res) => {\n\tconst client = new Client();\n\tawait client.connect();\n\tconst re = await client.query(\"SELECT NOW()\");\n\tObject(_responses__WEBPACK_IMPORTED_MODULE_0__[\"_200\"])({ req, res }, re);\n});\n\n//# sourceURL=webpack:///./src/utils/healthcheck.js?");

/***/ }),

/***/ "./src/utils/responses.js":
/*!********************************!*\
  !*** ./src/utils/responses.js ***!
  \********************************/
/*! exports provided: default, _200, _500 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"default\", function() { return Response; });\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"_200\", function() { return _200; });\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"_500\", function() { return _500; });\nclass Response {\n  constructor({ req = {}, res = {} }, data = null) {\n    this.res = res;\n    this.req = req;\n    this.data = data;\n  }\n\n  printLog() {\n    const line = `[${new Date()}] - ${this.req.baseUrl} - ${this.req.method} - ${this.res.statusCode}`;\n  }\n\n  _200() {\n    this.res.status(200).send(this.data);\n    this.printLog();\n  }\n\n  _500() {\n    this.res.status(500).send(this.data);\n    this.printLog();\n  }\n}\n\nconst _200 = ({ req, res }, data) => {\n  const response = new Response({ req, res }, data);\n  response._200();\n};\n\nconst _500 = ({ req, res }, data) => {\n  const response = new Response({ req, res }, data);\n  response._500();\n};\n\n//# sourceURL=webpack:///./src/utils/responses.js?");

/***/ }),

/***/ 0:
/*!*****************************!*\
  !*** multi ./src/server.js ***!
  \*****************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__(/*! ./src/server.js */\"./src/server.js\");\n\n\n//# sourceURL=webpack:///multi_./src/server.js?");

/***/ }),

/***/ "body-parser":
/*!******************************!*\
  !*** external "body-parser" ***!
  \******************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("module.exports = require(\"body-parser\");\n\n//# sourceURL=webpack:///external_%22body-parser%22?");

/***/ }),

/***/ "cors":
/*!***********************!*\
  !*** external "cors" ***!
  \***********************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("module.exports = require(\"cors\");\n\n//# sourceURL=webpack:///external_%22cors%22?");

/***/ }),

/***/ "dotenv":
/*!*************************!*\
  !*** external "dotenv" ***!
  \*************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("module.exports = require(\"dotenv\");\n\n//# sourceURL=webpack:///external_%22dotenv%22?");

/***/ }),

/***/ "express":
/*!**************************!*\
  !*** external "express" ***!
  \**************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("module.exports = require(\"express\");\n\n//# sourceURL=webpack:///external_%22express%22?");

/***/ }),

/***/ "lodash":
/*!*************************!*\
  !*** external "lodash" ***!
  \*************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("module.exports = require(\"lodash\");\n\n//# sourceURL=webpack:///external_%22lodash%22?");

/***/ }),

/***/ "pg":
/*!*********************!*\
  !*** external "pg" ***!
  \*********************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("module.exports = require(\"pg\");\n\n//# sourceURL=webpack:///external_%22pg%22?");

/***/ })

/******/ });