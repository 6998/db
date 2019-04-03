--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: country; Type: TABLE; Schema: bb2762; Owner: bb2762
--

CREATE TABLE bb2762.country (
    country_name text NOT NULL
);


ALTER TABLE bb2762.country OWNER TO bb2762;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: bb2762; Owner: bb2762
--

CREATE SEQUENCE bb2762.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bb2762.country_id_seq OWNER TO bb2762;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: bb2762; Owner: bb2762
--

ALTER SEQUENCE bb2762.country_id_seq OWNED BY bb2762.country.country_name;


--
-- Name: port; Type: TABLE; Schema: bb2762; Owner: bb2762
--

CREATE TABLE bb2762.port (
    port_id integer NOT NULL,
    port_name text NOT NULL,
    port_country text NOT NULL
);


ALTER TABLE bb2762.port OWNER TO bb2762;

--
-- Name: port_id_seq; Type: SEQUENCE; Schema: bb2762; Owner: bb2762
--

CREATE SEQUENCE bb2762.port_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bb2762.port_id_seq OWNER TO bb2762;

--
-- Name: port_id_seq; Type: SEQUENCE OWNED BY; Schema: bb2762; Owner: bb2762
--

ALTER SEQUENCE bb2762.port_id_seq OWNED BY bb2762.port.port_id;


--
-- Name: ship; Type: TABLE; Schema: bb2762; Owner: bb2762
--

CREATE TABLE bb2762.ship (
    ship_id character(10) NOT NULL,
    ship_name text NOT NULL,
    last_report timestamp with time zone NOT NULL,
    "current-location" integer
);


ALTER TABLE bb2762.ship OWNER TO bb2762;

--
-- Name: ship_id_seq; Type: SEQUENCE; Schema: bb2762; Owner: bb2762
--

CREATE SEQUENCE bb2762.ship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bb2762.ship_id_seq OWNER TO bb2762;

--
-- Name: ship_id_seq; Type: SEQUENCE OWNED BY; Schema: bb2762; Owner: bb2762
--

ALTER SEQUENCE bb2762.ship_id_seq OWNED BY bb2762.ship.ship_id;


--
-- Name: trip; Type: TABLE; Schema: bb2762; Owner: bb2762
--

CREATE TABLE bb2762.trip (
    trip_id integer NOT NULL,
    ship_id integer NOT NULL,
    iscompleted boolean DEFAULT false NOT NULL,
    from_port integer NOT NULL,
    to_port integer NOT NULL,
    from_country character(255) NOT NULL,
    to_country character(255) NOT NULL,
    start_date date NOT NULL,
    end_date date
);


ALTER TABLE bb2762.trip OWNER TO bb2762;

--
-- Name: trip_trip_id_seq; Type: SEQUENCE; Schema: bb2762; Owner: bb2762
--

CREATE SEQUENCE bb2762.trip_trip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bb2762.trip_trip_id_seq OWNER TO bb2762;

--
-- Name: trip_trip_id_seq; Type: SEQUENCE OWNED BY; Schema: bb2762; Owner: bb2762
--

ALTER SEQUENCE bb2762.trip_trip_id_seq OWNED BY bb2762.trip.trip_id;


--
-- Name: trip trip_id; Type: DEFAULT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.trip ALTER COLUMN trip_id SET DEFAULT nextval('bb2762.trip_trip_id_seq'::regclass);


--
-- Data for Name: country; Type: TABLE DATA; Schema: bb2762; Owner: bb2762
--

COPY bb2762.country (country_name) FROM stdin;
Afghanistan
land Islands
Albania
Algeria
American Samoa
AndorrA
Angola
Anguilla
Antarctica
Antigua and Barbuda
Argentina
Armenia
Aruba
Australia
Austria
Azerbaijan
Bahamas
Bahrain
Bangladesh
Barbados
Belarus
Belgium
Belize
Benin
Bermuda
Bhutan
Bolivia
Bosnia and Herzegovina
Botswana
Bouvet Island
Brazil
British Indian Ocean Territory
Brunei Darussalam
Bulgaria
Burkina Faso
Burundi
Cambodia
Cameroon
Canada
Cape Verde
Cayman Islands
Central African Republic
Chad
Chile
China
Christmas Island
Cocos (Keeling) Islands
Colombia
Comoros
Congo
Congo, The Democratic Republic of the
Cook Islands
Costa Rica
Cote D"Ivoire
Croatia
Cuba
Cyprus
Czech Republic
Denmark
Djibouti
Dominica
Dominican Republic
Ecuador
Egypt
El Salvador
Equatorial Guinea
Eritrea
Estonia
Ethiopia
Falkland Islands (Malvinas)
Faroe Islands
Fiji
Finland
France
French Guiana
French Polynesia
French Southern Territories
Gabon
Gambia
Georgia
Germany
Ghana
Gibraltar
Greece
Greenland
Grenada
Guadeloupe
Guam
Guatemala
Guernsey
Guinea
Guinea-Bissau
Guyana
Haiti
Heard Island and Mcdonald Islands
Holy See (Vatican City State)
Honduras
Hong Kong
Hungary
Iceland
India
Indonesia
Iran, Islamic Republic Of
Iraq
Ireland
Isle of Man
Israel
Italy
Jamaica
Japan
Jersey
Jordan
Kazakhstan
Kenya
Kiribati
Korea, Democratic People"S Republic of
Kuwait
Kyrgyzstan
Lao People"S Democratic Republic
Latvia
Lebanon
Lesotho
Liberia
Libyan Arab Jamahiriya
Liechtenstein
Lithuania
Luxembourg
Macao
Macedonia, The Former Yugoslav Republic of
Madagascar
Malawi
Malaysia
Maldives
Mali
Malta
Marshall Islands
Martinique
Mauritania
Mauritius
Mayotte
Mexico
Micronesia, Federated States of
Moldova, Republic of
Monaco
Mongolia
Montenegro
Montserrat
Morocco
Mozambique
Myanmar
Namibia
Nauru
Nepal
Netherlands
Netherlands Antilles
New Caledonia
New Zealand
Nicaragua
Niger
Nigeria
Niue
Norfolk Island
Northern Mariana Islands
Norway
Oman
Pakistan
Palau
Palestinian Territory, Occupied
Panama
Papua New Guinea
Paraguay
Peru
Philippines
Pitcairn
Poland
Portugal
Puerto Rico
Qatar
Reunion
Romania
Russian Federation
RWANDA
Saint Helena
Saint Kitts and Nevis
Saint Lucia
Saint Pierre and Miquelon
Saint Vincent and the Grenadines
Samoa
San Marino
Korea
Sao Tome and Principe
Saudi Arabia
Senegal
Serbia
Seychelles
Sierra Leone
Singapore
Slovakia
Slovenia
Solomon Islands
Somalia
South Africa
South Georgia and the South Sandwich Islands
Spain
Sri Lanka
Sudan
Suriname
Svalbard and Jan Mayen
Swaziland
Sweden
Switzerland
Syrian Arab Republic
Tajikistan
Tanzania, United Republic of
Thailand
Timor-Leste
Togo
Tokelau
Tonga
Trinidad and Tobago
Tunisia
Turkey
Turkmenistan
Turks and Caicos Islands
Tuvalu
Uganda
Ukraine
United Arab Emirates
United Kingdom
United States Minor Outlying Islands
Uruguay
Uzbekistan
Vanuatu
Venezuela
Viet Nam
Virgin Islands, British
Virgin Islands, U.S.
Wallis and Futuna
Western Sahara
Yemen
Zambia
Zimbabwe
United States of America
Taiwan (Province of China)
Unknown
\.


--
-- Data for Name: port; Type: TABLE DATA; Schema: bb2762; Owner: bb2762
--

COPY bb2762.port (port_id, port_name, port_country) FROM stdin;
2011	Sweden West	Sweden
2012	Gruia	Romania
2013	Ybbs	Austria
2014	New Jersey	United States of America
2017	Corner Brook	Canada
2019	Victoria, BC	Canada
2020	Liverpool	United Kingdom
2021	Copenhagen	Denmark
2022	Hulst	Netherlands
2023	Baltimore MD, Wilmington	United States of America
2024	Santos	Brazil
2028	At Sea	United States of America
2029	Den Oever	Netherlands
2030	Rostock	Germany
2031	Gdynia	Poland
2032	Stockholm	Sweden
2033	Bodega Bay	United States of America
2035	Seattle	United States of America
2036	Alameda, CA	United States of America
2037	France	France
2038	Port de Bouc	France
2039	Svendborg	Denmark
2040	HCMC	Viet Nam
2042	Vancouver	Canada
2043	Szczecin-Golecin	Poland
2044	Poole	United Kingdom
2045	Portsmouth	United Kingdom
2047	Galveston Bay Texas	United States of America
2049	Kotka	Finland
2050	Plymouth	United Kingdom
2051	Lovund	Norway
2055	Poole	United Kingdom
2056	New Orleans	United States of America
2057	Seattle	United States of America
2058	Humlebaek	Denmark
2059	Azores	Portugal
2060	Solent	United Kingdom
2061	Ostend	Belgium
2063	Traena	Norway
2064	Grimsby	United Kingdom
2065	Ijsselmeer	Netherlands
2066	Orkney	United Kingdom
2069	Desteldonk	Belgium
2070	Nelson Bay, NSW	Australia
2071	Fort Lauderdale, Fl	United States of America
2072	Walsum	Germany
2073	Felixstowe	United Kingdom
2074	Savona	Italy
2075	Nuuk	Greenland
2076	Murcia	Spain
2077	Rotterdam	Netherlands
2083	Yangpu	China
2084	Ios	Greece
2085	Kinsale	Ireland
2086	Katwijk	Netherlands
2087	Saint Petersburg	Russian Federation
2088	Singapore	Singapore
2089	Saint Petersburg	Russian Federation
2090	Marseille	France
2092	Bayfield	United States of America
2093	Rouen	France
2094	Singapore	Singapore
2095	Bezons	France
2096	Rotterdam	Netherlands
2097	Hellevoetsluis	Netherlands
2098	Palermo	Italy
2100	Seattle	United States of America
2101	Heusden-Zolder	Belgium
2102	Duluth, MN	United States of America
2103	London	United Kingdom
2105	Spijkenisse	Netherlands
2107	Aberdeen	United Kingdom
2109	Oskarshamn	Sweden
2110	Bremen	Germany
2111	Ceuta	Spain
2112	Harlingen	Netherlands
2114	Auckland	New Zealand
2115	Groningen	Netherlands
2116	Lisbon	Portugal
2117	Kristiansund	Norway
2118	Alimos	Greece
2119	Yokohama	Japan
2120	Scotland, Gourdon	United Kingdom
2121	Kobe	Japan
2122	Homborsund	Norway
2123	Cabo da Roca Lighthouse	Portugal
2124	Zwijndrecht	Netherlands
2126	Hamburg	Germany
2127	Izegem	Belgium
2128	Nea Peramos	Greece
2129	Ipswich	United Kingdom
2130	Lower Saxony (Mittellandkanal)	Germany
2131	Newquay-Cornwall	United Kingdom
2132	Durban	South Africa
2133	Caithness (Scotland)	United Kingdom
2134	Fort Lauderdale, FL	United States of America
2136	NW_Overijssel	Netherlands
2137	Bremen	Germany
2138	Veracruz	Mexico
2139	Islands Brygge	Denmark
2140	Rotterdam	Netherlands
2141	Sandnes	Norway
2143	Vancouver BC	Canada
2144	Brooklyn	United States of America
2145	Antwerp2	Belgium
2146	Palma de Mallorca	Spain
2147	S/C de Tenerife	Spain
2148	Vicksburg	United States of America
2149	Niceville, FL	United States of America
2150	Lackenbehy	Ireland
2151	Dalian	China
2153	Egersund	Norway
2154	Stockholm	Sweden
2155	Lelystad	Netherlands
2156	Aubervilliers	France
2157	Michigan	United States of America
2159	Swanage	United Kingdom
2160	Scotland, Peterhead	United Kingdom
2161	San Francisco	United States of America
2162	Egersund	Norway
2163	Utrecht	Netherlands
2164	Goteborg, West Coast	Sweden
2165	Hamburg	Germany
2166	Saint Georges de Didonnes	France
2167	BIBA	Germany
2168	Gdynia	Poland
2169	La Spezia	Italy
2171	Chiba	Japan
2172	Navarre FL	United States of America
2173	Gosport	United Kingdom
2174	Knutshaugen	Norway
2175	Berlin Rummelsburg	Germany
2176	Glueckstadt	Germany
2177	Kowloon	Hong Kong
2178	Rouen	France
2179	Tallinn	Estonia
2180	Rouen	France
2181	Vanersborg	Sweden
2182	Richmond, BC	Canada
2183	Lisbon	Portugal
2185	Goes	Belgium
2186	Könau	Germany
2187	Monterey-CA	United States of America
2188	Tauranga	New Zealand
2189	Milazzo	Italy
2190	Ekenas	Finland
2191	Aberdeen	United Kingdom
2192	Norrköping	Sweden
2193	Xia Men	China
2259	Stutsmanville MI	United States of America
2260	Oban	United Kingdom
2262	Karlskrona	Sweden
2264	Uto	Finland
2265	Berchem	Belgium
2266	Sodersvik	Sweden
2268	Medemblik (IJsselmeer)	Netherlands
2269	Utrecht	Netherlands
2270	Simpson Bay	Netherlands
2272	Brooklyn NY	United States of America
2273	Rotterdam	Netherlands
2275	Lorient	France
2276	Ter Heijde	Netherlands
2277	Dania Beach - Florida	United States of America
2278	Amsterdam	Netherlands
2280	Brest	France
2281	Sines	Portugal
2282	Seattle	United States of America
2283	Haifa	Israel
2286	Isle of Islay Scotland	United Kingdom
2288	Ramsgate	United Kingdom
2289	Copenhagen	Denmark
2290	Athens	Greece
2291	Bremerhaven	Germany
2292	Gent	Belgium
2293	Austin	United States of America
2294	Bochum	Germany
2295	Cologne	Germany
2296	Seattle	United States of America
2297	Great Yarmouth	United Kingdom
2299	Sene-Vannes	France
2300	Schilde	Belgium
2301	Noumea	New Caledonia
2303	Maastricht	Netherlands
2304	Ingarostrand	Sweden
2305	Les Sables dOlonne	France
2307	Ventnor	United Kingdom
2308	Jupiter, FL	United States of America
2309	ABXAIS	United Kingdom
2310	Nikolaev	Ukraine
2312	Bristol	United Kingdom
2313	Broadstairs, Kent	United Kingdom
2314	Nacala	Mozambique
2316	Guernsey	United Kingdom
2318	Helsinki	Finland
2319	Stockholm	Sweden
2320	Villennes sur Seine	France
2321	Cobh	Ireland
2322	Rome	Italy
2323	Conakry	Guinea
2324	Lowestoft	United Kingdom
2326	Sumoto	Japan
2327	Roenne, Bornholm	Denmark
2328	Constanta	Romania
2332	Martinique	United States of America
2333	TEST-EP	United Kingdom
2334	Ust-Luga	Russian Federation
2335	Le Havre	France
2336	Dunedin	New Zealand
2337	Terneuzen	Netherlands
2339	North Aegean	Greece
2340	Kinderdijk	Netherlands
2341	Papper	Norway
2342	Ostra Husby	Sweden
2343	Friday Harbor	United States of America
2344	Koper	Slovenia
2345	Toulouse	France
2346	Amsterdam	Netherlands
2347	The Hague	Netherlands
2348	Chile	Chile
2349	Portland	United States of America
2350	Delfzijl	Netherlands
2352	Annisquam, MA	United States of America
2353	Kaohsiung	Taiwan (Province of China)
2354	Mizen Head	Ireland
2355	Torslanda, Gothenburg	Sweden
2356	Zhangjiagang	China
2357	Gateshead	United Kingdom
2358	Oeiras	Portugal
2361	Cologne	Germany
2364	Sovereign Harbour	United Kingdom
2365	Kragero	Norway
2366	Trondheim	Norway
2367	Piraeus	Greece
2368	Copenhagen	Denmark
2370	Tema	Ghana
2373	Marseille	France
2376	Anacortes, WA	United States of America
2378	Newtownmountkennedy	Ireland
2379	Zeist	Netherlands
2381	Delft	Netherlands
2382	Bartlett Cove, Gustavus AK (Glacier Bay National Park)	United States of America
2383	Rogers City, Michigan	United States of America
2384	Kristiansund	Norway
2385	Porto	Portugal
2386	Amsterdam	Netherlands
2388	Finland	Finland
2390	Shelton Washington	United States of America
2392	Rotterdam	Netherlands
2393	Rognan	Norway
2395	Higher Brixham	United Kingdom
2396	Neuss	Germany
2397	Noordzee	Netherlands
2398	Berlin	Germany
2399	Ireland	Ireland
2400	Norresundby	Denmark
2401	Odessa	Ukraine
2402	Spijkenisse	Netherlands
2403	Stadersand	Germany
2404	Bruges	Belgium
2406	Brest	France
2408	Jersey City, NJ	United States of America
2409	Geertruidenberg	Netherlands
2411	Ballynahinch, N.Ireland	United Kingdom
2412	Baltimore	United States of America
2413	Hamburg Alster	Germany
2414	Valencia	Spain
2415	Brest	France
2417	Wakayama Port	Japan
2419	Porto Salvo	Portugal
2420	Genoa Harbor	Italy
2423	Rockport	United States of America
2424	Novorossiysk	Russian Federation
2425	Ter Walslage	Netherlands
2426	San Francisco bay	United States of America
2427	Cozumel	Mexico
2428	Le Havre	France
2430	Oslo	Norway
2431	Cap Ferret	France
2432	Zaporozhye	Ukraine
2433	Tuapse	Russian Federation
2434	Pratteln	Switzerland
2435	Katwijk	Netherlands
2436	Treehouse, Virgin Islands	United States of America
2438	Singapore	Singapore
2440	Vancouver BC	Canada
2442	Bremen	Germany
2443	Barranquilla	Colombia
2444	Chesapeake Bay	United States of America
2446	Hong Kong	Hong Kong
2448	Camden	United States of America
2450	Trollhattan	Sweden
2451	Segersang	Sweden
2452	Rotterdam	Netherlands
2453	Lindholmen	Sweden
2455	Sjobergs AIS	Denmark
2457	Neuville sur Oise	France
2458	Santa Barbara CA	United States of America
2459	Edam	Netherlands
2460	Moss	Norway
2461	Dresden	Germany
2463	Prince Rupert	Canada
2464	Asendorf	Germany
2465	Darwin	Australia
2466	Callao, VA	United States of America
2467	La Seyne sur Mer	France
2468	Rotterdam	Netherlands
2469	Sollube - Bizkaia	Spain
2470	Zwolle	Netherlands
2471	UBS-Vannes	France
2472	Devon	United Kingdom
2473	Tonsberg	Norway
2474	Gosport	United Kingdom
2475	Poortugaal	Netherlands
2477	Humber Dock	United Kingdom
2478	Tweedmouth	United Kingdom
2479	Colon	Panama
2480	Kungsangen	Sweden
2483	Nederweert	Netherlands
2484	Biscayne Bay PS - Miami FL	United States of America
2485	Miloslavov	Slovakia
2486	Saint Xandre	France
2487	Fecamp	France
2488	Kinlochbervie	United Kingdom
2489	Messina	Italy
2490	Octant Base	Norway
2492	Rotterdam	Netherlands
2495	Duluth, MN	United States of America
2496	Spire SF	United States of America
2497	Warmond	Netherlands
2500	University of Cherbourg	France
2501	San Francisco	United States of America
2502	Scarborough	Australia
2505	Göteborg	Sweden
2506	Lista	Norway
2507	Saint Renan	France
2508	Port Stephens	Australia
2510	Hellevoetsluis	Netherlands
2512	Quadra Island	Canada
2513	Cologne	Germany
2514	Lochgelly	United Kingdom
2515	Antwerpen	Belgium
2516	Murmansk	Russian Federation
2517	Belem	Brazil
2519	Singapore	Singapore
2520	Vienna	Austria
2521	Gela	Italy
2522	Torquay	United Kingdom
2523	West Palm Beach	United States of America
2525	Meta (Naples)	Italy
2526	Oviedo	Spain
2529	Arnold, MD	United States of America
2530	Key Largo, FL	United States of America
2533	Copenhagen	Denmark
2534	Huizen	Netherlands
2537	Savannah, Georgia	United States of America
2538	Newport, RI	United States of America
2540	Blyth	United Kingdom
2541	Sabro	Denmark
2542	Leidschendam	Netherlands
2544	Tauranga	New Zealand
2545	Sletten	Denmark
2548	Poortugaal	Netherlands
2549	Rijswijk	Netherlands
2550	Veendam	Netherlands
2551	Elbe River, Drochtersen	Germany
2552	Canary Islands	Spain
2554	Gorinchem	Netherlands
2555	Oostvoorne	Netherlands
2556	Franklin	Australia
2557	Grasse	France
2558	Gelliswick	United Kingdom
2559	Nijmegen	Netherlands
2560	Southsea, Hampshire	United Kingdom
2561	Bremerhaven	Germany
2562	Brostadbotn	Norway
2564	La Rochelle	France
2565	Uithoorn	Netherlands
2566	Tallinn	Estonia
2567	Skelmorlie	United Kingdom
2568	Wesel	Germany
2570	Mountain View	United States of America
2571	Mount Riverview, NSW	Australia
2572	Mandelieu La Napoule	France
2573	Venice	Italy
2574	Zwolle	Netherlands
2576	Southampton	United Kingdom
2577	Hamburg	Germany
2578	Asker	Norway
2580	Frederikssund	Denmark
2581	Korshamn	Norway
2582	Siegburg	Germany
2583	Broadford	United Kingdom
2584	Rendsburg	Germany
2585	Invercargill	New Zealand
2586	Jeloy, Moss	Norway
2587	Beijing	China
2588	The Hague	Netherlands
2589	Brandenburg	Germany
2590	Breda	Netherlands
2593	Scheveningen	Netherlands
2595	Odessa	Ukraine
2597	San Pedro	United States of America
2598	Beijing	China
2599	Zwijndrecht	Netherlands
2601	Yucatan	Mexico
2602	Castelldefels	Spain
2603	Geesthacht	Germany
2604	Sundbyberg	Sweden
2605	Bremen	Germany
2606	Rio de Janeiro	Brazil
2610	Haifa	Israel
2611	Tauranga	New Zealand
2614	Kingwood	United States of America
2616	Oldenburg	Germany
2619	Groves	United States of America
2621	Kwai Chung	Hong Kong
2623	Appeltern	Netherlands
2627	Levis	Canada
2629	Rotterdam	Netherlands
2633	Bremen	Germany
2634	Skopun	Faroe Islands
2636	Cowes, Isle of Wight	United Kingdom
2637	Devonport	Australia
2638	Baldwin Harbor	United States of America
2642	Dordrecht	Netherlands
2645	Regensburg	Germany
2649	Hazira	India
2650	Sabine Pass, Texas	United States of America
2652	Marknesse	Netherlands
2653	La Rochelle	France
2654	St Martin	Guernsey
2656	Cagliari	Unknown
2660	Sorel-Tracy	Canada
2661	Amersfoort	Netherlands
2663	Lingen	Germany
2665	Sorrento	Italy
2666	Baltimore	United States of America
2667	Pok Fu Lam	Hong Kong
2668	Boston	United States of America
2669	Holywood	United Kingdom
2670	At Sea	India
2671	Hippolytushoef	Netherlands
2674	Maastricht	Netherlands
2675	Sydney	Australia
2677	Rotterdam	Netherlands
2679	Port Moresby	Papua New Guinea
2683	Vancouver	Canada
2686	North Saanich	Canada
2688	Crete	Greece
2689	Haugesund	Norway
2692	Westmount	Canada
2697	Wadscan AIS	Netherlands
2698	Dunnsville,Virginia	United States of America
2700	Dun Laoghaire	Ireland
2702	Auckland	New Zealand
2703	Dubai	United Arab Emirates
2706	Glasgow	United Kingdom
2709	Watervliet, St Laureins	Belgium
2713	Oostende	Belgium
2718	Camden	United States of America
2719	Klaipeda	Lithuania
2724	Ghent	Belgium
2725	Aarhus	Denmark
2728	Emden	Germany
2729	Murcia	Spain
2734	Driebergen	Netherlands
2735	Lowestoft	United Kingdom
2736	Busan	Korea
2738	Hamburg	Germany
2740	Coogee	Australia
2742	San Francisco	United States of America
2744	San Sebastián de La Gomera	Spain
2746	Grenada	United States of America
2749	Carnon	France
2752	Grisslehamn	Sweden
2754	Barrien	Germany
2756	Baltimore	United States of America
2759	Bruehl-Baden	Germany
2761	Wellington	New Zealand
2765	Tampa	United States of America
2766	Zaire	Angola
2769	Chernomorsk	Ukraine
2770	Marlborough Sounds	New Zealand
2774	Bidart	France
2775	Colonia Sant Jordi	Spain
2777	Sarzon	France
2778	Wieringerwerf	Netherlands
2781	Auckland CDB	New Zealand
2785	Driebergen	Netherlands
2787	New London	United States of America
2789	Bremen	Germany
2791	Delfzijl	Netherlands
2794	Keelung	Taiwan (Province of China)
2795	Husvik	Norway
2797	Signal Hill	United States of America
2798	Linz	Austria
2799	Nyköping	Sweden
2800	London	United Kingdom
2802	Tonsberg	Norway
2805	London	United Kingdom
2807	Cape Town	South Africa
2811	Tallinn	Estonia
2813	Terneuzen	Netherlands
2815	Delft	Netherlands
2822	Monaco	Monaco
2824	Trave	Germany
2825	Alton	United Kingdom
2828	Skive	Denmark
2829	Inderoy	Norway
2830	Wellington	New Zealand
2831	Delft	Netherlands
2832	Saltdean	United Kingdom
2833	Groton	United States of America
2834	Azores	Portugal
2835	Papendrecht	Netherlands
2842	Genova	Italy
2843	Gravesend	United Kingdom
2846	Westport	Ireland
2856	Larnaca	Cyprus
2858	Brandenburg	Germany
2859	Upholland	United Kingdom
2861	Karlsruhe	Germany
2887	UHW km 4	Germany
2888	Amersfoort	Netherlands
2889	Baiona	Spain
2893	Leusden	Netherlands
2914	Berlin	Germany
2916	Rotterdam	Netherlands
2932	Nordrhein-Westfalen - Ratingen	Germany
2935	Hamburg	Germany
2938	Cadiz	Spain
2950	Murmansk	Russian Federation
2951	New Orleans, Louisiana	United States of America
2953	Lowestoft, Suffolk	United Kingdom
2954	Sophia Antipolis, MINES Paristech	France
2955	Bowen Island	Canada
2956	Loftahammar	Sweden
2960	Melun	France
2961	Rijswijk	Netherlands
2967	Paris	France
2968	Fort Walton Beach, Florida	United States of America
2969	Meizhou Bay	China
2972	Brest	France
2976	Ilsanseo-gu	Korea
2977	Krokslätt	Sweden
2982	Tromso	Norway
2983	Huizen	Netherlands
2988	Brisbane River	Australia
2992	At Sea	Unknown
2993	Kingseat	United Kingdom
\.


--
-- Data for Name: ship; Type: TABLE DATA; Schema: bb2762; Owner: bb2762
--

COPY bb2762.ship (ship_id, ship_name, last_report, "current-location") FROM stdin;
2278000   	PORT DE CALAIS	2014-05-13 15:55:09-04	\N
2320208   	LOMOND	2016-08-22 19:56:53-04	\N
2339002   	NCI NELLS POINT	2018-12-13 02:29:41-05	\N
2339003   	RNLI COWES	2015-02-25 14:03:18-05	\N
2339004   	NCI TORBAY	2014-02-13 01:06:09-05	\N
2424114   	SR.IFNI	2016-04-06 03:25:15-04	\N
2447004   	V.D. GRAAF SR	2015-04-11 03:51:32-04	\N
2470087   	MILAZZO PORT INFORMR	2014-12-29 21:29:40-05	\N
2609076   	ANIMA+SVAD4	2017-10-11 06:18:25-04	\N
3160184   	WINCHELSEA CONTROL	2013-12-19 14:24:45-05	\N
3669999   	V.A.WHITE POINT	2015-10-18 08:27:10-04	\N
3689001   	SKULL CREEK MARINA	2014-07-01 18:33:18-04	\N
4280052   	HADERA PORT	2015-06-20 00:37:00-04	\N
4294568   	BRASIL	2018-03-26 05:59:57-04	\N
4324385   	CORSO	2015-09-12 10:05:55-04	\N
5631101   	PSAB	2012-01-28 21:29:46-05	\N
5631127   	POCC VISTA	2018-06-29 00:51:54-04	\N
5958574   	JANNES VAN CAMPEN	2017-06-22 20:31:23-04	\N
7444447   	SABA	2015-07-22 12:57:46-04	\N
20202020  	KM BERUDU_	2012-09-30 13:15:14-04	\N
20203760  	TJALK	2013-04-10 21:15:15-04	\N
21676634  	AJUG	2012-10-28 07:38:27-04	\N
24935500  	SEINE COMTESSE	2014-02-07 21:13:05-05	\N
25000116  	CELTIC SUN	2018-10-08 09:59:42-04	\N
26008890  	JOFFRE	2017-09-14 18:39:12-04	\N
28164626  	ESPERANTO	2015-05-04 22:49:40-04	\N
31128327  	DEVYANTA	2017-03-22 19:13:15-04	\N
32767156  	DE AK0	2016-08-01 15:37:18-04	\N
44750019  	LIBRA	2012-07-22 19:07:27-04	\N
111503020 	VH-NPC	2013-12-31 08:50:02-05	\N
200000000 	TEST	2013-06-10 12:45:19-04	\N
200000008 	TEST	2013-06-08 15:04:22-04	\N
200011782 	SUN TAI ON 8	2015-05-29 20:48:05-04	\N
200012070 	MINLONGYU12345	2013-11-13 17:30:30-05	\N
200014011 	YUEHUILAI22287----	2016-01-07 15:43:43-05	\N
200017185 	SHUN LI 3	2017-04-18 01:00:48-04	\N
200020601 	MINLONGYU07865----	2012-11-16 00:09:57-05	\N
200021567 	ZHE PIN HU YU 00088	2013-10-23 02:24:37-04	\N
200022543 	(HH	2012-11-19 05:14:29-05	\N
200033161 	YUELAICAIYU12388	2012-04-18 14:43:27-04	\N
200033203 	YUELAICA YU 08686	2016-07-08 07:33:50-04	\N
200058279 	05138	2016-01-21 23:41:00-05	\N
200096563 	MIN LONG YU 60938	2013-09-03 18:00:39-04	\N
203541100 	LISA 4	2012-09-22 02:20:18-04	\N
203999295 	SCHOENBRUNN	2013-11-18 12:09:07-05	\N
203999297 	FREUDENAU	2015-06-11 15:20:06-04	\N
203999298 	SIEBNERIN	2012-12-09 01:16:11-05	\N
203999303 	WIEN	2016-06-24 05:31:28-04	\N
203999323 	POLIZEI WIEN	2015-07-16 13:01:12-04	\N
203999325 	ADMIRAL TEGETTHOFF	2013-05-11 06:46:50-04	\N
203999327 	VINDOBONA	2017-11-29 06:52:43-05	\N
203999335 	AQUA TEAM	2017-11-13 08:04:59-05	\N
203999337 	KAISERIN ELISABETH 2	2018-09-02 16:30:53-04	\N
203999339 	GREIFENSTEIN	2018-06-13 10:04:02-04	\N
203999342 	FEUERWEHR WIEN 2	2017-05-01 09:34:11-04	\N
203999343 	TWIN CITY LINER 1	2012-10-31 02:52:50-04	\N
203999348 	EISVOGEL	2012-05-29 15:32:27-04	\N
203999350 	AURORA	2017-01-13 09:54:42-05	\N
203999351 	BLUE DANUBE	2012-05-29 09:05:17-04	\N
203999352 	WACHAU	2018-06-18 09:41:16-04	\N
203999356 	SKORPION	2016-08-05 20:00:34-04	\N
203999358 	FREYENSTEIN	2013-09-27 01:58:54-04	\N
203999364 	DOKW2	2018-12-30 02:26:12-05	\N
203999365 	KREMS	2014-08-23 07:16:48-04	\N
203999371 	TWIN CITY LINER 2	2012-12-07 19:48:00-05	\N
203999373 	DTSG 1	2013-08-12 18:05:05-04	\N
203999376 	THEODOR KOERNER	2014-11-22 22:45:06-05	\N
203999377 	EDUARD	2014-03-20 03:58:47-04	\N
203999389 	DEGGENDORF	2015-11-16 16:42:16-05	\N
203999391 	INNSBRUCK	2018-08-16 15:25:56-04	\N
203999404 	DONAUPLUS	2013-04-16 13:00:38-04	\N
203999412 	ARTHUR KASPAR	2012-12-30 06:58:59-05	\N
203999421 	PRIMADONNA	2013-03-11 18:52:40-04	\N
203999426 	WIEN	2013-07-21 13:09:30-04	\N
203999427 	WIENTANK 1	2016-11-03 08:32:01-04	\N
203999436 	RENAISSANCE	2014-08-06 16:58:19-04	\N
203999445 	MS SISSI	2013-06-27 02:08:59-04	\N
203999485 	TWIN CITY LINER	2016-05-29 18:57:55-04	\N
204201240 	PESCATUM	2012-11-06 14:13:26-05	\N
204201270 	PEROLA DA PRAIA	2012-05-11 17:21:18-04	\N
204206750 	BAIA DA MAIA	2014-09-09 10:27:49-04	\N
204206760 	MESTRE SOARES	2016-02-10 12:24:16-05	\N
204208670 	GORETTI PERINHO	2018-03-21 05:26:24-04	\N
204209890 	ANDRE E TIAGO	2016-03-09 12:02:12-05	\N
204263000 	CRUSTACEO	2012-05-18 07:07:58-04	\N
204287000 	REI DOS ACORES	2017-10-02 21:56:47-04	\N
204600002 	SAO MIG	2018-06-05 09:09:05-04	\N
204600008 	PERO DE TEIVE	2017-08-12 21:12:59-04	\N
204601240 	ILHA DE SAO LUIS	2015-07-11 10:59:40-04	\N
204671240 	CORAL DA HORTA	2018-06-17 11:13:07-04	\N
204671360 	DRAGOCIDENTAL	2014-01-19 11:40:16-05	\N
204701390 	GILBERTO MARIANO	2018-10-09 08:17:27-04	\N
204709000 	CORVO	2012-11-05 22:41:23-05	\N
204815000 	PARMA	2017-12-19 09:43:08-05	\N
205008600 	TEXAS	2017-12-30 16:24:29-05	\N
205010000 	MFV.Z700_BRAVEHEART	2016-03-31 03:39:12-04	\N
205015300 	FOLIE	2017-09-16 11:01:57-04	\N
205017800 	EILAND	2015-08-09 07:38:22-04	\N
205026900 	NAVASSA	2017-12-07 10:02:50-05	\N
205029000 	ZEEWOLF	2013-01-07 15:42:54-05	\N
205036000 	OOSTENDE 1	2016-07-30 21:29:01-04	\N
205045800 	BREITLING	2012-09-30 19:51:48-04	\N
205057000 	ST ANNASTRAND	2018-01-03 09:53:57-05	\N
205063000 	TERNEUZEN	2018-03-11 16:38:22-04	\N
205065000 	UNION 5	2017-03-12 11:08:20-04	\N
205072000 	SIMON STEVIN	2015-05-08 11:10:59-04	\N
205085300 	SOMTRANS XI	2019-01-05 06:36:42-05	\N
205088000 	J BREYDEL PILOT 1	2016-12-28 10:34:45-05	\N
205092000 	GEELVINCK	2016-10-20 05:56:16-04	\N
205094000 	WESELTJE	2012-03-12 20:30:20-04	\N
205098000 	Z181 DUBBELE SENIOR	2012-08-09 01:18:43-04	\N
205099000 	PIETER COECKE	2017-01-30 19:31:57-05	\N
205107000 	PILOT 1	2015-01-02 18:58:33-05	\N
205110000 	PILOT 7	2016-08-31 20:00:55-04	\N
205111000 	ZEEHOND	2014-03-11 17:25:24-04	\N
205132000 	RAMBIZ	2012-12-23 10:11:10-05	\N
205149000 	MFV Z39 ZUIDERZEE	2017-12-25 23:16:07-05	\N
205155000 	MFV Z67 RUBENS	2013-03-03 21:08:56-05	\N
205162000 	MFV Z121 DEBORAH	2012-04-26 05:34:17-04	\N
205177000 	LIEVEN GEVAERT	2015-08-20 07:14:12-04	\N
205188000 	UNION 7	2016-07-30 23:40:57-04	\N
205192000 	CUSTOS DEUS	2017-06-07 19:34:48-04	\N
205193000 	UNION 8	2015-02-24 04:44:50-05	\N
205197000 	MFV Z90 FRANCINE	2013-06-08 08:18:32-04	\N
205199000 	BRAAKMAN	2019-02-20 09:19:24-05	\N
205200190 	IMMUNITY	2014-07-02 00:34:02-04	\N
205200490 	LUDOVICA	2012-02-04 23:57:16-05	\N
205202090 	PLAYBOY	2014-02-21 23:34:34-05	\N
205202190 	CURSOR	2012-04-21 08:43:29-04	\N
205202690 	GERONIMUS	2014-06-10 06:33:18-04	\N
205202790 	MATTHIOLA	2018-07-05 19:01:40-04	\N
205203390 	TUG 92	2018-04-16 15:50:35-04	\N
205203990 	OCEANIC	2018-01-24 04:06:29-05	\N
205204490 	TYPHON	2015-09-02 14:39:21-04	\N
205205467 	OSTIA	2016-02-01 12:17:50-05	\N
205205690 	ALCATRAZ	2017-09-03 11:53:58-04	\N
205206190 	DABRICY	2015-06-07 01:47:07-04	\N
205206490 	TUNICA	2017-07-21 18:45:59-04	\N
205206590 	ATLAS	2012-08-23 05:15:32-04	\N
205208000 	BNS CROCUS	2012-09-28 07:46:28-04	\N
205209890 	LIBRA	2016-07-01 05:13:38-04	\N
205210400 	TEPEE	2013-02-03 13:41:54-05	\N
205213590 	REGINALD	2014-07-11 23:21:43-04	\N
205215190 	KAPITEIN A.DE WILDE	2018-10-10 04:39:35-04	\N
205217530 	ANANDA	2012-04-07 04:32:39-04	\N
205217590 	DAHLIA	2016-07-02 07:32:29-04	\N
205218190 	SAVIO	2015-09-05 04:29:32-04	\N
205218590 	MTS DW ANTWERPEN	2018-10-21 02:06:57-04	\N
205218990 	JE-PA	2015-06-24 09:35:13-04	\N
205220390 	LORENZO	2017-08-24 00:12:56-04	\N
205220830 	ALENDOY	2015-12-28 16:00:42-05	\N
205223590 	INSOMNIA	2014-10-20 14:18:48-04	\N
205226090 	LIEVEN BAUWENS	2013-05-09 15:01:55-04	\N
205226290 	NOSTALGICA	2017-11-06 03:29:14-05	\N
205227000 	Z 45	2018-05-25 03:50:22-04	\N
205227090 	DONAU	2015-10-23 06:22:32-04	\N
205227290 	SILVIA	2012-08-08 06:06:58-04	\N
205229190 	SARDAN	2016-10-02 10:16:15-04	\N
205231000 	ATLANTIS	2014-02-17 16:34:41-05	\N
205231200 	BACH	2013-05-13 21:12:59-04	\N
205232690 	MOZART	2014-10-18 00:58:07-04	\N
205233000 	UNION 11	2012-10-21 09:12:31-04	\N
205233290 	JACOB VAN ARTEVELDE	2014-11-03 11:33:03-05	\N
205233390 	VITADOR	2015-10-18 17:46:37-04	\N
205233890 	DREAMBOAT	2015-11-14 08:20:11-05	\N
205234000 	UNION HAWK	2014-01-03 12:21:23-05	\N
205234390 	REVENGE	2012-01-26 11:29:02-05	\N
205234590 	MIAMAUX	2018-03-14 09:27:08-04	\N
205236000 	Z431 ALLES WISSELT	2017-03-08 21:42:40-05	\N
205236790 	AUDAX	2016-10-03 22:56:38-04	\N
205237290 	PROTEUS	2017-09-10 23:39:33-04	\N
205238190 	SOMTRANS V	2015-07-03 20:42:35-04	\N
205240000 	Z35 ORA ET LABORA	2012-06-28 09:34:04-04	\N
205242990 	MARLIN	2013-01-04 00:44:25-05	\N
205243000 	Z483JASMINE	2017-03-11 06:51:36-05	\N
205245890 	ZUIDZEE	2013-08-16 23:04:30-04	\N
205245990 	NATHALIE	2012-04-15 13:15:15-04	\N
205247090 	CHARLES-D	2012-05-18 00:41:22-04	\N
205247700 	FERONIA	2015-08-22 19:29:06-04	\N
205250990 	ARC EN CIEL	2015-12-21 05:02:19-05	\N
205251000 	VLAANDEREN 7	2013-08-28 16:38:50-04	\N
205251690 	BEVERDAM	2013-07-26 23:10:05-04	\N
205252000 	VLAANDEREN VIII	2015-04-16 04:06:29-04	\N
205252190 	AMPHIRO	2013-02-27 23:27:03-05	\N
205252690 	TUG 22	2017-01-17 14:00:08-05	\N
205253090 	COLOMBIA	2015-07-06 17:09:18-04	\N
205254190 	TUG 81	2014-07-25 20:32:21-04	\N
205254790 	TUG 85	2018-12-17 03:56:14-05	\N
205255190 	DIAMOND	2017-10-03 01:02:03-04	\N
205255590 	THOR	2015-01-08 23:09:53-05	\N
205255690 	VAYA CON DIOS	2015-01-28 01:19:23-05	\N
205256290 	KARA	2012-03-15 01:49:51-04	\N
205257990 	BANZAI	2012-12-21 15:04:51-05	\N
205258090 	NADA	2015-07-10 07:54:59-04	\N
205258490 	SAMARKAND	2012-02-06 22:31:34-05	\N
205261000 	B-601 VAN MAERLANT	2013-01-26 06:30:15-05	\N
205261490 	BIG-BEN	2015-12-08 02:07:21-05	\N
205261990 	KEIKO	2015-09-19 12:28:19-04	\N
205262000 	MFV Z15 ZILVERMEEUW	2012-12-31 23:54:53-05	\N
205262190 	AVISO	2016-12-03 23:02:01-05	\N
205262590 	ADVERSA	2018-07-05 12:56:45-04	\N
205264290 	TUG 82	2017-10-12 23:52:35-04	\N
205264890 	TUG 83	2013-06-20 18:50:52-04	\N
205265000 	B 65 ARTEVELDE	2013-02-27 06:37:18-05	\N
205268490 	S T E V I L A	2017-12-25 06:49:36-05	\N
205270690 	ADIO	2015-10-21 12:39:22-04	\N
205271390 	THEODELA	2018-05-24 14:29:30-04	\N
205272000 	RENILDE O190	2012-04-26 04:46:15-04	\N
205273990 	TUG90	2015-09-01 18:50:18-04	\N
205274990 	BRABO	2016-06-25 20:16:45-04	\N
205275890 	SIRIUS	2014-10-04 08:45:25-04	\N
205276490 	GRACE DE DIEU	2012-01-30 12:02:14-05	\N
205278090 	SAFFIER	2018-10-04 14:43:37-04	\N
205278290 	COMUS	2012-05-15 10:43:59-04	\N
205278690 	ANNICO	2015-05-18 23:31:48-04	\N
205279790 	LUXOR	2015-11-28 03:34:34-05	\N
205280590 	OCTOPUS	2014-12-29 13:30:43-05	\N
205280990 	SINJOOR 1	2013-08-15 10:24:18-04	\N
205281530 	60-ONE	2016-03-26 20:21:41-04	\N
205282390 	ARCADIE	2018-05-29 20:08:01-04	\N
205285590 	ZUIDNATIE9	2018-05-27 16:55:58-04	\N
205285890 	KVB CHRIDI	2016-11-09 07:56:28-05	\N
205287390 	AXIOMA	2018-01-07 00:15:12-05	\N
205287590 	BELVONA	2015-10-05 15:18:00-04	\N
205288290 	LIERDAM	2019-01-14 19:49:07-05	\N
205288790 	FRANTO	2012-12-26 18:47:01-05	\N
205288990 	OXFORD	2017-03-14 16:12:24-04	\N
205289000 	MFV Z84 CALYPSO	2017-06-12 19:59:11-04	\N
205289590 	SORRENTO	2015-03-27 20:54:14-04	\N
205289700 	HYDRA	2017-12-07 20:09:13-05	\N
205289790 	MTS EMMA	2014-07-22 14:07:19-04	\N
205289890 	ESQURUDE	2012-11-03 13:06:18-04	\N
205290000 	SILVERPIT Z-80	2014-03-24 04:58:50-04	\N
205292090 	DORNECK	2015-08-30 05:15:41-04	\N
205292490 	AUGINA	2018-10-21 09:46:24-04	\N
205293290 	DEO DATE	2016-06-19 04:03:12-04	\N
205294890 	BIVIO	2012-05-15 05:57:15-04	\N
205298790 	LUPUS	2014-11-04 22:48:18-05	\N
205298990 	BILL	2013-08-28 06:15:14-04	\N
205300000 	UNION EAGLE	2018-07-30 05:58:30-04	\N
205300190 	PRO VERITATE	2016-12-07 05:59:17-05	\N
205301190 	RUBICON	2013-09-29 02:18:45-04	\N
205303000 	Z-296	2013-11-25 08:09:24-05	\N
205303490 	VITA DURA	2017-10-03 18:01:17-04	\N
205305990 	.CADENSIA	2013-01-02 03:49:12-05	\N
205307290 	WILINA	2016-12-29 11:16:13-05	\N
205309000 	LANGE WAPPER	2013-06-04 13:05:30-04	\N
205309890 	TAZ	2014-02-14 17:24:00-05	\N
205311990 	THIBO	2016-11-29 06:57:51-05	\N
205312390 	WINDECK	2014-03-20 05:14:04-04	\N
205313190 	ZITA	2012-08-26 19:14:47-04	\N
205313790 	MICHIEL	2013-07-19 23:05:47-04	\N
205314190 	STAR	2018-11-02 08:12:25-04	\N
205316000 	Z 526 VAYA CON DIOS	2014-11-16 05:57:07-05	\N
205319090 	MAX	2012-11-02 04:51:24-04	\N
205319790 	ARION	2016-01-30 16:53:55-05	\N
205320790 	CORVUS	2017-07-13 22:17:52-04	\N
205322000 	Z576 MARE NOSTRUM	2017-02-16 10:41:28-05	\N
205325390 	SUZY	2014-12-29 08:30:18-05	\N
205326190 	LITORE	2018-10-06 22:14:07-04	\N
205326990 	CUM/DEO	2017-05-24 13:30:40-04	\N
205327590 	PAT-VERO	2018-03-16 17:07:30-04	\N
205327890 	EUROPEO 3	2014-01-09 00:50:48-05	\N
205329990 	KRAKEN	2018-06-01 03:04:29-04	\N
205331090 	HAPPINESS	2017-10-04 23:52:09-04	\N
205332090 	CON-DIOS	2017-08-14 08:00:53-04	\N
205333000 	FLAMINGO	2014-01-03 03:40:36-05	\N
205333490 	LA CORUNA	2016-08-19 03:53:19-04	\N
205333890 	ZINNIA	2017-10-21 20:24:39-04	\N
205334890 	WERE DI	2018-11-29 08:14:50-05	\N
205335190 	ARMAGEDDON	2018-07-31 03:34:57-04	\N
205335490 	TANZANITE	2016-03-29 12:08:06-04	\N
205336000 	Z56 PIETER	2016-10-05 11:34:39-04	\N
205336090 	TUNA	2015-05-29 03:55:50-04	\N
205337190 	LAGO	2017-10-02 09:06:16-04	\N
205337590 	TUG 91	2016-08-23 18:50:08-04	\N
205338490 	GALYPSOS	2016-11-02 23:57:13-04	\N
205338790 	SIMON STEVIN	2014-09-19 11:32:05-04	\N
205338890 	ESPOIR	2012-02-06 16:42:18-05	\N
205339190 	INFINITY III	2016-09-30 20:01:50-04	\N
205339290 	LA MATTANZA	2017-11-14 06:58:06-05	\N
205340000 	MANTA	2013-08-27 14:41:46-04	\N
205340690 	DIALASA	2013-06-28 08:21:39-04	\N
205340890 	AMBITIEUX	2016-05-23 17:14:07-04	\N
205341390 	TORONTO	2015-03-24 17:26:50-04	\N
205341690 	TERVANT 154	2015-01-03 09:34:01-05	\N
205342000 	BRANDARIS	2014-11-01 01:18:41-04	\N
205343390 	SELONIA	2016-03-17 07:24:26-04	\N
205344790 	CHERDY	2017-08-01 16:14:16-04	\N
205345090 	SKYLINE	2018-01-07 23:19:33-05	\N
205345890 	TORNADO	2015-04-18 00:21:57-04	\N
205346000 	Z189 CORNELIS GERRIT	2014-02-10 04:59:10-05	\N
205346030 	GORDITA	2013-04-08 12:08:34-04	\N
205346390 	ROSARIUM	2015-10-11 18:27:54-04	\N
205346790 	PEGASUS	2016-04-23 18:39:48-04	\N
205346890 	ARIZONA	2014-12-29 22:37:03-05	\N
205347300 	FINITOR	2012-06-13 00:03:03-04	\N
205347890 	PAUL DELVAUX	2014-07-16 09:11:55-04	\N
205348000 	UNION 6	2014-01-31 10:45:25-05	\N
205348990 	SOMTRANS IX	2013-08-14 15:24:51-04	\N
205349690 	MENTOR	2015-05-26 18:52:21-04	\N
205350490 	OLIEVINKER3	2016-07-23 06:08:16-04	\N
205351190 	TUG 10	2013-02-15 01:33:23-05	\N
205351390 	POSEIDON	2014-07-29 13:57:33-04	\N
205352690 	BRUTUS	2012-08-03 01:45:42-04	\N
205353090 	GANGES / GANGE	2012-02-19 14:25:40-05	\N
205353590 	VEREMANS	2016-07-06 10:53:08-04	\N
205353690 	DE PAREL II	2013-12-28 13:37:52-05	\N
205354490 	MRB 36 NELE	2016-04-14 15:51:47-04	\N
205354790 	TARO	2013-10-26 00:12:02-04	\N
205354990 	CONDOR	2013-10-02 13:55:29-04	\N
205355290 	FREYJA	2017-06-24 17:59:13-04	\N
205355890 	SIGUENZA	2012-04-27 11:00:59-04	\N
205356490 	CHRISTEL	2017-04-08 20:51:24-04	\N
205356690 	MAC 11	2017-10-31 16:44:50-04	\N
205356810 	S/Y MOVING 2	2018-03-25 14:54:04-04	\N
205358190 	NEPTUNIA 47	2017-12-22 04:33:20-05	\N
205358890 	NEPTUNIA 45	2014-09-05 23:36:35-04	\N
205360090 	TUG 20	2015-06-20 02:11:30-04	\N
205360190 	TUG 21	2014-11-02 13:05:39-05	\N
205360290 	VERRAZANO	2015-06-18 10:47:47-04	\N
205360490 	THEMISII	2016-08-01 00:42:30-04	\N
205362490 	KRI-SIL	2014-04-27 20:05:54-04	\N
205362800 	RUPEL	2013-10-08 14:39:20-04	\N
205363390 	JERICHO	2018-04-21 06:05:27-04	\N
205363410 	FOVEA	2013-09-07 18:39:48-04	\N
205363590 	FLUVIUS	2012-04-08 01:31:00-04	\N
205363990 	MARCARI	2014-02-05 20:06:52-05	\N
205365700 	PRESTO	2014-04-19 01:06:32-04	\N
205366000 	TEMSE	2014-10-20 03:03:46-04	\N
205367290 	MARANTA	2013-12-09 18:05:44-05	\N
205367890 	DE NEUS	2012-04-03 07:45:04-04	\N
205367990 	PAGADDER	2017-01-13 23:43:33-05	\N
205368590 	ARGUS	2016-05-13 13:39:14-04	\N
205369090 	SOMTRANS X	2013-11-05 19:28:42-05	\N
205369790 	CORJANO	2018-07-27 04:44:14-04	\N
205369890 	NAVIRA	2017-04-28 03:49:38-04	\N
205370290 	ASDETA	2012-09-24 17:22:19-04	\N
205370590 	KAAPSTAD	2012-10-14 16:10:26-04	\N
205371090 	MIRANDA	2014-10-04 16:54:10-04	\N
205371190 	JO	2017-11-03 14:16:42-04	\N
205371290 	LA PAIX	2015-02-25 17:49:46-05	\N
205371690 	HEEN EN WEER 3	2018-04-30 17:27:54-04	\N
205372390 	DYFRED	2012-10-12 00:37:23-04	\N
205372490 	STANLEYSTAD	2012-01-14 06:12:18-05	\N
205372590 	LOVE STORY	2012-11-11 00:22:55-05	\N
205372690 	ALMERIA	2017-09-28 05:17:52-04	\N
205372790 	KENYRO	2012-07-13 23:03:59-04	\N
205372990 	VERSUS	2015-03-03 21:08:15-05	\N
205373190 	DONGESTROOM	2013-05-22 10:37:02-04	\N
205373590 	JILL	2013-09-13 12:47:32-04	\N
205374090 	ISARNO	2018-10-26 22:28:03-04	\N
205377190 	SONIA	2018-03-03 09:54:43-05	\N
205377590 	BARBUDA	2013-09-14 22:31:18-04	\N
205377790 	ASSI	2014-10-28 15:29:18-04	\N
205377890 	TAMARIS	2016-05-22 16:05:51-04	\N
205377990 	DESEO	2012-07-22 06:32:21-04	\N
205378390 	-LOUIS	2018-01-09 03:11:45-05	\N
205378590 	SYNTHESE 12	2017-01-31 03:11:29-05	\N
205378890 	STRELITZIA	2017-04-29 19:26:34-04	\N
205381790 	OLI-CHRIS	2012-10-14 21:28:33-04	\N
205382490 	AVARO	2012-08-27 02:58:45-04	\N
205382590 	CYMBA	2018-04-09 03:42:01-04	\N
205382790 	SHAMAL	2012-09-21 20:17:23-04	\N
205383200 	SEA KING	2014-03-02 04:22:00-05	\N
205383490 	QUEEROY	2017-01-20 22:13:44-05	\N
205383890 	GHOST-SNIPER	2014-03-28 00:45:04-04	\N
205384790 	AQUAPOLIS	2013-11-27 07:04:27-05	\N
205384890 	BEN-GUS	2016-03-17 16:52:11-04	\N
205384990 	STEPHANIE	2015-01-01 11:07:28-05	\N
205385590 	SMEAGOL	2015-12-04 01:55:47-05	\N
205386190 	LOVE BOAT	2013-04-05 06:33:05-04	\N
205386990 	ALLEGRO	2018-08-12 08:30:50-04	\N
205387390 	MISSOURI	2017-11-09 23:59:50-05	\N
205387490 	SPN 14	2018-01-30 04:55:19-05	\N
205387790 	DB 17	2012-09-08 20:05:16-04	\N
205388290 	AD FUNDUM	2013-10-21 11:11:24-04	\N
205388490 	TIGRIS	2013-03-16 01:18:18-04	\N
205390090 	DELTA	2014-06-21 18:35:57-04	\N
205391090 	JAGUAR	2016-12-05 20:58:16-05	\N
205391290 	PECUNIA	2015-12-25 01:05:24-05	\N
205391390 	OMERTA	2018-09-27 15:47:44-04	\N
205391590 	MUSTANG	2014-08-23 21:03:46-04	\N
205391690 	SPLENDOR	2016-05-02 03:13:13-04	\N
205391990 	ALEXIA	2016-06-06 13:36:10-04	\N
205392290 	AMBERES	2014-01-05 13:16:41-05	\N
205393000 	PALLIETER	2016-02-15 10:45:20-05	\N
205393090 	POR-DIOS	2016-09-18 23:42:26-04	\N
205393190 	AMELIE 1	2014-04-17 04:20:16-04	\N
205393290 	GLADIATOR	2018-11-18 15:33:11-05	\N
205393490 	HET RODE VIERKANT	2017-11-30 14:08:48-05	\N
205393590 	DE NIEUWE VISIE	2012-07-30 19:48:02-04	\N
205393690 	ROGER RAVEEL	2016-09-07 12:11:14-04	\N
205393790 	MAURICE	2016-03-14 18:22:13-04	\N
205393990 	DIABLO	2013-06-01 14:59:28-04	\N
205394390 	TRIPOLI	2013-09-25 07:57:54-04	\N
205394490 	VILARDO	2016-04-18 22:50:46-04	\N
205394690 	AMRITAM 3	2013-06-25 14:40:42-04	\N
205394790 	ODESSA	2017-04-09 10:36:05-04	\N
205395090 	TIESTO	2015-03-24 20:26:43-04	\N
205395890 	ISELLA	2015-11-24 10:08:48-05	\N
205396000 	POLYBOTES	2016-11-09 17:33:04-05	\N
205399290 	ASPASIA	2016-06-18 01:16:38-04	\N
205400990 	LARGO	2017-06-30 02:55:04-04	\N
205401290 	SANTORINI	2014-05-29 13:09:15-04	\N
205402090 	ANTIGOON	2018-03-21 21:43:31-04	\N
205404390 	AQUILON	2015-05-01 23:37:49-04	\N
205404790 	SCHELDE	2013-07-05 00:32:06-04	\N
205406890 	NIRVANA	2018-07-20 17:30:37-04	\N
205407490 	NEW YORK CITY	2013-10-18 02:40:48-04	\N
205408090 	NAUTILUS	2017-12-24 04:17:12-05	\N
205410590 	ISABELLE	2016-12-20 18:21:27-05	\N
205411090 	JAN VAN EYCK	2013-01-22 17:53:33-05	\N
205411690 	ARNICA	2013-06-11 00:08:49-04	\N
205412690 	VENEZIA	2014-02-05 06:42:04-05	\N
205413190 	TURQUOISE	2014-10-11 23:21:13-04	\N
205413290 	JUNA	2013-08-16 02:11:26-04	\N
205413390 	PORTOBELLO	2015-10-11 20:21:38-04	\N
205414000 	UNION CORAL	2014-01-30 09:51:46-05	\N
205414190 	PRESTIGE	2017-02-12 02:37:13-05	\N
205414390 	WESTHOEK	2018-12-13 14:28:33-05	\N
205414790 	COLIBRI	2014-02-22 18:10:18-05	\N
205415000 	UNION PEARL	2018-09-23 04:32:38-04	\N
205415190 	THEODELA	2018-09-10 01:56:03-04	\N
205416000 	UNION RUBY	2014-11-05 09:41:26-05	\N
205417000 	UNION EMERALD	2013-04-17 15:51:01-04	\N
205419190 	KAYAK 2	2015-04-14 21:05:51-04	\N
205419690 	CARRERA	2018-01-11 12:53:09-05	\N
205420690 	THEODELA C	2016-10-14 14:25:20-04	\N
205421990 	AMRITAM 2	2017-08-16 07:49:08-04	\N
205422290 	CUPIDO	2012-04-17 06:49:24-04	\N
205423290 	RENE 19	2018-12-01 18:27:46-05	\N
205425290 	OLAKO	2013-02-20 14:18:12-05	\N
205425690 	AVARUS	2018-08-27 22:42:11-04	\N
205426590 	ALLONSO	2017-01-27 23:18:43-05	\N
205426890 	LAUSANNE	2014-06-13 14:35:57-04	\N
205427290 	KVB ACHERON	2016-01-20 19:07:34-05	\N
205428090 	EDRA	2017-09-24 18:44:13-04	\N
205429800 	PARTNER SHIP	2018-11-08 08:33:14-05	\N
205429890 	FESTINA LENTE	2016-07-26 04:36:45-04	\N
205430090 	MAIANDROS 2	2014-06-07 18:01:28-04	\N
205430390 	MAC 2	2013-01-01 12:16:05-05	\N
205430590 	SHERPA	2012-02-01 07:58:46-05	\N
205430790 	PAGANINI	2012-01-14 10:39:13-05	\N
205433090 	TITAN	2012-11-03 02:10:01-04	\N
205433290 	CARACAS	2016-08-27 01:04:18-04	\N
205434090 	ARAGON	2013-10-05 23:25:15-04	\N
205434190 	RU-SAN	2018-08-23 01:47:06-04	\N
205434590 	INTERNOS	2014-01-07 10:45:34-05	\N
205435190 	POOLZEE	2012-11-30 18:16:03-05	\N
205435990 	VERANO	2012-01-30 23:01:25-05	\N
205436190 	PORRENA	2013-01-04 09:04:56-05	\N
205436290 	YANKEE	2013-08-14 20:16:53-04	\N
205436590 	KENAVO	2015-01-08 18:39:36-05	\N
205436690 	KARIN	2017-11-15 17:04:49-05	\N
205437200 	SKUTSJE	2018-04-30 10:35:08-04	\N
205437890 	CHE-NO	2014-10-25 07:49:56-04	\N
205437990 	SAKETA	2013-11-07 08:49:34-05	\N
205438090 	DE KAPPER	2019-02-25 06:10:02-05	\N
205439000 	MARCEL	2018-10-18 10:05:59-04	\N
205439290 	PALOMINO	2015-02-13 02:05:58-05	\N
205439790 	MILLA	2015-11-24 05:53:28-05	\N
205440090 	FLANDRIA 9	2013-03-13 09:22:21-04	\N
205441490 	PRESAGIO	2013-05-30 22:30:02-04	\N
205441690 	MOREA	2018-06-03 16:35:18-04	\N
205442290 	TARSIS	2018-06-18 10:59:54-04	\N
205444190 	ERGON	2015-10-11 00:44:58-04	\N
205444690 	DN59	2012-04-26 10:17:17-04	\N
205446590 	MTS VIVALDI	2013-09-02 17:55:38-04	\N
205446890 	SHADDIX	2016-09-17 17:46:30-04	\N
205447190 	MAC 8	2013-06-22 12:28:55-04	\N
205447290 	EVANNA	2014-07-16 17:35:01-04	\N
205448690 	ECUADOR	2018-03-08 13:27:17-05	\N
205448890 	DEUGNIET	2013-08-09 10:29:52-04	\N
205451000 	CLEMENTINE	2012-05-23 16:53:47-04	\N
205451190 	JANPLEZIER 4	2017-09-13 05:02:44-04	\N
205451790 	AVANIUM	2014-06-21 06:03:29-04	\N
205452000 	NELE	2014-09-03 03:10:58-04	\N
205452690 	MTS RAVEL	2013-04-25 11:59:36-04	\N
205452890 	JADE	2015-08-20 21:37:46-04	\N
205453000 	MELUSINE	2017-01-02 20:43:53-05	\N
205453690 	BIRJO 2	2016-08-13 03:44:48-04	\N
205454090 	GOUDVIS	2016-04-22 11:31:18-04	\N
205454490 	QUENYA	2017-01-22 02:11:11-05	\N
205455290 	JAN BORLUUT	2018-11-30 13:59:57-05	\N
205455490 	WILLEM 1	2013-12-01 13:03:41-05	\N
205457290 	VLAANDEREN	2012-04-07 16:11:12-04	\N
205457590 	THALYS	2018-08-16 06:18:02-04	\N
205457890 	NOUMEA	2016-11-11 04:10:05-05	\N
205459490 	DURABO	2018-12-27 18:07:23-05	\N
205460590 	NEOPHYTE	2016-06-04 00:40:54-04	\N
205460790 	AVE MARIA	2018-02-20 14:07:20-05	\N
205461000 	VALENTINE	2016-10-05 11:33:27-04	\N
205461490 	REBEL	2018-06-15 02:39:35-04	\N
205462900 	WHITE WHALE	2013-08-22 11:40:42-04	\N
205463190 	TESKELLY	2014-09-10 14:48:23-04	\N
205465690 	OLIEVINKER IV	2013-04-29 19:29:07-04	\N
205466490 	VERDI	2017-08-02 07:08:25-04	\N
205466590 	FOLLOW ME	2017-03-21 19:31:03-04	\N
205466990 	MARTCILINO	2017-10-12 01:26:31-04	\N
205467990 	NUEVA VIDA	2015-08-13 21:17:46-04	\N
205468190 	AVILA	2018-06-01 00:48:15-04	\N
205468490 	OCARINA	2013-12-18 07:21:58-05	\N
205468790 	JOHANNA-H	2018-02-27 18:36:19-05	\N
205468990 	PANAMA	2017-07-27 18:44:46-04	\N
205469190 	TRAFUCO 5	2014-08-13 21:41:55-04	\N
205470790 	KEMP	2017-11-29 02:22:46-05	\N
205471090 	CHRIDA	2014-05-29 09:43:17-04	\N
205471690 	DANIELLA	2013-07-11 17:48:09-04	\N
205474000 	UNION AMBER	2018-08-14 12:26:46-04	\N
205474790 	EDWIN	2012-04-05 08:12:43-04	\N
205475000 	UNION JADE	2017-09-20 20:45:03-04	\N
205476390 	BRYAN	2014-05-21 19:57:17-04	\N
205477000 	FAST SAM	2018-07-26 23:38:01-04	\N
205477290 	GERONIMO	2014-03-14 10:19:18-04	\N
205477390 	LIGA	2018-10-04 10:16:14-04	\N
205477990 	TORTUGA	2015-11-09 13:24:29-05	\N
205479090 	JOBER	2017-12-02 01:22:22-05	\N
205479890 	NEW YORK	2015-03-17 22:15:29-04	\N
205480090 	LEQUINOXE	2014-08-16 20:00:39-04	\N
205481290 	CYRANO	2014-05-31 06:48:47-04	\N
205482000 	FAST SUS	2014-05-02 07:50:56-04	\N
205482190 	NORDICA	2016-03-05 20:57:28-05	\N
205482390 	MAC 6	2015-06-25 03:26:41-04	\N
205483000 	UNION GRIZZLY	2014-03-10 02:07:09-04	\N
205483790 	SANCTA MARIA	2012-08-18 13:53:47-04	\N
205484000 	UNION KODIAK	2018-07-05 13:14:37-04	\N
205484290 	RONNY-O	2018-05-01 05:07:05-04	\N
205484390 	VAMI	2012-07-31 05:24:23-04	\N
205484790 	DEN DUVEL	2015-04-21 13:57:52-04	\N
205484990 	SUNSHINE	2017-06-02 14:24:20-04	\N
205485190 	BARAKA	2017-12-20 18:59:54-05	\N
205485290 	LOUVETEAU	2012-10-29 04:16:56-04	\N
205486090 	DE PAEP V. MEINECOM3	2013-08-04 01:23:54-04	\N
205486890 	IDEFIX	2013-06-21 03:16:38-04	\N
205488090 	GUATEMALA	2019-02-19 03:20:38-05	\N
205488290 	MAC  7	2015-10-23 15:57:29-04	\N
205488390 	NICOLE	2013-01-15 17:58:12-05	\N
205489490 	SERENA	2014-06-10 17:33:14-04	\N
205490090 	DANNY	2019-01-22 03:45:08-05	\N
205490890 	ROSSINI	2013-05-28 06:42:43-04	\N
205490990 	HERMES	2014-09-30 00:07:59-04	\N
205491290 	ELISABETHSTAD	2015-04-23 19:12:37-04	\N
205492390 	WIELINGEN	2018-07-15 15:13:14-04	\N
205493010 	JAG 3	2017-04-02 21:40:17-04	\N
205493390 	OLIMAR	2014-10-13 00:25:16-04	\N
205494510 	AMADEUS	2013-10-07 17:23:56-04	\N
205495690 	ARTEGA	2012-03-17 15:27:16-04	\N
205496490 	SALTO	2013-11-29 16:31:03-05	\N
205499990 	TATIANA	2018-08-31 05:18:14-04	\N
205500890 	ANTA-	2017-12-12 08:21:27-05	\N
205500990 	ZAMBEZI	2014-09-27 21:38:34-04	\N
205501000 	BRABO	2015-05-07 12:11:26-04	\N
205501290 	NOORDZEE	2014-06-19 23:29:16-04	\N
205501790 	TUG 30	2014-12-02 13:43:44-05	\N
205502390 	EUROSTAR	2014-09-26 11:23:16-04	\N
205502790 	OOSTZEE	2013-01-28 17:45:20-05	\N
205502990 	CORAZON	2019-02-01 03:50:22-05	\N
205503190 	CENTURION	2013-12-02 13:49:58-05	\N
205503990 	CORYLOPHIDA	2012-10-16 03:47:00-04	\N
205504090 	DANIELLA	2015-09-07 21:14:51-04	\N
205504190 	TUG 31	2012-08-26 01:32:09-04	\N
205504690 	GODETIA	2015-11-17 23:30:26-05	\N
205505090 	ORIDA	2013-12-16 02:36:56-05	\N
205505190 	AMPHIRA	2014-03-08 17:01:27-05	\N
205505490 	KVB ISABELLE 1 & 2	2013-10-09 21:21:41-04	\N
205505790 	EUROPORTS	2017-04-29 11:14:46-04	\N
205505990 	MONTANA	2014-07-26 05:35:50-04	\N
205506390 	TUG 32	2019-02-15 20:02:22-05	\N
205506790 	FREEDOM	2012-10-18 11:12:31-04	\N
205507090 	JASMIN	2016-05-31 03:11:43-04	\N
205507390 	MAURICE MAETERLINCK	2012-09-19 03:24:53-04	\N
205507690 	AQUARIUS	2015-08-30 17:55:31-04	\N
205508590 	BERINGZEE	2012-12-31 20:19:19-05	\N
205508690 	SIRENA	2017-03-31 12:34:31-04	\N
205509290 	INVENTORY	2016-03-25 13:21:14-04	\N
205509390 	FLORIDA	2017-09-05 14:37:45-04	\N
205509590 	PERSEUS	2012-08-06 21:15:13-04	\N
205512890 	ORGANZA	2019-02-11 12:00:02-05	\N
205513290 	ESCALDA	2012-11-09 14:48:02-05	\N
205513890 	SANTIAGO	2016-08-16 10:41:41-04	\N
205513990 	COMPANY	2018-07-18 16:00:02-04	\N
205514490 	JALDI SE	2019-01-11 06:19:48-05	\N
205514990 	MAC 4 .	2015-12-10 15:44:55-05	\N
205515190 	MOZART	2014-11-09 03:55:38-05	\N
205515590 	ANVERSA	2018-10-18 09:58:30-04	\N
205517390 	DE SCHELE	2013-05-09 08:06:22-04	\N
205517490 	DEN BULT	2012-08-11 19:36:50-04	\N
205517590 	TRAFUCO 8	2014-07-16 14:00:28-04	\N
205517890 	MEERBOOT 4	2012-07-01 01:14:09-04	\N
205517990 	TRAFUCO 6	2015-10-05 00:31:16-04	\N
205519690 	FARO	2014-04-17 12:56:24-04	\N
205519790 	CAMBIO	2012-05-14 03:04:41-04	\N
205520000 	BREYDEL	2013-01-13 15:29:18-05	\N
205520090 	MITCHELL F	2016-07-10 00:18:18-04	\N
205520898 	MELMAR	2017-11-25 19:38:52-05	\N
205521690 	MANTYRANO	2018-01-01 11:44:51-05	\N
205521790 	ANTIBES	2013-08-08 01:16:35-04	\N
205521890 	MANON	2017-06-24 19:30:06-04	\N
205521990 	PANAMERA	2018-03-17 00:54:34-04	\N
205522190 	ABA2	2017-10-12 16:39:18-04	\N
205522890 	PUCCINI	2016-03-27 19:20:54-04	\N
205522990 	THALASSA	2012-03-07 14:20:38-05	\N
205523290 	HYDRUS	2014-03-07 05:42:23-05	\N
205523590 	RONNY2	2018-05-09 11:06:26-04	\N
205523690 	INVICTUS	2013-09-08 05:22:27-04	\N
205523890 	TRAFUCO 7	2012-10-18 06:03:33-04	\N
205524290 	CAYMAN	2014-07-22 03:21:40-04	\N
205524590 	CASCAIS	2015-05-16 10:39:28-04	\N
205525090 	SILANI	2017-02-11 15:23:22-05	\N
205525190 	PIETER BRUEGEL	2018-11-10 21:51:54-05	\N
205525390 	ANTARES	2018-07-21 12:54:45-04	\N
205525490 	NERO	2015-04-01 11:20:13-04	\N
205526130 	MOWA	2015-03-05 15:07:28-05	\N
205526290 	SOMTRANS XXIX	2013-03-29 19:27:21-04	\N
205526390 	STRAUSS	2014-03-28 15:32:35-04	\N
205526490 	MAC GYVER 3	2013-05-26 04:59:05-04	\N
205527090 	ARWEN	2018-11-19 16:43:01-05	\N
205527390 	ARGONAUT	2014-01-23 08:57:04-05	\N
205528890 	CHARIS	2012-06-26 08:41:41-04	\N
205528990 	CHARLES-D	2013-06-27 04:25:53-04	\N
205529393 	NANO	2013-03-31 03:17:53-04	\N
205529590 	INDUS	2018-02-21 07:45:43-05	\N
205529790 	PETERPAN	2013-10-13 05:58:55-04	\N
205529890 	OORDERDAM	2014-04-28 21:07:38-04	\N
205529990 	DAMPEZZO	2016-02-14 13:05:13-05	\N
205530090 	AGAAT 8	2017-01-27 07:56:50-05	\N
205530290 	ELISA-S	2014-12-18 21:59:59-05	\N
205530390 	NOTEC	2017-03-12 07:26:50-04	\N
205530590 	ALYRON	2016-04-28 12:35:00-04	\N
205531190 	FLIPPER	2016-12-01 04:27:46-05	\N
205531290 	LUGANO	2017-06-27 11:24:26-04	\N
205531590 	SAFLO	2017-06-03 11:03:41-04	\N
205531790 	COCCINELLA	2014-07-10 23:33:45-04	\N
205531890 	EENDRACHT 4	2018-01-02 00:43:28-05	\N
205532390 	PASCALE	2017-12-20 08:09:34-05	\N
205532590 	MSC POOLSTER	2014-06-12 16:33:56-04	\N
205532890 	TUIMELAAR	2013-05-21 00:05:09-04	\N
205533090 	LINJAD	2014-09-16 00:00:32-04	\N
205533690 	CASA NOVA	2012-01-24 03:36:33-05	\N
205533990 	CAYENNE	2015-06-19 02:51:57-04	\N
205534190 	DILIS	2017-11-13 07:57:01-05	\N
205534590 	KAMINA	2017-01-23 01:06:43-05	\N
205534890 	JAVAZEE	2017-02-26 06:19:17-05	\N
205535390 	WAPPER	2013-05-10 08:37:30-04	\N
205535490 	PAMIR	2015-04-10 11:53:30-04	\N
205535590 	ANTWERP	2013-03-24 15:16:18-04	\N
205535790 	THALASSINI	2018-06-13 20:14:02-04	\N
205536190 	CERVUS	2017-11-21 22:52:47-05	\N
205536290 	HOUTLAND	2017-01-16 17:38:51-05	\N
205536390 	CLEMA	2018-11-12 09:54:10-05	\N
205536490 	AEOLUS	2018-04-02 04:15:41-04	\N
205536690 	NARWAL	2018-03-03 01:15:17-05	\N
205536790 	QUERIDA	2017-01-24 04:52:19-05	\N
205537290 	MAASMOND	2018-03-18 20:14:42-04	\N
205538000 	ALBATROS	2013-10-25 22:35:18-04	\N
205538390 	WAGNER	2015-01-16 21:30:14-05	\N
205538490 	PURA VIDA	2013-12-11 04:11:53-05	\N
205539090 	ANCOLIA	2014-10-27 05:48:37-04	\N
205539290 	TRAFUCO 9	2019-01-09 15:37:03-05	\N
205539790 	SERENITAS	2017-05-23 02:17:10-04	\N
205539890 	CUPIDON	2016-04-09 09:11:56-04	\N
205540190 	AMARA	2012-01-21 05:24:00-05	\N
205540290 	DUBLIN	2016-11-07 06:42:45-05	\N
205540390 	PROMETHEE/PROMETHEUS	2013-10-30 17:02:15-04	\N
205540790 	CORTINA	2014-11-30 00:07:04-05	\N
205541000 	IVO	2016-06-08 05:06:14-04	\N
205541790 	TRIPOLIS	2015-03-05 17:18:59-05	\N
205541990 	BEN LOVE	2017-12-29 00:30:48-05	\N
205542290 	TARGA	2013-07-19 01:59:25-04	\N
205542590 	MALIA	2012-08-18 16:18:10-04	\N
205542790 	BRABO 65	2014-01-21 00:09:57-05	\N
205542890 	SECA	2013-02-21 01:03:48-05	\N
205542990 	CYRIEL BUYSSE	2018-02-22 00:23:48-05	\N
205543290 	BITUMINA	2018-06-16 04:31:52-04	\N
205543390 	OSIRIS	2018-05-16 05:53:40-04	\N
205543790 	MARBELLA	2013-03-30 22:54:22-04	\N
205543990 	VIRGO	2017-01-04 00:09:29-05	\N
205544090 	ELYSIUM	2012-07-26 03:29:01-04	\N
205544590 	NOSTARGO	2014-03-05 16:34:30-05	\N
205545190 	QILAK	2015-05-31 22:20:54-04	\N
205545590 	MANACOR	2013-07-16 12:29:08-04	\N
205545990 	SOPHIE ISABELL	2016-03-24 19:46:46-04	\N
205546000 	UNION KOALA	2015-12-24 13:31:34-05	\N
205546090 	XANTHOS	2017-06-05 13:17:32-04	\N
205546690 	KROONSTAD	2015-01-26 01:53:33-05	\N
205547190 	BASTIMENTO	2013-12-05 18:44:37-05	\N
205547290 	CONCESSION	2016-10-21 16:00:35-04	\N
205547690 	SPYDER	2017-02-25 13:27:25-05	\N
205548790 	MARTINIQUE	2017-11-28 12:36:46-05	\N
205548890 	BELLEBOOT	2014-08-31 02:02:48-04	\N
205549290 	LNG LONDON	2012-08-22 00:59:12-04	\N
205550190 	SANTA PONSA	2018-07-25 16:24:13-04	\N
205557000 	ARTEVELDE	2016-09-22 05:23:30-04	\N
205559000 	FRATERNITY	2012-08-27 23:26:27-04	\N
205561800 	LIBERTY	2015-06-21 15:03:11-04	\N
205562000 	PROVIDER	2016-01-06 22:40:32-05	\N
205565000 	SMIT TIGER	2013-08-29 22:56:31-04	\N
205571610 	GIN MARE	2015-05-16 01:29:24-04	\N
205574210 	DANISA	2016-10-17 03:11:01-04	\N
205580710 	HINA	2013-11-08 15:39:44-05	\N
205583930 	MIRA-CETI	2017-04-02 19:52:51-04	\N
205591000 	WESTDIEP PILOT	2017-08-24 17:35:37-04	\N
205592000 	WIELINGEN PILOT	2018-03-19 22:13:57-04	\N
205593000 	WESTERSCHELDE PILOT	2018-12-07 10:41:41-05	\N
205593510 	DOLCE FAR NIENTE	2018-04-03 18:14:42-04	\N
205594000 	WANDELAAR PILOT	2017-06-24 09:05:58-04	\N
205594200 	PENNGLAOU	2014-12-30 00:55:16-05	\N
205595000 	ZEETIJGER	2014-12-24 10:55:52-05	\N
205597030 	FRANINE	2015-10-15 18:52:30-04	\N
205604000 	VICTOR HORTA	2014-02-17 00:56:23-05	\N
205605890 	KAYAK I	2014-11-17 23:32:08-05	\N
205606500 	MAI	2013-01-13 21:12:41-05	\N
205611630 	ALLURE	2018-10-15 04:12:14-04	\N
205616000 	HONDIUS	2016-12-22 00:47:17-05	\N
205618000 	SMIT EMOE	2014-03-31 10:54:47-04	\N
205619000 	SMIT KIWI	2013-10-04 06:34:40-04	\N
205625000 	TUG 40	2013-12-19 04:57:43-05	\N
205626000 	TUG 41	2014-08-16 22:30:10-04	\N
205627000 	TUG 42	2013-04-28 12:38:05-04	\N
205628000 	TUG 43	2017-07-15 06:30:22-04	\N
205635000 	LOTUS	2013-09-16 00:45:55-04	\N
205639000 	ZEESCHELDE	2017-10-04 23:36:53-04	\N
205640410 	SAS	2016-05-10 16:04:40-04	\N
205642000 	UNION PRINCESS	2017-09-29 00:38:07-04	\N
205650000 	RAAN	2017-01-03 13:13:35-05	\N
205651000 	HONTE	2012-10-02 10:44:00-04	\N
205652000 	DEURLOO	2018-03-13 16:12:39-04	\N
205654000 	DN97	2018-04-20 07:03:44-04	\N
205655000 	WAASMUNSTER	2012-10-02 07:08:56-04	\N
205656000 	MARLEY	2018-08-25 23:40:51-04	\N
205659830 	LLEVAME	2016-07-22 10:56:21-04	\N
205662610 	DJANGO/MAYOSA	2018-07-03 14:18:56-04	\N
205678000 	AQUALINK	2016-05-06 11:16:08-04	\N
205682000 	OMALIUS	2017-12-22 11:45:54-05	\N
205685000 	KNOKKE	2018-05-20 12:32:08-04	\N
205686978 	GIANT 7	2012-06-24 00:57:53-04	\N
205687000 	GIANT 7	2012-07-09 07:44:06-04	\N
205688000 	MAREMKA	2014-07-09 00:01:59-04	\N
205691000 	KONTICH	2017-06-10 16:14:12-04	\N
205692030 	NOCTILUCA	2014-02-21 11:29:04-05	\N
205692310 	SOFIA	2013-12-06 13:00:31-05	\N
205695000 	UNION LYNX	2017-09-30 15:06:09-04	\N
205703000 	ENGIE ZEEBRUGGE	2012-04-23 04:09:26-04	\N
205707730 	MOJITO3	2016-03-30 03:09:47-04	\N
205708000 	SCHELDT RIVER	2014-01-29 05:19:07-05	\N
205710410 	FLORENCE	2012-11-07 16:04:56-05	\N
205713000 	KALLO	2016-11-02 19:24:08-04	\N
205714000 	ZEELEEUW	2018-03-29 12:20:44-04	\N
205715000 	O83 JOKE	2015-07-29 20:11:14-04	\N
205716000 	AQUAWAY	2014-12-23 16:18:03-05	\N
205716230 	DEO JUVANTE	2019-01-11 17:51:23-05	\N
205722410 	JANA	2017-12-04 17:40:46-05	\N
205723000 	PAGADDER	2018-12-09 02:50:43-05	\N
205725230 	STEILVOL	2016-07-18 13:00:54-04	\N
205729930 	FUN-TASTIC	2013-10-08 02:15:48-04	\N
205730000 	SOUTHAMPTON	2015-07-22 21:35:20-04	\N
205736730 	VAGUALAM	2017-10-20 13:03:58-04	\N
205737000 	SIRIUS	2014-04-01 06:27:03-04	\N
205738000 	HYDROVILLE	2016-07-18 23:15:34-04	\N
205739000 	HENRY DE VOS	2014-05-16 05:00:17-04	\N
205740000 	Z-188 HILLIE	2018-03-28 12:00:13-04	\N
205743000 	KOKSIJDE	2016-07-02 00:24:53-04	\N
205746000 	MINERAL DESTELBERGEN	2018-01-01 05:40:32-05	\N
205752000 	Z115 ANTJE DE VRIES	2012-03-08 15:01:19-05	\N
205759000 	SCHONEVELD	2012-08-10 10:51:47-04	\N
205764000 	ARAL	2014-03-20 15:11:27-04	\N
205766000 	SMIT SEINE	2015-01-12 21:00:36-05	\N
205770710 	CHANI	2014-06-03 15:18:14-04	\N
205779710 	DA CAPO	2014-06-14 16:25:18-04	\N
205792510 	LEOLOU	2012-07-21 15:07:33-04	\N
205799500 	FRELAUR	2016-12-15 11:15:11-05	\N
205815630 	STAIRWAY TO HEAVEN	2018-12-16 08:54:22-05	\N
205858910 	STRESSLESS	2016-06-27 14:28:43-04	\N
205887810 	ALBA	2017-11-20 20:36:21-05	\N
205901610 	LA GAVIOTA	2014-02-14 01:00:12-05	\N
205904810 	VONDELING	2017-10-13 18:56:15-04	\N
205938410 	NIOBE	2015-04-14 12:41:36-04	\N
205956710 	SANDEE	2015-09-24 16:03:23-04	\N
205975100 	FAIRLADY	2015-02-21 19:02:56-05	\N
205992400 	ANNICO XAVILYS	2018-03-10 04:19:27-05	\N
207072229 	ELEGANT LADY	2018-08-31 13:48:05-04	\N
207072252 	SVAD 2	2012-10-19 09:55:54-04	\N
207072268 	SV.AP.TOMA+INTERCOM1	2017-09-15 03:23:31-04	\N
207072329 	ARIANA	2016-01-24 13:42:01-05	\N
207072367 	SIMONE	2013-03-13 21:04:31-04	\N
207072379 	SOLIST	2018-01-09 03:01:49-05	\N
207261220 	SOFIA	2016-02-19 19:07:00-05	\N
207261223 	WITOSHA	2018-04-19 01:45:26-04	\N
207261314 	ROUSSE PRESTIGE	2018-02-11 04:51:21-05	\N
207261426 	ADORA	2014-08-12 01:01:43-04	\N
207261816 	RUBISHIPS VII	2016-03-12 00:56:40-05	\N
207261818 	ST.NICHOLAS+3SL	2013-04-15 02:45:26-04	\N
209276000 	WES CARINA	2013-04-19 09:30:27-04	\N
209284000 	TJALFE R	2017-12-04 09:32:47-05	\N
209293000 	ROSALIND FRANKLIN	2012-03-09 18:22:55-05	\N
209294000 	TWO MILLION WAYS	2018-09-15 22:39:45-04	\N
209296000 	BEETHOVEN	2012-10-23 15:00:11-04	\N
209297000 	FRI SKIEN	2016-01-18 06:59:59-05	\N
209304000 	WILSON LIVERPOOL	2018-04-19 02:17:39-04	\N
209306000 	GUANG RONG	2016-05-13 13:26:05-04	\N
209313000 	RIX LAKE	2012-01-06 12:16:41-05	\N
209314000 	JUTLAND	2016-02-18 06:34:55-05	\N
209320000 	SEA POLLOCK	2016-05-30 13:20:49-04	\N
209324000 	CONDOR VALPARAISO	2016-07-17 13:24:55-04	\N
209325000 	RIX RIVER	2018-02-08 06:42:37-05	\N
209336000 	RIX ALLIANCE	2012-09-18 15:19:21-04	\N
209339000 	CONTAINERSHIPS NORD	2012-02-08 15:57:24-05	\N
209341000 	BERNSTEIN	2016-01-13 05:25:42-05	\N
209350000 	IDUNA	2013-05-31 14:24:54-04	\N
209357000 	GERE R	2015-07-29 17:01:35-04	\N
209358000 	FREKE R	2014-10-03 10:46:07-04	\N
209359000 	GUNGNER R	2014-05-21 05:05:14-04	\N
209361000 	SAMSKIP INNOVATOR	2018-04-16 21:51:19-04	\N
209380000 	SAMSKIP ENDEAVOUR	2017-04-15 04:24:07-04	\N
209384000 	MOUNT TROODOS	2017-02-15 07:33:33-05	\N
209387000 	BORIS SOKOLOV	2018-12-26 04:44:05-05	\N
209391000 	BARTOK	2014-09-30 08:40:32-04	\N
209395000 	WORLDCHAMPION JET	2018-01-27 15:44:14-05	\N
209415000 	GIOCONDA	2019-01-29 07:51:11-05	\N
209432000 	WILSON SKY	2012-01-18 02:20:49-05	\N
209436000 	HARRISON	2013-12-12 17:50:38-05	\N
209440000 	CHAMPION JET 1	2013-12-20 07:36:45-05	\N
209445000 	KEY STAR	2013-09-14 14:34:02-04	\N
209449000 	ROCKPIPER	2016-09-23 14:40:39-04	\N
209455000 	KL BRISFJORD	2017-10-11 16:36:37-04	\N
209459000 	CONTSHIP ERA	2013-12-18 11:35:38-05	\N
209462000 	HYPATIA DEALEJANDRIA	2013-11-13 12:43:39-05	\N
209465000 	MARIANTHI	2015-06-14 09:26:19-04	\N
209467000 	X-PRESS AGILITY	2018-04-18 02:50:06-04	\N
209468000 	RIX RUBY	2014-06-22 09:57:57-04	\N
209473000 	SAPFIR	2014-06-20 08:58:32-04	\N
209479000 	SPIRIT OF BRITAIN	2012-08-24 13:08:04-04	\N
209486000 	BLUE OCEAN	2015-08-12 02:10:00-04	\N
209487000 	FRI LANGESUND	2015-02-23 19:15:18-05	\N
209488000 	FRI BREVIK	2017-03-01 14:17:30-05	\N
209490000 	SPIRIT OF FRANCE	2015-01-19 03:53:37-05	\N
209501000 	CONTSHIP GIN	2013-08-29 11:57:06-04	\N
209505000 	PRIDE OF CANTERBURY	2015-07-04 18:43:52-04	\N
209506000 	ATLANTIC COMET	2016-09-25 10:30:36-04	\N
209508000 	YURIY KUCHIEV	2016-12-13 13:41:22-05	\N
209510000 	AURELIA	2018-09-29 18:07:15-04	\N
209532000 	MERCURIUS	2016-03-22 00:52:33-04	\N
209533000 	SIRIUS	2013-08-30 12:00:30-04	\N
209540000 	WARNOW TROUT	2017-11-27 00:14:21-05	\N
209588000 	THURKUS	2016-01-07 07:02:28-05	\N
209611000 	MCP FAMAGUSTA	2014-02-09 04:20:43-05	\N
209671000 	CEMLUNA	2017-05-09 12:19:41-04	\N
209672000 	ARAGONITH	2013-05-10 18:19:58-04	\N
209693000 	ISHWARI	2013-01-23 14:15:23-05	\N
209696000 	RANGER	2012-01-28 18:03:46-05	\N
209715000 	JORK	2018-09-05 02:45:51-04	\N
209718000 	RABA	2015-08-09 17:22:27-04	\N
209719000 	BG IRELAND	2018-08-06 06:16:49-04	\N
209734000 	PATRIA	2018-10-22 04:40:49-04	\N
209762000 	MAERSK FLENSBURG	2012-05-12 06:46:37-04	\N
209770000 	CEMGULF	2018-03-28 21:53:13-04	\N
209782000 	PEGASUS	2014-08-07 15:48:40-04	\N
209787000 	FLEUR N	2016-03-02 20:31:44-05	\N
209792000 	STEFAN SIBUM	2016-03-28 06:41:02-04	\N
209815000 	SKIP	2015-11-05 03:47:12-05	\N
209845000 	HEDDA SCHULTE	2014-04-22 08:42:37-04	\N
209851000 	NDURANCE	2013-03-09 17:21:07-05	\N
209852000 	NDEAVOR	2018-05-27 14:28:24-04	\N
209855000 	DUKE II	2016-12-06 22:37:02-05	\N
209876000 	MENTOR	2017-02-07 05:59:27-05	\N
209890000 	INCA	2014-11-09 10:30:50-05	\N
209897000 	REALITY	2016-01-21 06:51:45-05	\N
209922000 	SHRAVAN	2015-04-12 12:30:09-04	\N
209933000 	UBC SAGUNTO	2014-01-23 10:08:51-05	\N
209941000 	VENUS HISTORY	2013-07-05 16:11:35-04	\N
209950000 	FONNLAND	2013-05-17 08:03:23-04	\N
209952000 	ULYSSES	2016-09-22 03:07:09-04	\N
209996000 	GREENWING	2015-06-27 01:35:44-04	\N
210001000 	ALASA	2014-12-15 00:20:53-05	\N
210008000 	JORK RULER	2013-09-06 13:09:55-04	\N
210029000 	ELENI	2013-05-22 11:48:37-04	\N
210032000 	UBC CARTAGENA	2017-08-11 16:32:01-04	\N
210034000 	SEA DREAM IV	2014-08-08 14:14:20-04	\N
210035000 	NORDIC HAMBURG	2018-05-16 12:43:30-04	\N
210040000 	ANL DARWIN TRADER	2014-10-28 19:22:33-04	\N
210050000 	GATEWAY	2016-01-05 19:18:01-05	\N
210053000 	KROKSOE	2012-07-12 12:31:58-04	\N
210072000 	WILSON MERSIN	2016-01-17 00:43:14-05	\N
210073000 	PEDHOULAS TRADER	2016-11-11 02:49:10-05	\N
210075000 	SANTA HELENA 1	2014-01-21 04:13:47-05	\N
210084000 	SEA ENDURANCE	2014-04-06 02:46:57-04	\N
210091000 	VICTORIA MAY	2015-11-20 10:59:07-05	\N
210095000 	GALILEUSZ	2014-04-26 13:17:02-04	\N
210096000 	ENERGEIA	2015-05-10 01:32:54-04	\N
210138000 	QUEEN OF NETHERLANDS	2017-01-26 15:30:50-05	\N
210167000 	ASTROSPRINTER	2015-08-17 09:07:16-04	\N
210169000 	KATHARINA SCHEPERS	2013-12-03 18:48:59-05	\N
210207000 	NORDIC BREMEN	2016-03-10 17:46:13-05	\N
210230000 	PARAMAR	2016-06-19 17:32:22-04	\N
210233000 	MYNIKA	2018-08-10 14:51:20-04	\N
210248000 	ASTRORUNNER	2015-01-15 04:13:13-05	\N
210288000 	HAVEN	2017-04-22 16:38:01-04	\N
210300000 	ALBAYZIN	2015-11-20 16:06:02-05	\N
210312000 	WEC MAJORELLE	2013-05-10 20:59:01-04	\N
210318000 	LEENI	2014-06-04 03:24:11-04	\N
210326000 	ODIN R	2012-11-01 04:53:39-04	\N
210334000 	SEAWAY YUDIN	2018-01-09 11:33:59-05	\N
210363000 	LIA M	2016-07-12 01:10:13-04	\N
210369000 	EDT JANE	2015-04-15 05:36:13-04	\N
210375000 	OLZA	2016-06-22 10:51:37-04	\N
210426000 	THETIS	2015-12-27 03:29:09-05	\N
210434000 	SYLVE	2015-01-25 04:16:27-05	\N
210440000 	ARGONAUT1	2013-08-14 19:23:38-04	\N
210445000 	KAPRIFOL	2016-10-04 14:07:50-04	\N
210459000 	RITA	2012-12-24 18:20:26-05	\N
210474000 	SWE BULK	2015-02-01 21:18:35-05	\N
210481000 	CMA CGM SAMBHAR	2015-12-19 17:08:20-05	\N
210505000 	PENGALIA	2015-04-14 14:55:16-04	\N
210523000 	CAUSEWAY	2018-03-15 08:01:28-04	\N
210581000 	CAPE RACE	2015-12-08 23:42:20-05	\N
210582000 	POLAR DUKE	2017-08-05 20:05:37-04	\N
210594000 	ARIADNE	2017-06-06 06:25:01-04	\N
210605000 	ATLANTIC COAST	2014-05-11 06:02:38-04	\N
210607000 	AMBER 1	2015-10-25 08:10:06-04	\N
210620000 	NORMAND TITUS	2018-08-13 11:22:26-04	\N
210638000 	PADEREWSKI	2012-07-13 17:06:51-04	\N
210688000 	AMAZONITH	2018-08-13 12:25:02-04	\N
210727000 	SEA TIGER	2014-03-11 01:11:17-04	\N
210754000 	ATLANTIC ISLAND	2014-08-17 04:09:05-04	\N
210763000 	CRESTY	2016-09-10 12:55:35-04	\N
210776000 	EDT HERCULES	2016-08-08 05:37:08-04	\N
210853000 	KURLAND	2015-11-01 16:05:09-05	\N
210894000 	JOLANTA	2012-11-26 17:03:50-05	\N
210895000 	ANASA	2013-09-25 15:54:28-04	\N
210903000 	JSP SLIDUR	2015-01-12 16:12:58-05	\N
210916000 	BUFFLEHEAD	2012-09-21 06:52:53-04	\N
210925000 	BALTIC FULMAR	2014-12-05 22:49:26-05	\N
210930000 	OSPREY	2014-09-02 07:16:19-04	\N
210933000 	NICOLEMY	2013-01-05 04:04:23-05	\N
210943000 	MUSKY	2014-08-19 14:10:41-04	\N
210959000 	GUADALUPE	2013-08-17 23:58:17-04	\N
211002010 	ODIN 3	2016-08-17 02:29:58-04	\N
211014528 	EMTE	2018-07-27 03:30:47-04	\N
211032980 	HT8	2017-06-04 21:17:30-04	\N
211034927 	LUNA	2013-05-21 14:09:50-04	\N
211036232 	GABI R	2018-06-08 06:43:34-04	\N
211064779 	KALOCSA	2014-04-20 18:47:47-04	\N
211087743 	BIRK.B	2012-01-17 00:03:03-05	\N
211100470 	RUDOLF DIESEL	2016-10-06 15:40:19-04	\N
211100700 	ATLAS	2017-06-13 23:10:54-04	\N
211101000 	ROYAL FRYSK	2014-12-04 20:18:52-05	\N
211106650 	STURMMOEWE	2014-02-26 03:01:13-05	\N
211108030 	OSKAR	2017-07-19 02:06:38-04	\N
211108920 	GABRIELLA	2016-03-14 11:35:33-04	\N
211110430 	BELUGA II	2016-04-24 09:33:16-04	\N
211111710 	DOUBLETON	2016-12-04 02:26:31-05	\N
211112870 	WS 23	2018-06-18 19:34:58-04	\N
211113010 	LOESCHBOOT WESTPHAL	2013-09-27 12:45:56-04	\N
211113790 	PILOTT.WANGEROOG	2019-02-12 23:06:19-05	\N
211113878 	CHARLIEN	2017-08-29 00:57:04-04	\N
211115000 	WYK2 JOHANNA LEINTJE	2014-08-05 17:01:02-04	\N
211115500 	AMADEUS QUEEN	2018-06-04 04:58:47-04	\N
211116250 	HOL DEEP	2018-09-09 19:31:10-04	\N
211124510 	ZERBERUS	2014-06-09 18:37:56-04	\N
211124650 	KLEINENSIEL	2015-01-19 09:15:04-05	\N
211126880 	ALEX	2017-08-01 08:41:04-04	\N
211127360 	IVORY GOOSE	2016-03-25 12:49:17-04	\N
211130000 	ARKONA	2018-12-29 01:19:10-05	\N
211133480 	GRACE	2013-10-22 14:28:39-04	\N
211134320 	FLB BONN	2018-03-08 07:27:09-05	\N
211135380 	REIKIBENSA	2015-11-19 22:22:00-05	\N
211138120 	ARKONA	2016-10-13 05:39:54-04	\N
211138300 	BUGSIER1	2014-01-22 10:06:10-05	\N
211138490 	ALBERT WEGENER	2019-01-08 09:15:16-05	\N
211141000 	BIANCA RAMBOW	2017-04-25 13:10:22-04	\N
211141520 	MAVI MAR	2018-10-23 11:17:37-04	\N
211141900 	JANINA R	2016-09-22 04:24:14-04	\N
211142640 	DORESTAD	2016-05-20 19:17:09-04	\N
211145360 	JETTE	2015-03-03 05:51:20-05	\N
211145930 	SCHUB  EXPRESS 25	2018-12-17 03:03:46-05	\N
211147180 	HERMES	2014-10-20 10:37:11-04	\N
211147880 	WS31	2014-07-18 02:07:20-04	\N
211149000 	TOM SAWYER	2016-01-11 22:56:18-05	\N
211149610 	FRIKA	2012-09-20 12:01:19-04	\N
211149890 	BORKUM	2018-01-19 15:02:18-05	\N
211151080 	OEVELGOENNE	2013-01-05 19:34:06-05	\N
211154820 	GUARDIAN	2017-10-01 09:26:51-04	\N
211156800 	BUGSIER 30	2013-10-28 02:37:05-04	\N
211157880 	WISSEMARA	2018-09-04 19:29:14-04	\N
211158050 	ORKA.>	2018-08-18 14:28:27-04	\N
211158980 	VISTA STAR	2012-08-06 14:16:38-04	\N
211159000 	HORIZONT	2013-06-04 07:50:19-04	\N
211159340 	EILTANK 44	2015-07-13 16:15:59-04	\N
211159670 	WILLEMINA KATHARINA	2015-10-22 16:08:12-04	\N
211159930 	BELUMI .	2017-12-12 12:56:38-05	\N
211160660 	AROSA  BELLA	2016-01-25 23:16:36-05	\N
211160680 	A ROSA DONNA	2016-07-24 15:31:48-04	\N
211160700 	A ROSA MIA	2012-11-23 00:40:45-05	\N
211160710 	A ROSA RIVA	2016-12-20 05:19:02-05	\N
211162220 	VERDI	2012-12-15 16:45:52-05	\N
211162470 	ROTHENSEE	2018-07-06 19:18:52-04	\N
211162570 	CARISSIMA	2012-09-23 01:52:55-04	\N
211162610 	ADLER PRINCESS	2018-05-31 19:56:56-04	\N
211162960 	SANCARA	2016-03-18 20:00:40-04	\N
211163700 	CASCADE	2012-06-18 00:08:07-04	\N
211164030 	EMMA	2015-02-01 02:18:26-05	\N
211164080 	DS BUSSARD	2015-07-24 13:56:16-04	\N
211166000 	GERDA KATHARINA	2016-12-22 19:31:33-05	\N
211168930 	WS35	2013-10-05 01:45:57-04	\N
211169240 	POSEIDON	2016-08-31 07:27:20-04	\N
211169260 	MERLIN	2018-11-06 09:23:51-05	\N
211169330 	BANDOLINO	2018-03-01 08:00:50-05	\N
211169410 	DONAU	2014-02-25 18:49:39-05	\N
211169420 	CHARLY	2015-02-09 10:04:33-05	\N
211169660 	KREUZBERG	2015-06-23 18:16:26-04	\N
211169680 	LEVANA	2013-07-22 01:04:03-04	\N
211171180 	JAGUAR	2015-10-14 05:52:15-04	\N
211171290 	ERIKA III	2018-12-11 00:23:17-05	\N
211171420 	EUROSHIPPING ONE+SL	2018-04-13 19:26:46-04	\N
211171530 	BRABANT	2019-01-21 05:40:00-05	\N
211171550 	AMADEUS ROYAL	2018-08-15 04:58:08-04	\N
211171560 	AMADEUS SYMPHONY	2017-03-05 09:58:39-05	\N
211172020 	VISURA	2015-08-20 07:25:21-04	\N
211172030 	LESMONA	2012-05-06 01:36:15-04	\N
211172570 	BODROG	2014-08-22 14:13:25-04	\N
211172970 	NOVELA	2014-10-03 08:39:57-04	\N
211173200 	KEVIN	2018-03-14 23:14:17-04	\N
211177410 	ALDEBARAN	2017-01-11 16:08:23-05	\N
211177610 	DETTMER TANK 116	2014-07-26 08:13:01-04	\N
211177630 	DETTMER TANK 47	2015-10-25 18:33:59-04	\N
211177670 	DETTMER TANK 53	2015-05-06 21:51:55-04	\N
211178250 	DETTMER TANK 52	2013-09-08 23:30:19-04	\N
211179370 	NAUTILIA	2015-09-14 23:15:08-04	\N
211179930 	KAISERBERG	2016-07-03 21:18:36-04	\N
211180550 	WS37	2012-01-06 17:04:30-05	\N
211180750 	BEVENRODE	2018-05-14 12:10:38-04	\N
211181220 	REGULUS	2013-06-23 12:15:17-04	\N
211181370 	SGMS UNTERFRANKEN	2012-03-13 09:54:25-04	\N
211181900 	PILOTTENDER BORKUM	2017-09-20 08:01:51-04	\N
211181950 	PILOT KAPITAEN JUERS	2016-04-21 11:02:12-04	\N
211182140 	EUROCA+SL P2	2017-11-23 05:54:54-05	\N
211182170 	ASCHAFF	2012-11-14 13:26:07-05	\N
211182200 	SENATOR	2018-08-31 18:12:48-04	\N
211182220 	MORGENSTERN	2012-09-29 03:38:12-04	\N
211182240 	INN	2018-05-20 08:35:06-04	\N
211182250 	KVB AURA	2014-10-19 07:51:08-04	\N
211182390 	BRUNSWIK	2012-10-25 03:07:27-04	\N
211183170 	RAPHAELA	2012-07-04 23:42:27-04	\N
211183290 	PAUL P	2012-05-30 06:15:04-04	\N
211183680 	WOLFROSE	2019-01-28 06:20:30-05	\N
211184520 	STOER	2012-05-28 09:50:37-04	\N
211184640 	IRIS ABICHT	2012-12-05 21:33:20-05	\N
211184660 	RAINER ABICHT	2013-03-13 03:47:12-04	\N
211185750 	HOL BLANK	2018-07-22 18:16:41-04	\N
211186950 	WEDEL	2016-01-07 18:17:39-05	\N
211187510 	RUESTERBERGEN	2015-12-27 15:34:21-05	\N
211188000 	DEUTSCHLAND	2015-10-13 21:10:03-04	\N
211188500 	CRESCENDO	2015-02-28 11:37:39-05	\N
211188900 	PALOMA	2019-02-21 02:54:45-05	\N
211190000 	SCHLESWIG-HOLSTEIN	2016-03-26 13:54:42-04	\N
211190980 	BAVARIA  83	2012-11-01 16:38:07-04	\N
211190990 	BAVARIA 56	2016-07-01 17:33:52-04	\N
211191090 	URSEL	2018-05-20 10:15:39-04	\N
211191520 	MERCATOR	2014-03-04 15:15:11-05	\N
211192200 	HERZOG  LAUENBURG	2017-11-26 09:34:24-05	\N
211193410 	DANNY	2016-12-02 22:37:04-05	\N
211196300 	HEIDA	2012-10-04 19:14:11-04	\N
211196560 	OBELIX	2013-02-24 09:21:45-05	\N
211197960 	SG1353	2014-12-15 12:42:33-05	\N
211198830 	MONA LISA II	2013-09-28 02:14:13-04	\N
211200690 	WESTFALEN	2012-06-16 20:49:18-04	\N
211202310 	EILTANK 2	2013-12-17 04:23:40-05	\N
211202400 	FREDO	2014-10-13 19:16:09-04	\N
211202570 	BUTT	2017-05-24 15:17:43-04	\N
211202730 	BERLIN	2017-04-19 06:01:30-04	\N
211202770 	KAJA JOSEPHINE	2014-04-01 18:01:32-04	\N
211205180 	BUERGERMEISTERBRAUER	2013-08-02 19:56:13-04	\N
211205810 	ARKONA	2014-08-27 07:36:25-04	\N
211205950 	ADLER VII	2014-02-03 12:26:47-05	\N
211205970 	WEGA	2018-04-06 15:09:42-04	\N
211207340 	JADE	2017-02-20 04:55:03-05	\N
211207640 	WSP 4	2016-09-21 11:46:43-04	\N
211207650 	WSP 5	2018-08-04 18:14:16-04	\N
211207780 	NAVIO	2017-09-25 22:46:16-04	\N
211208390 	FUNNY GIRL	2014-04-22 23:34:11-04	\N
211209320 	HARLINGERLAND	2012-06-23 01:40:53-04	\N
211209510 	MERKUR II	2013-06-13 19:31:32-04	\N
211209890 	STADT NURNBERG	2016-04-17 16:12:13-04	\N
211210150 	SACHSEN	2013-07-01 23:17:08-04	\N
211211220 	BAD RAPPENAU	2015-06-09 11:54:45-04	\N
211211730 	BERLIN	2018-06-12 19:20:28-04	\N
211211970 	SPIEKEROOG	2012-05-17 17:15:55-04	\N
211212410 	GRIEP	2013-10-11 13:59:24-04	\N
211212470 	BUMS	2016-12-29 12:04:37-05	\N
211212490 	BOTTSAND	2014-08-31 19:12:11-04	\N
211212510 	AK 2	2018-08-10 00:12:35-04	\N
211212560 	BORBY	2014-05-26 15:24:47-04	\N
211212700 	BAUMHOLDER	2012-11-13 21:35:17-05	\N
211214250 	LITTORINA	2017-10-25 03:08:11-04	\N
211214270 	GUSTAV MEYER	2017-11-15 21:43:15-05	\N
211214530 	DENISE	2017-06-02 06:05:09-04	\N
211214670 	DETTMER TANK 179	2014-01-11 09:34:19-05	\N
211214960 	OSTFRIESLAND	2017-09-02 08:39:55-04	\N
211214980 	NORDLICHT	2013-04-22 16:28:59-04	\N
211215170 	ROALD AMUNDSEN	2015-01-09 22:23:49-05	\N
211215180 	NOBILE	2013-03-17 02:33:55-04	\N
211215210 	BALTICA	2016-06-21 21:49:56-04	\N
211215280 	NORDLAND IV	2013-02-21 01:41:22-05	\N
211215290 	NORDLAND V	2018-10-06 22:36:53-04	\N
211215340 	ARION	2014-08-29 16:50:56-04	\N
211215500 	WALTHER HERWIG III	2017-08-07 07:59:22-04	\N
211215520 	FRIEDRICH WESSELS	2017-05-07 02:57:34-04	\N
211215550 	FINN	2013-08-28 09:25:56-04	\N
211215560 	RADBOD	2017-05-11 00:00:42-04	\N
211215730 	KIEL	2016-02-01 12:43:26-05	\N
211216490 	BUGSIER 16	2013-09-13 08:36:26-04	\N
211216650 	BD 3	2018-04-11 13:00:47-04	\N
211216660 	FRISIA VII	2015-08-25 22:12:44-04	\N
211217280 	VORMANN JANTZEN	2016-09-01 14:56:39-04	\N
211217290 	LADY VON BUESUM	2013-01-24 13:58:57-05	\N
211217610 	KRAKE	2017-03-09 12:04:40-05	\N
211218770 	SPIEKEROOG3	2014-03-21 09:56:11-04	\N
211218820 	STUBNITZ	2012-01-27 11:52:10-05	\N
211219230 	ELBE 3	2013-02-05 15:53:28-05	\N
211219630 	SELENE PRAHM	2018-06-01 06:56:18-04	\N
211219990 	SCHARHOERN	2012-03-28 19:16:05-04	\N
211221440 	KNECHTSAND	2015-03-31 15:46:58-04	\N
211221950 	NJOERD	2012-02-17 12:18:05-05	\N
211222290 	DENEB	2018-07-29 15:30:26-04	\N
211222350 	NORDICA	2015-09-29 05:01:38-04	\N
211222530 	NEPTUNIA 84	2013-06-05 20:01:31-04	\N
211222680 	BUELK	2018-09-17 11:56:49-04	\N
211222700 	KITZEBERG	2018-10-30 11:35:04-04	\N
211222710 	HOLTENAU	2018-04-24 00:42:06-04	\N
211222720 	FALCKENSTEIN	2018-10-14 18:46:42-04	\N
211222750 	PILOT MECKELBORG	2012-09-25 19:05:16-04	\N
211222790 	PILOT MUTTLAND	2013-04-16 11:51:33-04	\N
211222800 	PILOT OELLERMANN	2019-02-19 17:47:40-05	\N
211222810 	PILOT_KLAASHAHN	2012-04-05 10:01:55-04	\N
211222890 	ENAK	2013-08-01 10:16:18-04	\N
211223120 	HEIKENDORF	2012-09-12 06:26:10-04	\N
211223190 	HEGEMANN 1	2015-09-01 10:05:57-04	\N
211223540 	IRIS-JOERG	2012-05-25 17:59:21-04	\N
211223620 	VICTOR	2018-12-30 07:16:38-05	\N
211223780 	FAIRPLAY XII	2019-01-18 05:51:13-05	\N
211223950 	FLUNDER	2018-12-28 20:57:33-05	\N
211224140 	NORDSEE	2016-02-19 06:43:06-05	\N
211224270 	PILOT PAGENSAND	2017-02-20 07:10:44-05	\N
211224310 	EMS	2015-02-26 23:05:25-05	\N
211224430 	PILOT BERGEN	2016-04-14 17:43:07-04	\N
211224560 	DARSS	2012-03-29 18:51:03-04	\N
211224710 	RALLE	2013-05-05 07:57:32-04	\N
211225210 	ROCHEN	2013-09-30 03:17:39-04	\N
211225410 	BJOERN M	2017-05-14 15:10:34-04	\N
211225910 	GRANIT	2013-04-07 04:16:45-04	\N
211225920 	FRANZIUSPLATE	2018-07-04 13:44:33-04	\N
211225940 	TIDE	2015-05-05 03:08:42-04	\N
211226120 	BV2 VEGESACK	2018-06-26 14:46:21-04	\N
211226140 	LVP 1	2016-12-15 23:11:46-05	\N
211226330 	T 1107	2012-04-25 10:32:57-04	\N
211226440 	JADE TUG	2018-09-22 23:38:12-04	\N
211226450 	TRANSPORTER 2	2016-07-02 10:02:38-04	\N
211226550 	ELBETANK	2013-07-31 03:09:01-04	\N
211226840 	JENS ALBRECHT	2012-11-10 22:02:25-05	\N
211226910 	JULE	2012-05-11 05:17:52-04	\N
211227410 	SCHAARHOERN	2012-06-25 04:40:58-04	\N
211228200 	SIRIUS	2015-11-06 06:23:58-05	\N
211228220 	CORA	2015-04-24 16:48:10-04	\N
211229200 	BERGHAUS	2012-01-23 20:29:50-05	\N
211230440 	HILLERDINE WESSELS	2016-01-14 10:38:27-05	\N
211230650 	JULIUSPLATE	2012-07-24 23:37:14-04	\N
211231260 	KEHRWIEDER	2013-05-18 18:01:56-04	\N
211231300 	SONJA	2014-01-04 21:19:40-05	\N
211231490 	ANKE	2012-02-28 08:36:15-05	\N
211231520 	KIEL	2019-01-09 04:57:50-05	\N
211232640 	WEGA 2	2012-02-09 20:51:22-05	\N
211232850 	ORTEGAL DOS	2012-12-27 05:20:54-05	\N
211232950 	SEEKRABBE	2018-12-11 06:13:28-05	\N
211233270 	AKKE	2017-02-12 11:39:10-05	\N
211233510 	BRGM. WEICHMANN	2013-03-10 08:20:16-04	\N
211233660 	WESERLOTSE	2016-02-17 08:00:08-05	\N
211233760 	ERIS	2018-08-27 14:30:01-04	\N
211233870 	FORESTER	2016-08-16 21:31:03-04	\N
211234480 	DORNBUSCH	2016-08-23 06:44:46-04	\N
211235180 	HERMANN RUDOLF MEYER	2017-01-22 18:29:47-05	\N
211235220 	THEO FISCHER	2014-04-29 18:12:37-04	\N
211235240 	BERNHARD GRUBEN	2017-09-03 00:37:30-04	\N
211235880 	WEGA	2013-05-01 10:30:27-04	\N
211236290 	SCHALL	2019-01-16 16:51:07-05	\N
211237960 	KAY	2015-09-12 12:52:39-04	\N
211238110 	STEK UT	2013-04-18 22:24:13-04	\N
211238930 	FV HELEN MARY	2013-05-27 05:29:36-04	\N
211239400 	GEO NAVIGATOR	2017-10-15 12:15:34-04	\N
211239490 	LIFT 100-TK9	2014-12-12 05:10:09-05	\N
211239550 	MERKUR	2017-06-16 04:01:29-04	\N
211240870 	MS STADT KIEL	2015-07-01 11:12:02-04	\N
211241240 	SC35 JACOB-SENIOR	2017-02-15 06:26:52-05	\N
211242850 	OBERBAURAT SCHMIDT	2016-10-27 19:05:01-04	\N
211242870 	LOESCHBOOT REPSOLD	2017-12-01 00:06:48-05	\N
211242880 	BRANDDIREKT KRUEGER	2015-07-18 15:27:30-04	\N
211243700 	KVB URSULA KLAUS	2017-08-01 13:53:34-04	\N
211243920 	MULLIGAN	2014-06-17 04:48:22-04	\N
211244230 	EVERT PRAHM	2015-02-24 05:16:19-05	\N
211245200 	MECKLENBURG VORPOMME	2014-05-15 23:34:20-04	\N
211245550 	SR 2624	2015-10-07 23:44:24-04	\N
211246320 	DORSCH	2012-10-07 22:20:41-04	\N
211247120 	BUGSIER 18	2015-07-09 07:07:25-04	\N
211247340 	HH 204	2016-09-26 15:06:49-04	\N
211248050 	TUCANA	2016-03-29 14:22:11-04	\N
211250470 	BARENTS-SEE	2016-06-23 04:15:34-04	\N
211252400 	BLINKFUER	2018-04-23 16:37:58-04	\N
211260260 	BUGSIER 19	2015-10-10 10:21:37-04	\N
211262590 	TRAVETANK	2014-11-22 04:16:43-05	\N
211263850 	ALTENWERDER	2017-08-26 09:32:56-04	\N
211264050 	SY-TRICK 17	2018-07-19 18:20:42-04	\N
211264190 	BUGSIER 20	2016-09-25 20:58:56-04	\N
211264530 	BUSSARD	2014-02-20 04:36:45-05	\N
211264900 	POLARFUCHS	2012-07-04 20:51:49-04	\N
211265240 	STADERSAND	2016-03-11 19:01:32-05	\N
211265530 	RAGNA	2015-07-07 05:08:54-04	\N
211266430 	HANS	2013-07-26 20:17:27-04	\N
211266470 	AXEL	2012-10-02 17:13:22-04	\N
211267780 	SEEWOLF	2018-03-27 23:41:23-04	\N
211268070 	SCHUB EXPRESS 10	2016-12-23 07:42:59-05	\N
211269460 	VITA BELLA	2017-03-21 15:10:19-04	\N
211269580 	LUDWIG PRANDTL	2016-02-04 21:58:44-05	\N
211270480 	JURIE VAN DEN BERG	2018-03-24 16:31:15-04	\N
211272310 	FRISIA IX	2014-04-06 16:33:34-04	\N
211273930 	ROSSINI	2016-05-02 19:52:33-04	\N
211274030 	FRIEDRICH RUECKERT	2015-02-25 19:41:32-05	\N
211274960 	SEHESTEDT	2012-08-16 15:11:13-04	\N
211278240 	STELLA	2017-02-28 19:07:05-05	\N
211280810 	DANUBEGAS	2016-08-28 10:58:43-04	\N
211280840 	ROCK-N-ROLL	2013-02-17 12:27:44-05	\N
211281010 	LOTSE 1	2017-11-20 01:26:28-05	\N
211282120 	DELPHIN	2015-05-19 15:14:31-04	\N
211282710 	VB WILHELMSHAVEN	2017-03-04 10:12:49-05	\N
211282860 	KOMET	2015-03-17 21:00:45-04	\N
211283410 	VB RECHTENFLETH	2013-05-25 18:36:17-04	\N
211283830 	SPIEKEROOG1	2014-08-08 14:04:55-04	\N
211284350 	CELLUS	2012-10-24 19:12:57-04	\N
211284790 	BODO INSTALLER	2012-08-20 13:28:15-04	\N
211286480 	PAAPSAND	2016-06-22 02:13:41-04	\N
211286500 	HELGOLAND	2012-09-13 00:38:07-04	\N
211288300 	ROBBE	2017-10-11 02:51:16-04	\N
211288480 	FAIRPLAY VI	2018-11-05 11:03:55-05	\N
211290720 	LUCHS	2012-09-08 11:28:40-04	\N
211290730 	STIER	2013-10-16 13:25:23-04	\N
211290750 	BAER	2018-04-02 15:00:12-04	\N
211290770 	FLORIAN	2015-04-28 19:44:32-04	\N
211292150 	ROSENORT	2017-01-11 23:03:56-05	\N
211293510 	BLACKY	2013-06-12 16:28:09-04	\N
211294410 	FRIEDERIKE	2012-11-07 00:54:54-05	\N
211298060 	ESEVE 6	2013-10-16 18:49:35-04	\N
211298240 	VILM	2014-03-07 21:52:55-05	\N
211298640 	J.VON COELLN.NC 308.	2014-10-25 03:58:02-04	\N
211301380 	PILOTTENDER DOESE	2017-11-22 23:42:02-05	\N
211305290 	DAGMAR	2017-03-08 19:07:24-05	\N
211307340 	JASPER	2015-06-28 09:46:24-04	\N
211307920 	BONITO	2014-02-12 23:34:44-05	\N
211311411 	BRAZOS PILOTS HQ	2015-11-25 07:08:58-05	\N
211311970 	DALLAS EXPRESS	2013-01-20 15:31:31-05	\N
211312160 	DUHNEN	2012-05-14 20:17:32-04	\N
211315100 	CONTAINERSHIPS 6	2018-08-16 05:44:35-04	\N
211315270 	SUEDERAUE	2012-08-13 08:41:29-04	\N
211315540 	PRINS MAURITS	2012-08-26 04:20:14-04	\N
211316150 	REEPERBAHN	2018-11-13 13:30:03-05	\N
211316340 	SEEADLER	2018-07-16 17:41:25-04	\N
211317180 	TIMBUS	2018-12-03 17:55:03-05	\N
211317710 	STORCH	2016-06-20 05:20:45-04	\N
211318010 	MARIA LOUISE	2016-08-26 12:13:30-04	\N
211318600 	LOTSE 2	2014-08-13 05:05:54-04	\N
211318770 	VB WESER	2014-05-03 18:30:01-04	\N
211319400 	HEIMAT	2018-04-29 18:39:28-04	\N
211321160 	MARTIN FRIEDRICH	2012-07-17 20:24:09-04	\N
211321680 	WSP 13	2014-05-05 17:54:33-04	\N
211322590 	WSP 3	2018-01-22 23:17:28-05	\N
211327610 	ARGUS	2014-11-26 07:59:29-05	\N
211327660 	BUGSIER 21	2017-10-13 09:33:32-04	\N
211328230 	HARLE PRIEL	2015-05-27 21:14:38-04	\N
211330130 	MALTZAHN - HF.294.	2016-02-19 09:36:28-05	\N
211331920 	TAUCHER O.WULF 3	2018-07-16 02:09:58-04	\N
211332630 	NG10 AQUA-FAUNA	2017-11-11 17:02:56-05	\N
211333700 	FINJA	2015-05-30 10:23:31-04	\N
211334410 	BUETZFLETH	2018-10-29 07:25:37-04	\N
211334830 	VB JADE	2017-08-22 12:53:48-04	\N
211336340 	NIGE	2016-11-10 13:10:11-05	\N
211337780 	ATALANTA	2019-01-09 16:03:12-05	\N
211338280 	HERTHA ABICHT	2016-11-13 08:47:38-05	\N
211338510 	VB BLUMENTHAL	2016-01-23 20:56:02-05	\N
211339980 	HHLA 3	2016-01-06 09:40:52-05	\N
211342400 	CHRISTINE	2013-10-25 09:22:19-04	\N
211343680 	NILS HOLGERSSON	2012-06-18 19:28:24-04	\N
211345800 	LADY M	2013-12-10 03:44:51-05	\N
211349680 	TAUCHER 16	2014-06-13 01:02:53-04	\N
211350830 	ZUVERSICHT    C?-	2018-09-28 13:23:30-04	\N
211351270 	BRUNSHAUSEN	2013-12-23 22:22:12-05	\N
211352600 	HANSEKOGGE	2017-03-30 17:59:26-04	\N
211356520 	WARNOW	2012-03-24 23:22:57-04	\N
211357810 	SIRIUS	2014-01-24 00:12:39-05	\N
211359100 	MOEWE	2013-01-02 21:45:08-05	\N
211360780 	SANTA BARBARA ANNA	2017-07-15 04:51:20-04	\N
211360810 	RHEINCARGO	2018-02-02 16:40:06-05	\N
211363340 	BRANDGANS	2018-08-22 02:34:52-04	\N
211363350 	LEYHOERN	2015-01-28 05:52:25-05	\N
211365280 	SC31 DR MAARTEN LUTH	2012-10-07 06:28:59-04	\N
211365960 	KEPLER	2015-04-14 17:34:39-04	\N
211366340 	MISTRAL	2015-08-29 11:17:54-04	\N
211369510 	HOBEN	2014-03-11 22:38:45-04	\N
211372620 	KATHI	2013-09-18 17:39:36-04	\N
211375510 	BALTIC	2013-12-30 19:15:47-05	\N
211378190 	KOI	2014-09-25 13:31:12-04	\N
211383980 	PRAESIDENT SCHAEFER	2019-01-24 06:52:56-05	\N
211384270 	VISIONE	2015-10-26 14:53:39-04	\N
211385020 	SCHUELP	2013-08-24 02:00:43-04	\N
211386030 	BERNHARD DETTMER	2014-09-26 03:08:47-04	\N
211386450 	BAYREUTH	2014-04-03 09:33:19-04	\N
211386490 	NADIR	2013-08-15 00:17:24-04	\N
211386900 	EILTANK 6	2015-01-05 04:24:40-05	\N
211392280 	ELFIN	2014-09-09 20:44:49-04	\N
211395390 	FINO 1	2015-05-30 10:41:32-04	\N
211395930 	WULF ISEBRAND	2017-01-20 23:22:45-05	\N
211399000 	HDW HERKULES	2013-04-30 10:00:02-04	\N
211402070 	LUNA	2013-05-11 23:45:41-04	\N
211404810 	ESCHWEGE	2017-05-05 05:53:48-04	\N
211408230 	SERRAHN DEERN	2016-09-02 18:12:28-04	\N
211409100 	SEAHAKE	2015-11-02 13:24:30-05	\N
211409660 	CAPELLA	2017-10-29 01:20:47-04	\N
211411230 	BALTIC STAR	2014-11-19 08:59:03-05	\N
211411980 	ZENIT	2018-12-22 20:23:22-05	\N
211417590 	SOLEA	2012-02-12 04:18:29-05	\N
211418860 	ORION 2	2016-03-05 11:18:20-05	\N
211421690 	PIROL	2013-07-25 10:59:38-04	\N
211422510 	SEARAY	2019-02-21 00:01:56-05	\N
211428220 	STOERTEBEKER	2015-02-27 23:58:45-05	\N
211430400 	KOLLMAR	2017-07-13 22:18:56-04	\N
211431270 	HANSE STAR. ::(_	2016-02-23 21:58:19-05	\N
211431820 	WESERLAND	2014-03-24 17:01:28-04	\N
211432820 	LEVINA HELENA	2017-08-23 21:49:53-04	\N
211433070 	LUV	2012-12-22 21:38:50-05	\N
211434050 	LEU	2017-01-12 04:42:23-05	\N
211434550 	SLOT LOEVESTEIN	2013-10-09 04:07:47-04	\N
211434850 	MAKER IX	2018-04-11 16:15:51-04	\N
211435140 	HANSEAT	2018-06-05 01:51:16-04	\N
211435700 	SCHLOSS-RHEINSBERG	2018-06-11 12:31:47-04	\N
211436030 	ANNA	2015-12-02 14:34:56-05	\N
211436040 	PETER	2014-11-14 01:56:04-05	\N
211436320 	BALTIC TAUCHER II	2012-12-05 04:34:25-05	\N
211436370 	LOTSE3	2016-11-04 17:06:26-04	\N
211436640 	CONCORDIA	2019-02-08 23:34:10-05	\N
211437160 	ALTONA	2014-02-15 21:10:04-05	\N
211437180 	NALA	2012-10-04 06:19:44-04	\N
211437190 	NEUENFELDE	2013-05-30 22:15:44-04	\N
211437240 	BLANKENESE	2012-05-02 09:26:38-04	\N
211437260 	JAN MOLSEN	2018-02-26 05:50:36-05	\N
211437270 	HAFENCITY	2013-01-09 03:42:35-05	\N
211437290 	ELBMEILE	2012-11-12 05:42:36-05	\N
211437300 	FINKENWERDER	2015-04-01 22:57:44-04	\N
211437310 	RAFIKI	2012-05-21 16:49:32-04	\N
211437320 	WALTERSHOF	2017-01-16 10:41:32-05	\N
211437330 	WOLFGANG BORCHERT	2012-02-11 00:30:06-05	\N
211437340 	TOLLERORT	2014-08-13 00:36:44-04	\N
211437470 	HARMONIE	2014-03-29 21:31:49-04	\N
211437690 	ECOFORCE	2012-01-30 14:57:20-05	\N
211437770 	WILHELMSBURG	2013-11-25 07:40:34-05	\N
211437930 	SCHL NEUSCHWANSTEIN	2012-09-12 17:38:50-04	\N
211438200 	AVALON	2017-04-05 18:54:04-04	\N
211438440 	SOLEA	2017-02-16 18:05:28-05	\N
211439170 	STEINHAEUSER DUISBUR	2017-02-11 22:57:20-05	\N
211439370 	SCHLOSS CHAMBORD	2013-06-01 21:59:07-04	\N
211439380 	CAROLIN	2012-02-18 12:41:13-05	\N
211440340 	FAEHRE KUESTRIN	2014-07-16 07:03:45-04	\N
211440360 	FAEHRE KOLBERG	2013-07-15 17:40:20-04	\N
211440370 	STRALSUND	2014-09-17 11:55:50-04	\N
211440680 	WILHELM KROOSS	2013-05-21 12:34:48-04	\N
211441150 	HORNHAFEN	2016-02-08 01:44:32-05	\N
211442010 	WILHELMINE	2017-09-17 18:35:24-04	\N
211442520 	NOORMAN	2013-03-15 21:24:38-04	\N
211443110 	FRANKEN	2016-04-26 07:28:46-04	\N
211443160 	HERKULES VIII	2014-09-01 04:01:36-04	\N
211443180 	JUELSSAND	2017-07-25 11:17:46-04	\N
211444000 	WISCHHAFEN	2015-12-21 12:37:36-05	\N
211444330 	OTTENSTREUER	2017-10-26 00:18:56-04	\N
211445190 	TILSIT	2012-11-05 13:59:31-05	\N
211445200 	FAEHRE OPPELN	2014-11-02 17:10:12-05	\N
211445220 	SWINEMUENDE	2014-03-30 00:37:01-04	\N
211446560 	SCHLOSS SCHOENBRUNN	2014-11-05 00:47:13-05	\N
211448440 	STEUBENHOEFT	2016-03-25 16:17:18-04	\N
211448520 	ALLER	2013-02-12 22:43:46-05	\N
211449050 	AMADEUS CLASSIC	2012-06-16 00:29:48-04	\N
211449060 	MS AMADEUS RHAPSODY	2018-01-11 13:00:10-05	\N
211450410 	NORDWIND	2017-07-09 00:06:13-04	\N
211452000 	SH10 FRIGGA	2016-05-15 22:18:43-04	\N
211454200 	RHEINTAL	2015-05-07 05:14:00-04	\N
211454530 	CHARON	2014-07-28 21:38:18-04	\N
211457700 	MEMEL	2014-08-17 16:04:00-04	\N
211457860 	PILLAU	2014-08-17 03:09:44-04	\N
211458150 	DIONE	2012-03-30 11:12:23-04	\N
211458210 	SCHWENTINE	2016-08-06 06:24:12-04	\N
211458660 	WILDKATZ	2015-09-15 06:28:03-04	\N
211459410 	STOVE	2014-07-12 07:16:59-04	\N
211459450 	HUDE	2016-08-29 14:33:22-04	\N
211459920 	BUNTHAUS	2014-05-25 10:42:30-04	\N
211462010 	SCHAUMBURG	2013-12-02 00:34:15-05	\N
211462080 	OORTKATEN	2016-09-14 18:45:55-04	\N
211462260 	STABERHUK	2015-03-11 01:38:09-04	\N
211462740 	HANNOVER	2014-04-22 20:40:06-04	\N
211462760 	STOLPMUENDE	2016-04-10 15:42:54-04	\N
211463020 	ANNEGRET	2012-12-29 07:38:30-05	\N
211463350 	ANNEROSE	2012-11-07 05:14:38-05	\N
211463570 	REGINA W II	2013-03-01 17:50:43-05	\N
211463580 	ROLF	2015-09-03 07:14:13-04	\N
211464260 	WESER PILOT	2015-11-20 02:58:47-05	\N
211464390 	SLOT AMALIENBORG	2016-07-13 13:35:52-04	\N
211464420 	ELBEPILOT	2015-05-01 19:44:22-04	\N
211464620 	DEEPENSCHRIEWER 4	2018-04-13 00:27:00-04	\N
211464830 	MIRADOR	2017-01-20 03:34:16-05	\N
211465950 	KRIEMHILD	2014-02-26 15:50:04-05	\N
211466070 	VB HUNTE	2016-05-08 08:17:44-04	\N
211467050 	MARU	2013-11-07 04:55:00-05	\N
211467420 	TREMONIA	2018-02-28 11:42:57-05	\N
211467550 	LUESSEN 13	2012-10-15 14:11:47-04	\N
211468560 	BLANKENRODE	2018-03-19 05:43:52-04	\N
211468980 	ELBCLEARING 8	2017-06-06 03:17:45-04	\N
211469610 	INGBERD	2016-02-28 15:24:19-05	\N
211470290 	ARGON	2012-08-02 21:02:13-04	\N
211470620 	ANNEGRET	2013-11-05 10:11:56-05	\N
211470990 	RUSCHSAND	2018-04-17 14:33:43-04	\N
211471070 	RONJA	2013-03-29 20:31:26-04	\N
211471210 	MAIN TAUBER	2016-05-25 12:43:52-04	\N
211471880 	TMS ANTONIA	2015-10-08 06:19:27-04	\N
211471970 	FIDUCIA	2013-06-09 18:33:02-04	\N
211472070 	WESERTANK 22	2015-11-03 04:44:29-05	\N
211472760 	HARBURG	2012-10-27 21:48:16-04	\N
211472890 	SPIEKEROOG 4	2015-06-09 17:16:54-04	\N
211473470 	GLUECKSTADT FS	2016-12-22 07:22:47-05	\N
211473580 	NIEDERSACHSEN 9	2012-10-29 00:58:10-04	\N
211473590 	NIEDERSACHSEN8	2013-03-03 21:05:55-05	\N
211473820 	URSULA VALENTIN	2013-04-29 10:22:06-04	\N
211473910 	URSULA	2017-05-12 14:30:03-04	\N
211473920 	ASCONA	2014-09-28 13:11:15-04	\N
211474000 	SAS 1O7 "CRAMPAS"	2018-04-12 08:53:53-04	\N
211474080 	BUEFFEL	2012-10-12 23:00:02-04	\N
211474100 	WIEDE	2013-12-13 19:14:55-05	\N
211474890 	HERRENTOR	2015-03-03 15:56:18-05	\N
211474990 	ERNST STURM	2012-11-25 20:33:32-05	\N
211475070 	EILTANK 36	2015-11-08 18:03:35-05	\N
211475380 	ARKONA	2015-04-01 20:24:03-04	\N
211475510 	KATJA	2017-02-02 09:47:22-05	\N
211475690 	VIGILIA	2014-04-07 12:45:27-04	\N
211475930 	HYPERION	2013-03-10 08:31:03-04	\N
211476020 	EILTANK 230	2018-11-23 16:27:48-05	\N
211476050 	HERKULS IX	2017-04-16 08:16:19-04	\N
211476070 	HERKULES 12	2014-08-06 22:08:51-04	\N
211476220 	RHEIN	2014-11-10 23:27:38-05	\N
211476540 	LINAH	2012-03-30 12:33:17-04	\N
211476600 	AVISO1	2014-02-08 12:32:25-05	\N
211477940 	RHEINPRINZESSIN	2018-01-27 14:06:10-05	\N
211478290 	SPB4	2012-03-30 06:07:45-04	\N
211478300 	SPB 5	2015-02-17 16:43:28-05	\N
211479640 	AVALON FELICITY	2017-08-05 21:21:43-04	\N
211479840 	REIMAR	2012-12-23 07:30:43-05	\N
211480570 	MICHAELA	2015-07-08 17:59:18-04	\N
211480780 	WOTAN	2014-02-07 04:11:50-05	\N
211481720 	MARISOL	2016-02-01 20:26:46-05	\N
211482270 	SANTA MARIA	2016-09-10 05:01:29-04	\N
211483260 	BOHEMIA	2014-10-24 18:18:06-04	\N
211483790 	MS LUSITANIA	2016-12-09 18:34:18-05	\N
211484110 	ROYAL CROWN	2014-08-02 04:11:15-04	\N
211484440 	EILTANK49	2013-11-03 13:37:09-05	\N
211484674 	GESTE	2012-12-30 22:28:12-05	\N
211485210 	CHRIS-THO	2015-11-09 16:29:03-05	\N
211485330 	GINA	2015-06-17 14:45:23-04	\N
211486210 	EILTANK 10	2018-03-31 23:20:30-04	\N
211486360 	HANNA	2018-12-14 02:35:42-05	\N
211486520 	KOENIGSWINTER IV	2015-10-27 09:32:07-04	\N
211486580 	EILTANK 19	2012-10-26 16:18:50-04	\N
211486770 	GODESIA	2012-11-21 15:29:54-05	\N
211487330 	EILTANK 20	2015-07-14 16:01:58-04	\N
211487450 	EILTANK 47	2015-12-27 14:08:05-05	\N
211488450 	MALWIEDER	2013-08-01 12:18:33-04	\N
211488620 	A ROSA VIVA	2012-08-12 01:42:09-04	\N
211488640 	A ROSA AQUA	2018-10-03 15:06:06-04	\N
211490230 	AMADEUS ELEGANT	2015-09-04 00:03:45-04	\N
211490610 	VIKTORIA JAEGERS	2018-06-07 13:01:56-04	\N
211490700 	GEORG	2017-08-08 00:36:08-04	\N
211491560 	PATRICK	2013-10-30 05:04:46-04	\N
211492530 	BAUKE	2013-03-29 20:10:27-04	\N
211492550 	VIA	2014-12-31 19:20:19-05	\N
211492710 	PROCYON	2012-02-15 14:55:54-05	\N
211492820 	EDDA	2017-09-23 19:03:45-04	\N
211492920 	EDLENA	2015-05-04 00:01:39-04	\N
211493040 	WASSERSCHUTZPOLIZEI2	2018-03-12 10:41:28-04	\N
211493170 	WESERTRANS 2	2016-11-12 09:46:28-05	\N
211493300 	SYNTHESE-6	2016-05-31 20:02:43-04	\N
211493350 	SYNTHESE 8	2013-11-27 06:22:09-05	\N
211493380 	UTHLANDE	2014-03-23 04:06:54-04	\N
211493430 	IMPERIAL GAS 74	2014-04-29 03:30:42-04	\N
211493530 	IMPERIAL GAS 81	2015-03-03 04:00:57-05	\N
211493550 	IMPERIAL GAS 82	2017-08-10 16:53:33-04	\N
211493560 	IMPERIAL GAS 83	2016-09-21 03:06:07-04	\N
211493890 	ABY/LOU	2018-02-14 09:03:13-05	\N
211494020 	TIFFANY	2018-07-29 15:08:56-04	\N
211494200 	EILTANK 21	2018-11-22 14:34:01-05	\N
211494220 	EILTANK 18	2012-09-29 03:34:19-04	\N
211494230 	RITA	2019-01-21 11:55:27-05	\N
211495540 	STADT HEILBRONN	2013-06-27 19:47:39-04	\N
211496260 	EILTANK 41	2014-05-15 08:15:11-04	\N
211496280 	WESERTRANS	2013-03-27 02:51:10-04	\N
211496350 	EILTANK42	2014-05-23 03:10:50-04	\N
211496440 	EILTANK 77	2018-04-10 12:34:10-04	\N
211496450 	EILTANK 48	2017-09-05 03:03:00-04	\N
211496500 	EILTANK 46	2016-08-21 09:49:18-04	\N
211496510 	STADT ASCHAFFENBURG	2015-12-25 01:37:00-05	\N
211496830 	WESER	2017-03-09 11:45:49-05	\N
211497330 	FIGHTER	2015-04-21 08:30:24-04	\N
211497740 	ELBE	2015-03-19 07:19:33-04	\N
211497760 	BCF-AMAZONE	2014-02-24 02:30:13-05	\N
211497910 	MAX	2016-10-17 14:21:29-04	\N
211498060 	WALTER	2014-07-12 01:26:26-04	\N
211498120 	TKVB TUERINGEN	2012-11-28 05:38:00-05	\N
211498130 	MONARCH QUEEN	2015-07-20 11:26:43-04	\N
211498150 	MONARCH BARONESS	2018-08-19 00:16:22-04	\N
211498500 	ROGER	2018-09-30 16:25:35-04	\N
211499030 	BEETHOVEN	2018-10-24 23:35:09-04	\N
211499480 	GROSSER MICHEL	2015-03-18 20:05:03-04	\N
211499870 	MARCEL	2015-10-11 04:29:27-04	\N
211500320 	BENO	2012-06-20 00:40:08-04	\N
211500400 	BEATE JAEGERS	2014-02-13 15:51:34-05	\N
211500430 	JOSEF JAEGERS	2017-10-31 23:45:53-04	\N
211501200 	BADEN WUERTTEMBERG	2014-03-14 16:07:38-04	\N
211501520 	BLANDINA	2017-07-24 21:46:03-04	\N
211501600 	SY KIM	2017-03-12 09:30:44-04	\N
211502330 	MS 111	2017-07-30 17:02:36-04	\N
211502350 	MS113	2019-01-15 20:23:11-05	\N
211502360 	VESALIA	2018-12-25 18:44:02-05	\N
211502370 	MS55	2012-06-23 18:16:49-04	\N
211502460 	HOLLAND 2	2018-03-22 17:54:12-04	\N
211502470 	MS106	2016-06-17 13:42:02-04	\N
211502480 	MS 107	2013-03-26 15:53:50-04	\N
211502510 	WIDDER	2017-01-21 14:55:03-05	\N
211502530 	ARGUS 5	2016-04-22 22:26:58-04	\N
211502880 	SAXONIA	2016-05-15 19:18:08-04	\N
211502930 	OCEANA	2012-01-18 02:12:41-05	\N
211504090 	FAEHRE MICHAELA 2	2014-05-14 04:23:08-04	\N
211504140 	FERDINAND	2016-12-12 14:31:05-05	\N
211504540 	BONA DEA	2014-05-17 06:22:37-04	\N
211504720 	ANGELIKA	2018-09-02 18:14:34-04	\N
211504980 	RIVER KWAI	2016-09-27 20:54:46-04	\N
211505570 	MORAENE	2015-08-11 06:40:52-04	\N
211505590 	QUARZIT	2018-11-07 20:59:05-05	\N
211505840 	EIDER	2013-09-07 12:19:41-04	\N
211505870 	ESTE	2016-09-15 13:27:06-04	\N
211505920 	TOR ELBE	2012-07-21 20:45:33-04	\N
211505940 	WERRA	2015-09-27 02:29:47-04	\N
211506060 	BERLENA	2015-04-05 15:11:16-04	\N
211506430 	HELLA	2013-07-18 19:05:54-04	\N
211506890 	BILGENENTOELER 4	2014-12-08 23:23:14-05	\N
211506930 	BILGENENTOELER 8	2015-04-30 15:14:55-04	\N
211506940 	BILGENENTOELER 9	2015-02-09 06:47:28-05	\N
211506950 	MOEWE	2016-04-10 20:24:01-04	\N
211506960 	ERNST KRAMER	2014-02-04 10:07:23-05	\N
211506980 	ORCA	2013-10-26 16:28:18-04	\N
211507090 	RHEINTANK 18	2014-03-03 07:00:12-05	\N
211507110 	RHEINTANK 2	2014-10-04 07:04:08-04	\N
211507200 	FULDA	2012-05-18 12:39:09-04	\N
211507280 	VB GEESTE	2014-03-13 21:11:24-04	\N
211507500 	FRISIA VIII	2014-10-14 00:55:44-04	\N
211507550 	LEMARNA	2015-11-16 06:32:11-05	\N
211507850 	RHEINPOESIE	2013-07-22 00:28:30-04	\N
211508080 	AYLA	2018-01-05 04:14:12-05	\N
211508260 	SENDA	2013-07-18 04:02:41-04	\N
211508570 	FAEHRE BERLIN	2014-04-01 06:38:14-04	\N
211508590 	FAEHRE BRESLAU	2018-10-08 07:55:20-04	\N
211508610 	BILGENENTOELER 1	2018-03-23 15:49:11-04	\N
211509350 	MALO	2018-02-08 15:39:49-05	\N
211509360 	WINDROSE	2017-03-04 16:30:39-05	\N
211509630 	LIBERTY	2016-04-16 05:04:08-04	\N
211509750 	PANDUR	2017-03-19 21:05:34-04	\N
211510070 	NAVIGARE	2012-11-07 17:42:30-05	\N
211510430 	SCHLOSS BABELSBERG	2013-04-22 23:56:10-04	\N
211510510 	FGS  STADT DUISBURG	2016-01-28 09:23:16-05	\N
211510540 	ALMENHOF	2015-02-06 03:58:09-05	\N
211510550 	IMPERIAL GAS 87	2012-05-10 17:15:04-04	\N
211510610 	LINDENHOF	2012-06-26 04:56:29-04	\N
211510620 	FGS GERHARD MERCATOR	2019-01-23 14:10:34-05	\N
211510690 	SHAMAL	2014-02-16 17:35:40-05	\N
211510910 	BUNKER SERVICE 4	2013-08-06 18:14:32-04	\N
211510920 	MONIKA	2015-10-26 17:04:26-04	\N
211510980 	SVENJA REICH	2014-02-14 05:50:18-05	\N
211511010 	KOELN BUNKER 1	2014-11-25 13:40:20-05	\N
211511080 	LORELEY ELEGANC	2016-09-14 04:32:13-04	\N
211511210 	SASKIA REICH	2018-06-20 00:58:34-04	\N
211511370 	JOERN	2012-10-12 18:14:51-04	\N
211511400 	STOLZENECK	2016-01-28 06:39:44-05	\N
211511410 	TRIFELS	2017-04-16 01:19:54-04	\N
211511460 	EVENTUS	2014-12-09 05:02:35-05	\N
211511630 	DILSBERG	2016-01-30 22:05:26-05	\N
211511740 	TILL DEYMANN	2015-05-23 12:10:58-04	\N
211511860 	AVISO II	2013-11-18 03:59:45-05	\N
211511900 	RELATIONSHIP	2018-12-30 08:00:25-05	\N
211511920 	RELATIONSHIP II	2018-06-22 13:11:14-04	\N
211511950 	ANGELIKA	2017-03-01 14:38:52-05	\N
211512020 	RHEINNIXE	2013-11-05 10:05:54-05	\N
211512030 	POSEIDON	2015-11-18 05:01:29-05	\N
211512080 	EILTANK 68	2018-05-22 22:23:29-04	\N
211512270 	TRAUTE ABICHT	2016-01-24 12:17:23-05	\N
211512360 	RIVER STAR	2012-10-11 21:38:54-04	\N
211512370 	JETTE ABICHT	2016-01-16 10:10:19-05	\N
211512380 	KURT ABICHT	2012-08-19 11:25:30-04	\N
211512400 	JESSICA ABICHT	2012-02-14 02:43:29-05	\N
211512410 	AUGUST DER STARKE	2012-03-20 14:11:46-04	\N
211512430 	HANSEATIC	2012-04-23 06:05:25-04	\N
211512510 	HAMMONIA	2013-12-09 17:37:41-05	\N
211512520 	HAMBURG	2015-01-11 20:41:26-05	\N
211512540 	CATHARINA 10	2017-12-31 22:21:59-05	\N
211512660 	RODEO	2017-02-26 00:21:17-05	\N
211512750 	EILTANK 121	2016-02-14 23:16:44-05	\N
211512780 	ANDREA	2018-06-28 03:31:44-04	\N
211512850 	KRIPPEN	2016-03-18 20:12:29-04	\N
211512900 	ORIENTIS	2013-06-03 21:02:21-04	\N
211512930 	PFAELZERLAND2	2013-08-08 20:50:43-04	\N
211513110 	BUNKER SERVICE 12	2014-11-22 06:20:27-05	\N
211513120 	NIEDERSACHSEN 21	2013-01-15 22:56:59-05	\N
211513130 	NIEDERSACHSEN22	2015-01-23 16:51:50-05	\N
211513200 	ORCA	2012-09-25 23:29:23-04	\N
211513210 	AURORA	2016-12-25 22:28:04-05	\N
211513250 	DESA	2015-04-15 06:35:08-04	\N
211513360 	NIEDERSACHSEN12	2014-07-30 04:44:35-04	\N
211513370 	THEODOR	2014-10-27 16:08:31-04	\N
211513570 	ELISE	2016-11-12 18:51:46-05	\N
211513790 	BIBERACH	2012-11-14 00:25:08-05	\N
211513810 	EILTANK 65	2018-09-15 19:09:30-04	\N
211513900 	DE AMSTERDAM	2014-06-05 14:47:59-04	\N
211514050 	WILLI OSTERMANN	2014-07-28 04:20:59-04	\N
211514060 	SELANDIA	2017-05-07 22:23:38-04	\N
211514080 	COLONIA 5	2018-09-04 01:28:40-04	\N
211514090 	COLONIA 6	2016-11-28 19:28:48-05	\N
211514130 	UNION  I	2018-02-09 19:25:45-05	\N
211514140 	STECKNITZ	2012-11-13 20:44:00-05	\N
211514290 	GLUECK AUF	2014-12-17 17:08:18-05	\N
211514440 	RIVER LADY	2016-12-25 22:01:20-05	\N
211514510 	MARE	2019-01-31 19:45:28-05	\N
211514540 	PILOT LABOE	2018-10-17 18:02:06-04	\N
211514600 	ECHTERNACH	2013-08-26 15:32:53-04	\N
211514800 	FRANZ HANIEL 14	2015-11-17 23:29:14-05	\N
211514890 	HEINRICH	2017-02-01 15:01:42-05	\N
211514990 	HUCKINGEN II	2017-08-26 21:43:01-04	\N
211515020 	ADRIAN	2019-02-10 02:53:53-05	\N
211515080 	REGINA W	2013-06-02 13:00:06-04	\N
211515220 	IMPERIAL GAS 86	2014-08-31 10:31:46-04	\N
211515230 	HEINRICH 2	2018-02-06 05:22:44-05	\N
211515380 	MAGELLAN	2018-06-08 22:24:09-04	\N
211515400 	ERLENHOF	2013-05-30 19:12:56-04	\N
211515420 	FIOMAR	2018-05-08 17:16:12-04	\N
211515560 	STEIGERWALD	2013-11-20 01:04:59-05	\N
211515740 	EILTANK 39	2014-04-26 18:28:44-04	\N
211515910 	ZEBU	2013-07-23 09:29:34-04	\N
211515960 	NAWATRANS 2	2016-09-05 13:46:50-04	\N
211515990 	MARLIES	2013-09-29 19:49:23-04	\N
211516130 	EILTANK 3	2013-10-07 10:41:59-04	\N
211516140 	EILTANK 5	2015-03-10 16:44:58-04	\N
211516500 	L & R 6	2016-12-08 01:17:57-05	\N
211516510 	GINO	2018-06-30 02:36:31-04	\N
211516560 	JASMAR	2013-09-20 16:22:22-04	\N
211516690 	HORST1	2014-07-30 21:16:10-04	\N
211516700 	SCH 2428	2016-05-30 17:54:10-04	\N
211516750 	SCH2232	2015-05-16 21:00:10-04	\N
211516810 	EILTANK 70	2013-01-29 05:54:30-05	\N
211516950 	MARIA	2015-08-29 13:25:16-04	\N
211517150 	BURGUND	2018-03-26 03:00:38-04	\N
211517160 	ARISON	2018-03-04 20:05:14-05	\N
211517290 	NIKLAS	2015-02-06 13:58:05-05	\N
211517330 	GLORIA	2014-07-30 18:31:17-04	\N
211517420 	KURT	2015-07-13 16:29:35-04	\N
211517480 	INSULINDE/ARCHIPEL	2015-11-28 20:47:26-05	\N
211517490 	ELTERNSEGEN	2013-07-04 11:51:29-04	\N
211517600 	SERENITY	2012-08-28 10:22:33-04	\N
211517640 	CAROLINE	2018-04-15 04:40:46-04	\N
211517780 	FATUM	2015-02-25 16:39:51-05	\N
211517880 	JOHANNA	2012-10-17 05:36:05-04	\N
211517900 	JAN GROEN	2012-05-13 10:34:34-04	\N
211518080 	WINTERBERG II	2012-02-16 11:05:47-05	\N
211518150 	CLAUDIA GLITSCHER	2018-10-28 22:15:09-04	\N
211518220 	BLUE STAR	2014-12-10 13:12:23-05	\N
211518280 	KUTTER WILMA HF329	2016-06-01 08:01:10-04	\N
211518440 	AGADIR	2017-12-01 05:52:58-05	\N
211518780 	SCHUB 2413	2018-03-12 16:55:57-04	\N
211518790 	SCHUB 2414	2014-05-25 22:33:34-04	\N
211518800 	SCH2415  <<	2016-04-13 03:29:43-04	\N
211518830 	SCHUB 2640 <<	2012-06-07 17:55:22-04	\N
211518840 	TMS SHENANDOAH	2015-11-22 06:08:58-05	\N
211519000 	GOODENWIND II	2016-04-26 10:22:49-04	\N
211519100 	HELGA DEYMANN	2017-01-23 14:42:44-05	\N
211519220 	WILSON	2016-01-30 11:42:28-05	\N
211519380 	BELVEDERE	2017-03-17 01:56:17-04	\N
211519390 	CONDOR	2014-06-12 08:50:10-04	\N
211519510 	KLEINE FREIHEIT	2017-06-26 14:41:20-04	\N
211519610 	MARK BRANDENBURG	2014-05-11 00:39:08-04	\N
211519720 	KRISTIN	2017-09-06 12:32:56-04	\N
211519730 	SCHLEPPKO 16:	2018-11-21 03:05:57-05	\N
211519890 	LICHTENBERG	2013-12-27 08:54:08-05	\N
211519930 	A ROSA BRAVA	2018-08-12 22:38:24-04	\N
211519980 	EUROPA	2014-02-10 14:16:34-05	\N
211520030 	POSEIDON	2017-08-17 10:20:07-04	\N
211520040 	PERGAMON	2015-06-13 21:48:09-04	\N
211520130 	THERESE STRAUB	2016-02-17 20:31:40-05	\N
211520170 	WILHELM HUBELE	2014-09-29 18:54:15-04	\N
211520360 	SPESSART	2012-04-10 20:48:29-04	\N
211520410 	ACHELOOS	2014-11-05 13:55:11-05	\N
211520770 	MICHELANGELO	2015-09-04 11:00:23-04	\N
211520980 	SAARPLUS	2018-06-25 04:55:16-04	\N
211521060 	SCHLEPPKO 7	2014-11-20 09:12:44-05	\N
211521290 	MOSELPLUS	2016-12-02 18:56:20-05	\N
211521300 	RHEINKRONE	2015-07-17 18:15:27-04	\N
211522390 	ALTRIP MANNHEIM	2012-05-23 08:57:34-04	\N
211522400 	TAUCHER 15	2018-02-05 21:26:03-05	\N
211522420 	EDWALD	2015-11-16 21:43:19-05	\N
211522500 	MISS ED	2014-05-03 06:07:59-04	\N
211522860 	VIKTORIA	2016-05-13 10:00:54-04	\N
211523430 	INGA R	2015-10-22 00:03:35-04	\N
211523450 	MAX HONSELL	2012-01-08 07:03:06-05	\N
211523460 	NEMO	2012-12-09 11:46:13-05	\N
211523490 	BHV ATHLET	2019-02-11 13:10:52-05	\N
211523600 	MAXAU	2014-10-22 05:52:15-04	\N
211523660 	FLEMHUDE	2015-07-07 02:06:23-04	\N
211523910 	EBBA 2	2018-07-07 01:36:23-04	\N
211523940 	NIDDAPLUS	2013-10-02 01:53:58-04	\N
211523970 	BALGE	2018-04-10 17:01:12-04	\N
211524640 	LOESCHBOOT D-DORF	2012-02-11 05:34:35-05	\N
211524710 	ELSFLETHER SAND	2015-03-05 18:09:51-05	\N
211524940 	EXCELLENCE MELODIA	2014-03-13 06:38:09-04	\N
211525220 	MONSUN	2014-05-07 19:46:22-04	\N
211525260 	CHEMPARK	2012-11-29 00:58:08-05	\N
211525600 	GRETE MARIE	2014-02-09 13:23:53-05	\N
211526000 	WANGERLAND	2018-07-02 12:48:29-04	\N
211526370 	BOHEMIA II	2016-02-14 04:37:40-05	\N
211526690 	FENNE	2016-07-07 13:48:14-04	\N
211526930 	HELENE	2016-02-28 10:49:23-05	\N
211527970 	MOORING TUG 3	2013-06-18 23:15:43-04	\N
211529610 	HH 93	2017-08-17 07:53:38-04	\N
211530930 	VALIENTE	2015-12-28 16:05:04-05	\N
211531070 	RHEIN	2018-02-28 06:37:18-05	\N
211531660 	SCHLOSS VERSAILLES	2014-08-17 18:00:48-04	\N
211533510 	VEGESACK	2016-10-18 00:39:56-04	\N
211533590 	PILOT SCHILKSEE	2018-10-30 09:35:58-04	\N
211533730 	PILOT HOLTENAU	2012-02-02 00:20:27-05	\N
211534170 	AMADEUS BRILLIANT	2018-12-07 22:41:51-05	\N
211534580 	SCHUB 2329	2018-07-17 23:04:40-04	\N
211534690 	KEILER	2017-11-09 19:08:49-05	\N
211534730 	RUHR	2012-11-11 21:59:53-05	\N
211534750 	NEUSS	2017-09-30 21:43:58-04	\N
211534770 	BONN	2013-05-16 11:51:46-04	\N
211534880 	KOELN	2016-05-06 12:47:09-04	\N
211535300 	MAIN SPESSART	2012-08-10 20:33:06-04	\N
211535910 	MS ANNETTE	2015-11-04 12:56:01-05	\N
211536850 	FELIX	2012-01-09 07:00:30-05	\N
211537190 	CHABLIS	2015-08-05 03:36:15-04	\N
211537690 	VISURGIS	2017-02-21 01:46:21-05	\N
211537760 	URSA MINOR	2015-08-04 03:42:50-04	\N
211537930 	TUEMMLER	2018-05-03 15:19:38-04	\N
211538490 	NOORTRUCK	2013-09-15 07:18:37-04	\N
211538690 	LINZ	2013-08-22 21:51:41-04	\N
211539230 	RHEIN SYMPHONIE	2017-10-29 11:35:31-04	\N
211539790 	SPEICHERSTADT	2012-01-01 11:08:56-05	\N
211540060 	FANTASIA	2014-01-19 23:28:33-05	\N
211540670 	PRETORIA	2014-11-16 13:23:38-05	\N
211540760 	HANSEN SIEN 2	2012-10-20 05:08:11-04	\N
211540870 	EDNA	2012-02-11 09:07:13-05	\N
211541040 	LEMWERDER2	2013-11-11 00:55:18-05	\N
211541290 	SCHLOSS HEIDELBERG	2015-03-04 10:14:48-05	\N
211542440 	BODENSEE	2016-12-23 14:43:27-05	\N
211543620 	BLANDINA	2019-02-06 14:43:32-05	\N
211544210 	WASSERBOOT 1	2017-01-16 04:47:57-05	\N
211544420 	JULIA	2015-11-30 00:57:15-05	\N
211544700 	SERO	2017-11-10 07:11:06-05	\N
211544880 	KARIN	2015-01-13 12:12:28-05	\N
211546160 	OTTO	2014-10-02 11:10:36-04	\N
211546580 	WOHLENRODE	2012-12-06 20:07:51-05	\N
211546740 	PILOT STEIN	2016-05-11 05:06:51-04	\N
211546840 	PILOT BUELK	2016-06-02 10:59:57-04	\N
211546860 	BLEXEN	2013-04-16 23:40:44-04	\N
211547100 	IMPERIAL GAS 88	2018-02-17 20:34:29-05	\N
211547790 	MAGIC BLUE	2015-08-06 06:38:42-04	\N
211548100 	STRANDE 2 SK2	2014-06-18 10:25:38-04	\N
211548450 	GUENTER DEYMANN	2015-08-28 21:12:09-04	\N
211548460 	CONSTELLATION 1	2017-04-13 00:39:11-04	\N
211548640 	VERA	2014-08-11 03:41:16-04	\N
211549000 	BASLE EXPRESS	2014-08-07 13:04:03-04	\N
211549030 	ADLER I	2013-08-21 13:19:27-04	\N
211549160 	MARKGRAFENHEIDE	2014-12-11 16:16:04-05	\N
211549170 	WARNOWSTAR	2017-01-20 12:42:19-05	\N
211549500 	IMPERIAL GAS 89	2014-01-22 15:43:51-05	\N
211549530 	VLOEDLIJN	2015-04-30 11:24:37-04	\N
211550380 	TMS WALTER DEYMANN	2013-06-29 05:18:31-04	\N
211550390 	NAIMA	2012-02-18 06:34:09-05	\N
211550490 	SUNCAT	2016-11-10 05:45:22-05	\N
211551000 	OSTETAL	2014-08-04 12:27:48-04	\N
211551290 	KEILER	2017-09-16 16:52:44-04	\N
211552670 	WERNER REICH	2014-02-26 15:31:03-05	\N
211552800 	DRAGI	2014-06-13 00:06:04-04	\N
211553180 	HANNE W	2016-06-22 22:11:03-04	\N
211553510 	BREMEN 1	2018-04-09 11:15:51-04	\N
211553850 	HABICHT	2016-02-17 17:55:21-05	\N
211553920 	FS ROENNEBECK	2014-11-25 02:08:21-05	\N
211554300 	KRISTALLKOENIGIN	2018-02-11 21:00:28-05	\N
211555260 	AMADEUS	2012-12-06 12:36:12-05	\N
211555310 	PILATOR	2018-06-13 06:53:49-04	\N
211555360 	GILLA	2012-12-17 23:20:17-05	\N
211555440 	EILTANK 69	2015-09-11 22:03:05-04	\N
211555450 	ALAND	2018-01-26 15:09:23-05	\N
211555980 	TMS 4	2012-01-09 09:14:21-05	\N
211556260 	LOESCHBOOT NEUSS	2012-08-13 08:24:34-04	\N
211557020 	BJOERN	2012-06-04 08:01:25-04	\N
211557750 	KARIN	2016-06-24 09:12:31-04	\N
211558470 	SCHNATERMANN	2018-12-07 01:14:43-05	\N
211558490 	BASCHTEL	2017-12-10 05:27:14-05	\N
211558760 	HEBO LIFT 6	2016-09-25 04:27:51-04	\N
211558830 	RIVERSTAR	2015-03-08 04:15:37-04	\N
211559610 	NOREIA	2016-05-29 16:16:25-04	\N
211559990 	OTTO STOCKHAUSEN	2018-05-24 03:07:43-04	\N
211560180 	CORONA1 I 2BARZE	2013-09-03 01:03:25-04	\N
211560210 	AARBURG	2016-03-16 06:26:35-04	\N
211560830 	DAT OLE LAND 2	2015-10-15 20:28:36-04	\N
211564080 	BRIGANTINA	2016-10-19 18:45:20-04	\N
211566900 	ALEXANDER HUMBOLDT	2015-03-27 11:26:14-04	\N
211570140 	SAATSEE	2015-11-19 11:17:46-05	\N
211572460 	AROSA SILVA	2015-03-03 00:41:53-05	\N
211572680 	LIRE	2016-10-23 07:42:36-04	\N
211573780 	AVALON VISIONARY	2014-02-11 08:51:32-05	\N
211576360 	KARLSRUHE	2017-02-12 18:44:30-05	\N
211576900 	NORDERGRUENDE	2014-10-02 11:50:02-04	\N
211578060 	WESERPLATE	2016-04-16 08:15:01-04	\N
211579150 	KRISTALLPRINZESSIN	2016-01-23 19:20:16-05	\N
211582600 	GEORG BURMESTER	2017-07-14 00:55:44-04	\N
211583150 	WOLF	2018-07-30 14:15:12-04	\N
211587000 	AMISIA DIT6	2017-06-10 03:03:54-04	\N
211587490 	TAURO	2015-04-05 12:16:29-04	\N
211587730 	DEEPENSCHRIEWER 1	2015-11-09 15:31:57-05	\N
211587740 	DEEPENSCHRIEWER II	2013-10-01 13:43:02-04	\N
211587750 	DEEPENSCHRIEWER 3	2016-09-17 15:44:46-04	\N
211587970 	HANNAH-LUISA	2018-08-27 09:55:30-04	\N
211588230 	CAPELLA	2017-06-05 17:06:37-04	\N
211588530 	HILDEGARD VON BINGEN	2017-03-06 11:20:46-05	\N
211588610 	PIZ BEVER	2018-06-23 13:22:20-04	\N
211588680 	VINCENT	2018-02-24 05:52:18-05	\N
211588770 	BUEFFEL	2016-05-21 08:25:21-04	\N
211589250 	ELCH	2015-09-25 15:18:42-04	\N
211589360 	SEESTERN	2013-04-24 12:11:09-04	\N
211589500 	TANJA	2016-02-08 20:49:15-05	\N
211589740 	LOTSE 4	2017-02-10 23:10:59-05	\N
211589800 	NICOLE II	2018-08-26 09:28:25-04	\N
211589950 	PILOT EXPLORER	2012-05-21 08:54:32-04	\N
211589970 	MERCATOR	2013-04-29 21:13:15-04	\N
211589990 	CRUSHER	2018-12-15 08:39:58-05	\N
211590050 	KADDY	2017-11-12 22:21:16-05	\N
211590150 	TAIFUN	2017-07-13 11:34:44-04	\N
211590170 	NICARUS	2017-12-04 18:08:46-05	\N
211590200 	KAAIMAN	2017-07-04 03:38:09-04	\N
211590310 	LOEWE	2018-04-18 14:44:15-04	\N
211590640 	ASTERIX	2012-08-24 07:57:07-04	\N
211590700 	UNDINE	2015-11-01 14:43:36-05	\N
211590710 	FEUERLOESCHBOOT 1	2016-08-23 22:15:25-04	\N
211590770 	DETTMER TANK 140	2012-07-02 08:02:37-04	\N
211590980 	RHENUS DATTELN	2015-07-21 20:39:04-04	\N
211590990 	MOORBURG	2014-02-04 21:43:46-05	\N
211591090 	PILOT WARNEMUENDE	2016-07-03 12:45:06-04	\N
211591140 	RHEINPERLE	2017-03-10 00:43:57-05	\N
211591150 	RHEINTREUE	2016-04-14 22:25:00-04	\N
211591180 	FGS RHEINLAND	2018-05-11 00:11:25-04	\N
211591470 	LOUISA	2016-11-14 10:11:28-05	\N
211591710 	SCHILLIG	2014-03-13 21:00:07-04	\N
211592170 	TWISTER	2015-03-16 17:55:27-04	\N
211592600 	VERONIKA	2017-01-20 03:54:43-05	\N
211593560 	BUNKER SERVICE 11	2014-09-13 17:59:31-04	\N
211593740 	AVALON ARTISTRY II	2016-03-27 02:04:53-04	\N
211594510 	SELEKTRA	2018-09-17 08:28:31-04	\N
211595610 	BREMERHAVEN	2012-05-30 08:49:38-04	\N
211597360 	ADLER	2016-03-14 12:07:31-04	\N
211597760 	JOHANNES BRAHMS	2013-02-22 13:17:09-05	\N
211599130 	KOEPENICK	2017-10-11 15:35:33-04	\N
211599340 	NORDENHAM	2015-11-25 05:00:51-05	\N
211599600 	RIVER SPLENDOR	2017-07-21 09:40:39-04	\N
211599670 	RIVER VENTURE	2015-10-28 14:03:39-04	\N
211601140 	MOEWE	2017-04-10 09:48:21-04	\N
211602130 	ALINA TF 1	2012-03-01 00:16:35-05	\N
211602410 	NAKU	2017-01-16 15:57:39-05	\N
211603060 	AMADEUS SILVER	2015-12-29 21:37:41-05	\N
211603970 	RUGARD	2016-12-05 21:30:02-05	\N
211605060 	AVALON EXPRESSION	2012-09-18 08:10:33-04	\N
211606190 	RUMMELSBURG	2019-02-13 07:23:31-05	\N
211606900 	THYSSEN-3	2014-12-13 18:20:55-05	\N
211608240 	BODO CONNECTOR	2016-06-22 12:33:04-04	\N
211608390 	BRELOH	2012-08-15 13:52:57-04	\N
211611070 	STEIN	2013-04-09 09:10:24-04	\N
211611680 	HAMBURGENSIE	2017-06-27 23:22:21-04	\N
211613180 	ALEXANDRIA	2013-11-10 01:25:46-05	\N
211614010 	NOK1	2017-04-27 04:16:26-04	\N
211617030 	ALEGRIA	2014-03-20 00:06:53-04	\N
211617950 	IMPERIAL GAS 90	2013-01-30 17:42:56-05	\N
211619000 	RUBIN	2017-09-20 04:29:13-04	\N
211619970 	ANJA	2014-03-05 06:00:00-05	\N
211620070 	SERENDIPITY	2018-01-12 03:16:36-05	\N
211620870 	ODERBERG	2012-12-15 22:42:04-05	\N
211621310 	A - ROSA FLORA	2017-03-06 08:57:27-05	\N
211623180 	SASCHA	2013-05-31 02:53:45-04	\N
211624750 	BREITLING	2018-06-16 22:33:57-04	\N
211624870 	WARNOW	2018-09-18 11:04:27-04	\N
211625070 	EDWINA	2018-07-12 07:55:18-04	\N
211625340 	BUGSIER 8	2014-04-30 06:27:17-04	\N
211625350 	BUGSIER 7	2014-02-12 19:06:14-05	\N
211625460 	TENDER OF PASHA NERO	2013-12-09 05:51:01-05	\N
211625490 	HERA	2015-08-06 07:35:52-04	\N
211625590 	RHEINTANK 3	2012-11-14 07:17:55-05	\N
211625770 	RATASPONA	2013-01-21 05:25:03-05	\N
211625860 	BHV SUPPLIER	2012-05-13 22:51:23-04	\N
211625990 	BIZON-O-118	2013-08-04 15:16:41-04	\N
211626080 	REGENSBURG.	2018-05-04 08:59:04-04	\N
211626210 	KIEBITZ	2012-03-25 00:48:41-04	\N
211626240 	IMPERIAL GAS 91	2018-03-08 08:45:20-05	\N
211626280 	DREYE	2018-02-08 11:34:23-05	\N
211626350 	VB PROMPT	2016-06-05 16:27:22-04	\N
211626380 	FORTUNA	2014-04-02 19:12:25-04	\N
211627300 	INTRUDER	2013-02-18 15:30:12-05	\N
211627310 	HARRIERSAND	2015-05-09 08:12:05-04	\N
211627320 	WERDERLAND	2017-11-21 15:27:21-05	\N
211627870 	PONTON 23	2014-09-26 02:51:18-04	\N
211628280 	OVER	2014-11-22 11:53:50-05	\N
211628880 	ELEODES 2	2012-03-31 09:52:04-04	\N
211628920 	LACHS	2017-01-14 19:46:03-05	\N
211629000 	HEGEMANN 4	2013-02-26 15:23:29-05	\N
211629660 	JUERGENSBURG	2012-10-01 15:55:05-04	\N
211629870 	ADLER	2014-03-08 02:16:15-05	\N
211630850 	TAUCHER 10	2013-09-01 07:30:48-04	\N
211631370 	THIJS JR	2018-05-23 18:36:28-04	\N
211632780 	BADEN PFALZ	2015-03-04 02:26:31-05	\N
211633700 	REGENSBURG	2018-04-14 01:07:05-04	\N
211633870 	BALOU	2018-08-04 09:13:31-04	\N
211633920 	MILAN	2014-12-22 01:20:24-05	\N
211634530 	HYBRID	2015-02-08 01:56:39-05	\N
211634880 	GEESTEMUENDE	2018-07-30 16:51:09-04	\N
211635470 	KONRAD ADENAUER	2016-07-24 13:17:57-04	\N
211635720 	OESPER	2018-06-30 04:01:04-04	\N
211636540 	MAX PRUESS	2017-12-11 23:38:44-05	\N
211637070 	KNIEPSAND	2015-03-13 16:08:39-04	\N
211637170 	SB POLYMER	2012-12-12 19:34:32-05	\N
211638060 	OTTER	2014-09-25 10:55:40-04	\N
211639300 	HEINRICH HUEBBE	2012-04-15 13:07:25-04	\N
211639650 	PETER PAN	2016-02-16 04:12:00-05	\N
211639750 	ALSTER	2017-02-16 22:39:01-05	\N
211641060 	ILMENAU	2014-01-13 12:53:00-05	\N
211641880 	MAXI	2014-06-14 16:14:07-04	\N
211643790 	REIHERSTIEG	2014-06-02 18:52:50-04	\N
211643840 	LUMME	2019-02-25 23:04:16-05	\N
211644270 	SIRONA	2017-09-11 23:21:00-04	\N
211645510 	MARGRET DEYMANN	2012-01-14 00:54:02-05	\N
211647900 	SEEWIND 1	2012-12-09 15:03:54-05	\N
211648000 	SH 7 GITTE	2015-10-30 04:57:33-04	\N
211648720 	GIRBAUD	2017-04-24 15:12:01-04	\N
211649550 	MAXINE DEYMANN	2015-06-13 10:52:28-04	\N
211649920 	CALEDONIA	2018-10-13 07:06:27-04	\N
211650890 	CUAC	2018-12-02 01:37:35-05	\N
211651080 	THYSSEN 1	2016-02-15 08:16:10-05	\N
211651920 	HAITHABU	2012-11-28 22:02:35-05	\N
211652710 	HM RHEINLAND	2018-03-29 21:18:22-04	\N
211652730 	VSS HOMBERG	2018-07-23 00:27:24-04	\N
211652800 	MS DUISBURG	2017-02-17 21:51:45-05	\N
211652820 	VSS REES	2014-08-13 08:31:12-04	\N
211653110 	LINZ-REMAGEN	2012-05-30 04:41:54-04	\N
211653680 	FED 10  OSTWIND	2017-04-24 07:37:20-04	\N
211656610 	BELLATRIX	2017-10-15 08:11:09-04	\N
211657540 	WISENT	2015-11-15 06:38:17-05	\N
211658290 	ALBATROS	2018-03-22 12:53:32-04	\N
211659020 	SG LURCH	2016-12-13 01:35:38-05	\N
211659630 	PILOT JASMUND	2017-10-03 08:18:35-04	\N
211659940 	LUCHS	2012-03-06 14:01:36-05	\N
211660670 	DATTELN	2014-01-29 12:45:06-05	\N
211660680 	DORSTEN	2015-04-07 07:44:55-04	\N
211661510 	TANGENS	2018-11-20 08:32:01-05	\N
211661590 	BLACK PEARL	2014-09-21 11:58:35-04	\N
211663310 	MS BUCHE	2017-07-17 01:16:12-04	\N
211664100 	RICHARD KRANZ	2012-04-03 15:21:40-04	\N
211664120 	PHILIPP II	2014-05-27 10:55:31-04	\N
211664220 	PHOENIX	2016-06-27 17:14:25-04	\N
211664350 	EDERSEE	2016-09-18 09:40:59-04	\N
211664370 	TIZIAN	2013-01-14 22:22:27-05	\N
211664760 	QUIRINUS	2013-07-30 06:02:19-04	\N
211664810 	MS "HEWI"	2016-05-22 15:15:05-04	\N
211664930 	GEREON	2015-05-18 14:52:09-04	\N
211665160 	GALAPAGOS	2015-10-13 16:51:09-04	\N
211665180 	KARL JARRES	2018-09-11 23:04:34-04	\N
211665550 	WSP 12	2013-05-02 16:41:31-04	\N
211665560 	WSP 13	2012-08-13 23:47:07-04	\N
211665570 	WSP 11	2013-08-03 18:58:36-04	\N
211665580 	WSP 2	2012-08-11 16:03:43-04	\N
211665590 	WSP 3	2015-04-16 05:06:52-04	\N
211665610 	WSP 5	2012-02-07 14:58:31-05	\N
211665630 	WSP 8	2016-09-30 05:02:59-04	\N
211665640 	WSP 9	2017-09-22 06:35:43-04	\N
211665650 	WSP 6	2012-07-08 18:17:36-04	\N
211665670 	STEDINGEN	2015-03-04 10:31:20-05	\N
211665720 	OHF 32	2016-05-23 13:15:58-04	\N
211665750 	OHF 164	2016-02-13 21:07:10-05	\N
211665780 	OHF 207	2013-09-21 04:17:43-04	\N
211666120 	ACHILLES	2017-10-07 05:42:13-04	\N
211666130 	GOTTFRIED TULLA	2013-02-17 06:53:08-05	\N
211666150 	OHF279	2018-01-29 05:04:16-05	\N
211666330 	HAFENAUFSICHT	2012-06-03 12:48:23-04	\N
211666400 	JAN	2012-10-25 20:25:19-04	\N
211666470 	MOORWERDER	2018-01-15 12:53:29-05	\N
211667160 	OFFSHORE TAXI ONE	2015-09-02 11:07:19-04	\N
211667570 	VIVARIUM	2012-01-27 00:53:27-05	\N
211667590 	MICHEL	2016-09-13 05:42:56-04	\N
211667640 	NONNENWERTH	2016-07-25 14:05:07-04	\N
211667760 	FAIRPLAY IX	2016-08-12 03:26:25-04	\N
211667930 	KIEK UT	2013-07-27 13:05:36-04	\N
211668360 	RIVER NAVIGATOR	2014-11-01 02:25:11-04	\N
211668470 	MILLY	2016-08-18 02:21:08-04	\N
211668630 	MS RHEINAU	2018-04-10 16:40:25-04	\N
211668650 	PKL 11	2014-11-13 14:34:37-05	\N
211668670 	MS OBERRHEIN	2018-06-24 18:30:31-04	\N
211668760 	DUESSEL	2019-02-22 09:22:21-05	\N
211668770 	STADT DUESSELDORF	2018-04-28 07:53:50-04	\N
211668880 	DUESSELDORF	2018-07-28 09:29:15-04	\N
211669240 	HAFAG 38	2017-08-09 17:39:23-04	\N
211669950 	MODI	2015-09-12 05:09:05-04	\N
211670760 	SANTA MARIA IV	2018-10-22 13:42:25-04	\N
211671300 	HILDEGARD	2012-01-19 16:34:25-05	\N
211671320 	TYR	2013-03-24 01:28:36-04	\N
211671400 	SINCERITY	2017-07-31 10:57:18-04	\N
211671760 	CASSIUS	2018-08-01 18:47:33-04	\N
211672430 	RESI	2015-11-26 23:09:26-05	\N
211672440 	SERVICE	2016-12-21 22:08:27-05	\N
211672640 	ZEUS	2013-12-26 06:00:12-05	\N
211672720 	KIEK UT	2016-05-12 11:11:25-04	\N
211673650 	JESSI	2012-01-27 04:35:34-05	\N
211674070 	LOESCHBOOT 2 KOELN	2015-09-04 05:51:16-04	\N
211675860 	LOESCHBOOT KOELN 1	2018-02-03 10:29:10-05	\N
211676580 	VB RESOLUT	2015-04-14 02:40:39-04	\N
211676590 	VB PERFECT	2012-01-25 09:36:13-05	\N
211680220 	ANHALTINA	2018-04-19 12:14:47-04	\N
211680560 	MISS MONEYPENNY	2013-09-12 00:12:58-04	\N
211681630 	STAPELTOR	2017-06-01 05:31:10-04	\N
211682330 	AMADEUS SILVER II	2018-11-24 06:04:01-05	\N
211682430 	BILLWERDER	2017-01-27 03:40:39-05	\N
211683720 	XANDO	2013-07-29 22:57:27-04	\N
211684020 	FAIRPLAY XI	2015-12-30 16:46:04-05	\N
211686000 	ANITA HAGEDORN	2017-04-30 03:01:38-04	\N
211687280 	SUNNY BLUE	2013-07-24 05:23:57-04	\N
211688230 	EVENTUM	2014-02-22 16:56:39-05	\N
211689390 	RHENUS DUISBURG	2018-01-10 18:47:26-05	\N
211689750 	KROKODIL	2018-08-02 14:16:34-04	\N
211689760 	KROKOLINO	2015-02-22 06:27:18-05	\N
211690000 	VB BREMEN	2017-08-23 01:25:33-04	\N
211691020 	STEINBURG	2012-07-25 23:10:43-04	\N
211693000 	NORTHERN JULIE	2013-10-09 21:59:40-04	\N
211693600 	REINHARD WOLTMAN	2012-07-01 17:31:13-04	\N
211694380 	MENTAL FLOSS	2016-11-08 15:34:12-05	\N
211694420 	ROSETTE 2	2015-08-25 20:32:04-04	\N
211696040 	CORVIN	2015-03-12 17:30:22-04	\N
211696830 	WALSRODE	2015-08-13 05:45:17-04	\N
211697470 	FAEHRE SIEBENGEBIRGE	2013-02-22 04:21:50-05	\N
211698360 	KRAKE	2016-08-20 16:18:55-04	\N
211699020 	SY INFINITY	2016-04-15 11:40:32-04	\N
211699600 	PANTERA	2015-07-03 09:21:25-04	\N
211699930 	CARL FEDDERSEN	2012-11-28 12:33:30-05	\N
211701600 	JOHANN REINKE	2018-03-01 09:28:13-05	\N
211701670 	CHRISTIAN NEHLS	2017-04-23 17:52:25-04	\N
211701880 	HUGO LENTZ	2012-05-22 23:54:36-04	\N
211701890 	JOHANNES DALMANN	2013-08-23 09:32:00-04	\N
211702700 	FEUERLOK	2016-08-10 22:58:11-04	\N
211703040 	BUNKER SERVICE 14	2015-11-24 13:55:41-05	\N
211704040 	OTTER	2012-11-19 01:27:59-05	\N
211704210 	HAVEL	2012-07-11 22:32:32-04	\N
211705350 	GEBO	2017-08-11 19:00:16-04	\N
211705510 	SABINE	2018-04-14 13:14:11-04	\N
211705600 	BERLIN	2017-12-04 16:31:04-05	\N
211706140 	RHENUS-DILLINGEN 1&2	2014-09-29 03:32:48-04	\N
211706350 	ZYKLON	2015-02-11 01:23:52-05	\N
211706620 	FEUERLOSCHBOOT-WESEL	2012-07-29 22:27:33-04	\N
211706840 	TAUCHER BREMENPORTS	2016-09-11 21:06:27-04	\N
211706910 	ST NIKOLAUS	2014-05-12 14:56:44-04	\N
211706940 	GRACIAS	2014-12-16 21:42:24-05	\N
211708410 	BREEZAND	2014-05-29 07:05:28-04	\N
211708480 	UTLANDSHOERN	2018-03-18 23:52:44-04	\N
211708520 	RIVER VOYAGER	2013-11-05 08:39:49-05	\N
211709150 	SEASIDE 2	2016-04-10 15:48:34-04	\N
211709170 	VB BRAKE	2016-12-28 16:24:28-05	\N
211709370 	SEEADLER	2018-04-27 01:37:57-04	\N
211709940 	DWARSLOCH	2012-02-08 23:28:16-05	\N
211710650 	BUGSIER 22	2013-08-30 10:18:25-04	\N
211711370 	BLEICHEN	2017-07-26 20:51:33-04	\N
211712470 	WALTER	2016-10-21 09:01:44-04	\N
211713320 	PORT 2	2013-04-11 14:32:48-04	\N
211713700 	LUETT DEERN	2013-11-06 23:26:41-05	\N
211715570 	VB RASANT	2013-06-21 18:11:55-04	\N
211716130 	VERDI	2016-01-31 19:30:58-05	\N
211716160 	PEPE	2013-03-02 08:24:56-05	\N
211716770 	AMADEUS SILVER III	2013-09-11 21:07:04-04	\N
211717470 	VB ROENNEBECK	2012-04-11 21:33:37-04	\N
211718140 	RHEIN MELODIE	2015-07-07 15:36:57-04	\N
211718270 	MONARCH EMPRESS	2015-06-09 21:25:55-04	\N
211718350 	STELLA MARIS	2014-11-10 22:19:38-05	\N
211718360 	JUTLAND	2016-09-25 13:24:03-04	\N
211718540 	WS 25	2016-08-12 06:18:27-04	\N
211719910 	PRESTO	2012-10-31 18:38:47-04	\N
211724500 	BODO CONSTRUCTOR	2014-12-16 23:17:36-05	\N
211724850 	WIND PROTECTOR	2013-04-18 01:49:45-04	\N
211724920 	WESERTUG	2014-03-16 20:01:26-04	\N
211724930 	MY ONE	2017-04-17 19:35:30-04	\N
211725670 	KOENIGIN SILVIA	2015-01-19 03:24:44-05	\N
211727510 	BERLIN	2017-05-02 10:34:05-04	\N
211729530 	JUSTINE	2018-12-26 21:57:41-05	\N
211732570 	MONIKA DEYMANN	2015-08-15 01:26:41-04	\N
211733740 	IZAR	2015-07-04 05:50:41-04	\N
211736470 	GANDA	2018-05-14 05:34:51-04	\N
211740190 	TOROA	2015-04-28 18:10:28-04	\N
211740210 	BRITTI	2015-03-13 17:23:40-04	\N
211741170 	WILLI	2016-11-24 15:12:59-05	\N
211741410 	STORM	2012-05-29 10:51:13-04	\N
211741580 	EISBAER	2013-08-09 13:03:23-04	\N
211741680 	WIK	2019-01-16 19:34:54-05	\N
211741770 	BUNKER SERVICE 15	2017-07-17 13:00:54-04	\N
211741810 	OLGA CAROLINE	2015-10-09 10:54:05-04	\N
211742080 	CASCADE	2013-10-14 22:53:24-04	\N
211742250 	TAUCHER 14	2016-07-18 08:14:18-04	\N
211743670 	LENA	2016-06-28 10:40:17-04	\N
211743740 	BLUE-PEARL	2013-06-25 02:38:37-04	\N
211744040 	BAGGER BAAS	2016-03-28 20:09:50-04	\N
211744060 	HHLA IV	2018-08-19 04:32:36-04	\N
211744260 	GITTE	2016-12-29 21:05:38-05	\N
211744760 	ILLUSION	2014-05-04 17:31:43-04	\N
211745030 	JADE HIEV	2012-06-20 08:45:13-04	\N
211745110 	HILDEGARD KREBS	2014-04-30 12:09:43-04	\N
211745870 	CARBOCLYDE	2015-02-10 06:08:18-05	\N
211747930 	GRIEP TO II	2015-04-12 09:30:20-04	\N
211748200 	HLB PAMINA 1	2013-11-02 02:47:24-04	\N
211748260 	LOUISA	2012-02-13 17:09:42-05	\N
211748350 	BREINWAVE	2018-03-26 17:18:51-04	\N
211749060 	COASTAL EXPLORER	2013-04-27 19:13:18-04	\N
211749240 	ELVIRE	2015-12-25 05:48:02-05	\N
211749250 	MY WAY	2013-11-17 23:10:07-05	\N
211749880 	CARL	2016-11-16 02:21:36-05	\N
211751070 	AFRIKAHOEFT WS22	2016-06-05 11:26:51-04	\N
211751080 	YORK LUESSEN	2012-09-01 23:00:10-04	\N
211751170 	LUENEBURGER HEIDE	2013-05-19 00:40:22-04	\N
211751530 	GOLDBERG	2018-02-27 01:05:30-05	\N
211751880 	ANNA	2016-05-16 14:33:31-04	\N
211752890 	MICHAEL B	2012-09-25 22:48:06-04	\N
211753950 	PRINCESS DE PROVANCE	2018-11-08 07:00:33-05	\N
211754050 	KAUZ	2017-10-27 02:35:06-04	\N
211754100 	BAER	2015-11-29 04:35:40-05	\N
211754260 	ROENNE	2016-01-11 22:04:56-05	\N
211754320 	WIDDER	2018-06-20 23:08:42-04	\N
211754340 	GLUESING	2015-04-13 13:16:30-04	\N
211754500 	HERKULES	2014-04-15 04:19:15-04	\N
211755140 	FAEHRE FERCHLAND	2014-01-22 07:30:06-05	\N
211755220 	PEGASUS	2013-07-19 11:41:45-04	\N
211755280 	WASCHBAER	2015-04-24 04:31:27-04	\N
211755810 	BP 45	2017-05-13 00:08:07-04	\N
211756560 	ARES	2016-09-22 23:25:19-04	\N
211756790 	ARCONA	2019-01-13 08:02:34-05	\N
211757120 	DIVA	2017-04-08 23:28:24-04	\N
211757150 	ROSTOCK	2015-01-05 09:21:18-05	\N
211757360 	BRUECKENUNTERSUCHER	2018-12-29 10:53:06-05	\N
211757370 	STOER	2013-02-14 14:10:57-05	\N
211757540 	KRONPRINS FREDERIK	2018-02-17 18:28:38-05	\N
211760010 	TIL ABICHT	2018-12-01 05:17:36-05	\N
211760030 	HANNA ABICHT	2018-10-21 20:25:07-04	\N
211760410 	HANSE	2016-07-22 16:22:12-04	\N
211760940 	HAVELFEE	2014-10-21 14:54:58-04	\N
211761030 	HUNTETUG	2017-04-07 05:14:23-04	\N
211761050 	RYSUM	2015-03-06 00:18:12-05	\N
211761920 	GROSSER KURFUERST	2012-02-05 12:30:39-05	\N
211762320 	SY SUNBEAM	2013-12-15 19:55:59-05	\N
211763990 	IMPERIAL GAS 92	2017-11-21 10:21:52-05	\N
211764030 	IMPERIAL GAS 93	2015-06-03 18:24:19-04	\N
211764540 	NIXE	2018-03-05 15:01:04-05	\N
211764940 	FAEHRE "TANJA"	2018-08-19 16:54:23-04	\N
211765800 	BASTI	2015-11-30 16:00:55-05	\N
211767260 	CHALLENGER	2012-12-10 03:59:39-05	\N
211768950 	CREDENDO VIDES   3	2018-01-18 14:55:46-05	\N
211769510 	LITTLE TOY	2017-03-05 01:11:44-05	\N
211770130 	HOFE	2013-07-23 14:07:50-04	\N
211770290 	OTTO LAUFFER	2016-03-16 14:01:54-04	\N
211770480 	BILGENENTOELER 10	2017-07-30 12:58:31-04	\N
211771920 	ALMA	2016-08-20 08:53:31-04	\N
211771970 	DAS SCHIFF NO2	2012-08-21 14:44:33-04	\N
211772040 	HANSEAT	2016-09-05 13:04:40-04	\N
211772110 	OSTERTOR	2016-12-17 09:25:09-05	\N
211772120 	HBG 034	2018-12-11 01:49:12-05	\N
211772130 	PUSDORP	2017-04-12 19:10:17-04	\N
211772600 	DIETER	2018-11-02 10:36:31-04	\N
211773410 	DAVY JONES	2015-08-24 05:43:35-04	\N
211773800 	ICONIC	2017-12-22 10:44:44-05	\N
211773810 	ARABELLA	2012-11-03 10:03:11-04	\N
211773960 	NAWATRANS I	2013-01-26 00:47:53-05	\N
211774590 	FRIDA	2012-04-04 21:09:37-04	\N
211774670 	QUANTUM	2013-01-21 08:17:18-05	\N
211776000 	KYOTO EXPRESS	2016-09-19 03:54:43-04	\N
211776350 	MERIDIAN	2017-01-30 03:42:17-05	\N
211777520 	PHILIPPA	2012-02-15 04:12:20-05	\N
211777720 	INVADO	2017-07-27 07:42:21-04	\N
211777840 	BACK2C	2014-11-23 05:43:51-05	\N
211777860 	M.S.CHARLESTON	2016-05-01 09:49:18-04	\N
211778450 	TWIELENFLETH	2018-07-11 18:27:40-04	\N
211779360 	XENIA	2014-03-26 06:52:42-04	\N
211780140 	FAEHRE SANDAU	2014-09-29 22:12:12-04	\N
211780960 	SANSSOUCI	2012-12-13 23:52:23-05	\N
211781030 	MARPOL-TAXI	2017-12-11 18:16:12-05	\N
211781080 	RUBENS	2018-04-14 02:17:15-04	\N
211781130 	BELLEVUE	2014-05-17 01:09:01-04	\N
211781370 	ORCA TEN BROKE	2017-09-05 16:13:56-04	\N
211782050 	RAINBOW	2016-12-23 00:36:57-05	\N
211782080 	NORDERAUE	2018-08-20 09:07:58-04	\N
211782350 	SAOIRSE	2012-02-04 23:48:06-05	\N
211782790 	SAAREMAA	2016-05-26 08:51:42-04	\N
211782820 	MISTRAL	2012-11-14 08:24:35-05	\N
211783290 	HANSESLOP 6	2018-08-20 23:21:43-04	\N
211783360 	HANSESLOP 1	2018-01-10 01:57:12-05	\N
211784710 	PILOT STEINBURG	2016-08-05 08:00:27-04	\N
211784720 	DITHMARSCHEN	2014-08-11 09:26:41-04	\N
211785120 	SCHLOSS PETERHOF	2015-07-22 00:39:33-04	\N
211785210 	NINA	2012-11-19 22:53:38-05	\N
211785400 	METAMERA	2016-12-06 21:33:45-05	\N
211785510 	DETTMER TANK 128	2018-01-19 03:47:20-05	\N
211786200 	GECKO	2012-09-11 18:58:00-04	\N
211786500 	AMT NEUHAUS	2017-03-29 23:14:17-04	\N
211786590 	SONNENDECK	2015-10-04 09:25:19-04	\N
211787220 	RHEINSCHWAN	2018-04-17 11:54:26-04	\N
211787230 	NADIR	2017-01-28 20:14:57-05	\N
211787800 	PILOT KNURRHAHN	2014-12-15 16:00:08-05	\N
211788200 	ASFRA	2013-09-28 20:54:56-04	\N
211788360 	STEINAU	2017-01-21 08:25:37-05	\N
211788670 	AYASOFYA	2015-09-06 17:41:57-04	\N
211788850 	FRIEDRICHSFELD	2014-07-28 02:08:27-04	\N
211788910 	NESSAND	2016-03-29 22:49:28-04	\N
211789530 	MARK HARDI I	2014-08-23 19:00:02-04	\N
211789680 	JOHN MASCOW	2018-04-23 20:13:09-04	\N
211789890 	HENRY KOEPCKE	2013-08-24 15:24:32-04	\N
211789900 	ADLER CAT	2015-02-06 04:10:52-05	\N
211790400 	FARGE	2013-07-23 07:46:46-04	\N
211792140 	ELISABETH JAEGERS	2013-10-19 09:22:30-04	\N
211792750 	MARIA MASCOW	2017-05-26 14:02:40-04	\N
211793600 	ERIK WALTHER	2012-03-17 22:29:28-04	\N
211794580 	FERDINAND	2017-03-29 02:08:56-04	\N
211795180 	JOHANNES	2017-10-06 19:23:15-04	\N
211795250 	FAIRPLAY-35	2018-10-24 20:05:12-04	\N
211795370 	WITTENBERG	2019-01-24 15:31:09-05	\N
211796410 	VISTA CLASSICA	2013-06-29 20:23:46-04	\N
211797460 	NORDLICHT	2015-05-05 06:17:24-04	\N
211797770 	WIND OF CHANGE	2014-08-19 06:24:24-04	\N
211798640 	MINOR2	2017-05-13 22:07:50-04	\N
211800420 	FRITZ  KNACK	2017-03-23 14:47:49-04	\N
211801150 	AMRUMBANK	2013-05-06 09:52:40-04	\N
211803340 	MY EYES DELIGHT	2013-03-04 15:42:53-05	\N
211804170 	BRITANIC	2017-05-14 14:59:24-04	\N
211804190 	SERVAL	2016-09-26 02:11:09-04	\N
211805140 	WULF 4	2017-12-01 23:17:00-05	\N
211805310 	JUST US	2014-09-10 10:00:26-04	\N
211805530 	TILO DEYMANN 1	2012-02-27 16:50:54-05	\N
211805980 	VIKING SIGRUN	2012-01-20 02:07:15-05	\N
211806460 	SC28 ORA ET LABORA	2017-12-13 20:23:13-05	\N
211806540 	SIRTAKI	2018-12-06 11:32:53-05	\N
211806560 	BRIENZERSEE	2015-04-06 19:57:57-04	\N
211806570 	VIERWALDSTAETTERSEE	2016-08-10 19:11:23-04	\N
211806580 	SEMPACHERSEE	2014-11-27 08:33:36-05	\N
211806900 	KEHRWIEDER	2017-11-22 00:32:51-05	\N
211807720 	BIJOU	2013-11-03 04:00:16-05	\N
211808560 	EAU DE VIE	2016-04-08 20:32:24-04	\N
211808580 	VIKING EINAR	2018-05-28 06:19:41-04	\N
211809000 	JANA	2014-05-03 16:05:23-04	\N
211810500 	BILLE	2018-10-02 18:48:23-04	\N
211811010 	VIKING TIR	2013-03-15 22:24:24-04	\N
211811860 	YES	2018-02-03 07:47:57-05	\N
211812140 	A. KOEBIS	2018-09-19 23:21:40-04	\N
211813320 	SPICA	2013-11-22 02:54:19-05	\N
211813770 	VIKING VALI	2012-01-18 07:07:01-05	\N
211814390 	PILOT SNORRE (126)	2012-06-29 12:21:29-04	\N
211814400 	PILOT FAXE (129)	2013-09-25 12:35:19-04	\N
211814870 	WSP 04 JAHNA	2014-09-18 07:45:15-04	\N
211815120 	SVEALAND	2017-01-13 23:41:32-05	\N
211822000 	SEACONGER	2018-03-22 04:59:43-04	\N
211839000 	CHICAGO EXPRESS	2013-05-28 05:54:20-04	\N
211845000 	CONTAINERSHIPS 8	2016-11-21 15:57:31-05	\N
211876000 	BUGSIER 2	2017-05-25 16:16:55-04	\N
211881000 	SEATROUT	2014-11-14 04:04:18-05	\N
211884000 	LUNEPLATE	2012-11-09 16:05:31-05	\N
211896000 	STRANDE	2014-06-10 13:35:02-04	\N
211987654 	TEST2	2017-10-17 11:17:16-04	\N
211999999 	SONJA	2015-01-09 14:52:13-05	\N
212008000 	GRETE SIBUM	2015-02-14 04:10:39-05	\N
212028000 	ANGELO B	2017-01-18 14:53:13-05	\N
212052000 	MERGUS	2015-11-21 22:39:02-05	\N
212068000 	PERSEUS J	2015-11-15 01:38:59-05	\N
212097000 	RN ARKHANGELSK	2017-09-05 09:38:39-04	\N
212109000 	CEMVALE	2015-02-16 18:22:23-05	\N
212115000 	SHOALWAY	2014-01-31 22:05:16-05	\N
212151000 	CMA CGM THALASSA	2017-12-09 03:16:10-05	\N
212153000 	BJOERKOE	2012-01-01 14:14:40-05	\N
212172000 	NECKAR HIGHWAY	2014-08-03 14:17:25-04	\N
212175000 	EUROPE	2014-06-14 19:23:31-04	\N
212185000 	NORDISABELLA	2016-10-21 06:35:36-04	\N
212198000 	MARJATTA	2014-10-23 02:18:45-04	\N
212204000 	MAIN HIGHWAY	2013-08-19 22:10:04-04	\N
212212000 	EDT YAM	2013-10-27 21:09:05-04	\N
212220000 	CEMSKY	2014-10-03 04:37:43-04	\N
212228000 	AZURYTH	2018-06-28 06:31:13-04	\N
212250000 	KYPROS LAND	2017-12-24 18:18:46-05	\N
212257000 	ORIENT TARGET	2014-08-03 03:56:54-04	\N
212259000 	VICTORIA CLIPPER V	2017-06-13 10:51:05-04	\N
212260000 	TERA JET	2016-01-06 04:26:12-05	\N
212267000 	CONTSHIP  IVY	2017-04-18 03:50:53-04	\N
212274000 	DONATA SCHULTE	2017-02-09 16:51:33-05	\N
212276000 	YM SEATTLE	2017-12-11 12:47:38-05	\N
212279000 	ATALANTI	2012-06-09 13:46:55-04	\N
212302000 	HERCULES J	2016-06-01 04:33:48-04	\N
212308000 	AAVA VG	2018-12-20 10:51:27-05	\N
212345678 	TEST	2016-10-01 23:01:18-04	\N
212352000 	CASTOR N	2016-04-07 00:07:11-04	\N
212353000 	HYUNDAI SHANGHAI	2014-03-16 21:01:35-04	\N
212360000 	CEMSOL	2016-01-20 23:51:46-05	\N
212363000 	UBC BALBOA	2015-10-03 18:08:48-04	\N
212368000 	FREEWAY	2013-05-14 01:45:46-04	\N
212369000 	LOTTA VG	2016-08-22 21:50:29-04	\N
212375000 	CLIPPER POINT	2012-03-11 10:36:48-04	\N
212376000 	MARTEN	2015-01-31 14:22:06-05	\N
212385000 	SWE-CARRIER	2014-01-17 22:16:38-05	\N
212392000 	SEATRUCK PANORAMA	2015-01-06 09:12:04-05	\N
212396000 	STRANDWAY	2018-04-22 20:54:52-04	\N
212400000 	SEATRUCK PACE	2012-04-24 18:36:35-04	\N
212421000 	BOURBON CORMORANT	2016-08-24 10:47:55-04	\N
212422000 	PETROLINA OCEAN	2014-12-29 18:32:27-05	\N
212423000 	WIDOR	2014-05-07 07:11:59-04	\N
212439000 	UBC TORONTO	2014-05-27 07:31:29-04	\N
212464000 	ALCEDO	2016-05-27 04:05:14-04	\N
212466000 	AETHRA	2017-06-03 09:27:38-04	\N
212471000 	SPIRIT	2012-01-29 22:40:11-05	\N
212491000 	DALSLAND	2014-12-31 02:47:24-05	\N
212499000 	NILS DACKE	2017-01-27 08:04:19-05	\N
212503000 	RIX MISTRAL	2015-02-12 08:59:25-05	\N
212510000 	KYPROS LOYALTY	2018-04-01 01:41:48-04	\N
212530000 	FRAKT FJORD	2017-12-25 17:10:50-05	\N
212537000 	ESL AFRICA	2018-09-02 00:14:23-04	\N
212539000 	ANYA	2015-05-25 20:44:45-04	\N
212542000 	CEMBAY	2016-06-17 00:30:48-04	\N
212569000 	RONJA	2017-12-20 17:24:05-05	\N
212570000 	SEA       LEOPARD	2012-09-11 21:11:45-04	\N
212575000 	MULTIMAR	2013-04-24 00:25:28-04	\N
212577000 	SYLUR	2013-08-16 22:18:55-04	\N
212579000 	SEA WITCH	2012-04-14 13:11:38-04	\N
212585000 	GIOACCHINO BACHETO	2018-01-26 09:57:00-05	\N
212611000 	CHRIS. DE MARGERIE	2012-05-06 08:08:04-04	\N
212613000 	RUTH	2016-03-26 14:15:38-04	\N
212625000 	PANORMITIS	2016-09-25 17:25:13-04	\N
212636000 	HANNA	2018-10-18 17:04:05-04	\N
212637000 	BG DIAMOND	2014-03-12 00:11:16-04	\N
212640000 	PRINSDER NEDER	2015-08-05 06:17:50-04	\N
212651000 	ELISABETH J	2018-02-02 09:33:07-05	\N
212656000 	PANAGIA THALASSINI	2013-08-25 12:02:09-04	\N
212660000 	FEDOR LITKE	2017-11-08 16:32:44-05	\N
212662000 	PERNILLE	2016-05-01 16:46:54-04	\N
212667000 	ESL EUROPA	2018-07-19 06:03:25-04	\N
212690000 	CEMBROOK	2015-04-09 07:10:43-04	\N
212694000 	TANJA	2018-07-23 02:58:19-04	\N
212702000 	ELENA L	2013-04-09 12:59:34-04	\N
212733000 	BALTIC PETREL	2018-10-07 12:30:22-04	\N
212740000 	NEUBURG	2013-04-05 11:01:30-04	\N
212745000 	EPICTETUS	2014-10-09 13:23:41-04	\N
212746000 	MAUREEN S.	2012-04-11 06:23:41-04	\N
212748000 	BALTIC TERN	2018-04-14 00:13:27-04	\N
212750000 	CONTSHIP FUN	2016-09-24 09:40:35-04	\N
212752000 	BG JADE	2016-09-12 10:42:30-04	\N
212777000 	WILHELM	2015-02-04 20:54:23-05	\N
212789000 	CMA CGM JAMAICA	2016-04-25 12:35:44-04	\N
212792000 	FREYJA W	2018-10-03 12:17:50-04	\N
212795000 	WILSON SUND	2012-02-27 03:04:46-05	\N
212797000 	ISOLDA	2016-01-05 22:20:54-05	\N
212801000 	PAIVI	2016-12-11 14:43:52-05	\N
212821000 	RIX CRYSTAL	2013-03-02 18:10:24-05	\N
212833000 	MARIS	2017-01-16 19:10:49-05	\N
212836000 	ISADORA	2014-12-24 13:25:03-05	\N
212841000 	NICOSIA PEGASUS	2013-09-10 16:40:50-04	\N
212848000 	WESER STAHL	2015-06-03 18:26:06-04	\N
212853000 	RIX FLEVO	2017-08-26 01:42:13-04	\N
212854000 	MUSTANG	2015-02-01 08:44:39-05	\N
212856000 	ALMA	2012-01-30 11:26:12-05	\N
212882000 	EMS HIGHWAY	2013-11-09 09:36:10-05	\N
212891000 	IRYDA	2016-08-15 06:45:13-04	\N
212893000 	WILSON SAGA	2013-06-03 12:49:43-04	\N
212900000 	PROSNA	2016-06-24 20:41:42-04	\N
212905000 	SEAWAY STRASHNOV	2015-04-28 07:04:23-04	\N
212906000 	BALTIC SHEARWATER	2016-11-19 09:08:55-05	\N
212930000 	ATLAS	2014-12-02 14:30:41-05	\N
212931000 	ELBFEEDER	2017-07-27 04:39:33-04	\N
212935000 	ELBCARRIER	2012-09-20 08:14:41-04	\N
212937000 	ELBTRADER	2017-01-05 17:25:20-05	\N
212947000 	ROSSINI	2014-03-27 12:07:12-04	\N
212963000 	WES GESA	2015-04-28 02:27:56-04	\N
212972000 	ANDROMEDA	2017-12-27 21:06:56-05	\N
212979000 	FRAKT VIK	2017-07-18 18:22:25-04	\N
214180404 	GLASGOW	2016-02-13 02:12:16-05	\N
214182023 	NORA THOMSEN	2015-08-03 16:14:15-04	\N
214182105 	IMA	2015-08-17 06:16:24-04	\N
214182117 	VILENA	2018-01-10 18:37:44-05	\N
214182318 	FK SARAY	2018-12-30 16:56:38-05	\N
214182626 	BABUN EXPRESS	2014-04-06 21:14:39-04	\N
214182702 	SCOUT	2014-02-09 22:08:25-05	\N
214182721 	KIYEVSKAYA	2015-05-20 20:07:21-04	\N
214182734 	NEMESIS	2018-11-13 12:08:32-05	\N
215000069 	BEVERLEY	2013-08-06 09:37:37-04	\N
215000154 	MALAIKA	2015-01-19 22:03:47-05	\N
215000178 	MARINA WONDER	2012-11-06 23:29:50-05	\N
215000384 	TSA TSA	2012-03-16 02:37:36-04	\N
215000534 	SPOCK	2016-01-27 01:02:30-05	\N
215000622 	MR-GU	2019-01-06 01:45:18-05	\N
215000629 	LA DATCHA	2014-06-19 01:41:24-04	\N
215000744 	GRAND CRU	2015-04-16 19:29:39-04	\N
215000769 	MY VARVARA	2013-12-04 11:18:39-05	\N
215000794 	LEWENSLUST	2016-12-18 23:24:28-05	\N
215000861 	SY MAKAI	2015-08-23 22:34:27-04	\N
215000887 	ELENI	2015-11-26 02:05:23-05	\N
215000912 	WHY NOT U	2017-06-18 23:18:27-04	\N
215000924 	WALINDI	2015-04-01 10:06:06-04	\N
215000939 	MINA	2017-09-18 21:01:18-04	\N
215000965 	PEARL I	2012-04-25 16:45:28-04	\N
215012000 	EPIC BARBADOS	2013-08-07 18:43:14-04	\N
215034000 	ASTREA	2012-06-14 15:51:30-04	\N
215051000 	ROBBIE BOBBY	2016-04-07 05:22:26-04	\N
215057000 	VALCADORE	2014-06-07 03:24:30-04	\N
215058000 	BALTIC MARINER	2017-02-16 13:40:26-05	\N
215061000 	WILSON NANJING	2016-11-17 01:55:56-05	\N
215062000 	WILSON NEWCASTLE	2018-09-26 16:03:09-04	\N
215064000 	B GAS MARINER	2012-09-25 21:56:59-04	\N
215088000 	KAMARA	2018-10-02 11:19:28-04	\N
215089000 	APANEMO	2015-12-12 05:09:26-05	\N
215107000 	SEARAMBLER	2014-07-01 11:02:58-04	\N
215119000 	AMARANTH	2013-10-27 04:03:36-04	\N
215135000 	BOMAR VENUS	2016-11-14 05:42:18-05	\N
215170000 	NEPTUNE AEGLI	2013-07-31 16:51:16-04	\N
215178000 	MURRAY STAR	2019-02-19 09:30:03-05	\N
215179000 	TEOMAN A	2012-07-05 17:03:01-04	\N
215186000 	METIS	2012-01-07 08:39:45-05	\N
215188000 	NEPTUNE DYNAMIS	2014-06-02 02:41:53-04	\N
215211000 	KEY FIGHTER	2015-01-12 20:31:39-05	\N
215234000 	YM MARS	2013-01-12 23:17:35-05	\N
215263000 	SEAMERIT	2015-12-14 02:29:22-05	\N
215268000 	PESSADA	2014-02-27 16:15:18-05	\N
215335000 	WHITDAWN	2019-01-28 17:07:26-05	\N
215345000 	MRC HATICE ANA	2013-06-13 07:43:11-04	\N
215349000 	MV CSL TRIMNES	2018-12-23 02:19:08-05	\N
215379000 	BAKU	2017-07-06 18:26:33-04	\N
215389000 	B GAS MASTER	2012-02-29 03:13:40-05	\N
215441000 	EXCELLENCE ALLEGRA	2013-09-29 00:17:25-04	\N
215453000 	KIRAN AFRICA	2013-04-15 04:28:20-04	\N
215464000 	MISS MARIAROSARIA	2012-12-03 08:56:01-05	\N
215520000 	VEMAOIL XXV	2017-07-29 20:26:20-04	\N
215579000 	WILSON MALM	2012-07-22 09:40:59-04	\N
215619000 	WELLENREITER	2017-10-13 07:11:49-04	\N
215637000 	GIANNUTRI	2014-12-04 10:46:42-05	\N
215681000 	KEREL	2016-11-05 20:19:49-04	\N
215691000 	BLUE STAR	2018-02-23 23:26:18-05	\N
215692000 	EMRE KOSE	2015-06-22 16:26:51-04	\N
215729000 	VICTOR HENSEN	2016-10-11 01:15:07-04	\N
215734000 	PATERNA	2016-10-09 22:36:44-04	\N
215742000 	SEAWAVE	2015-06-09 19:49:43-04	\N
215760000 	PECHORA STAR	2017-10-02 00:11:37-04	\N
215771000 	MAINE TRADER	2015-05-17 00:27:08-04	\N
215782000 	SEABRAVERY	2015-10-09 15:47:09-04	\N
215795000 	BALTIC SUN II	2013-09-07 13:15:45-04	\N
215817000 	MARINER A	2017-11-05 06:12:22-05	\N
215844000 	DREAM	2014-12-09 02:30:30-05	\N
215852000 	HIGHLAND NAVIGATOR	2018-09-17 15:11:10-04	\N
215887000 	YELLOW FIN	2012-02-01 15:58:39-05	\N
215907000 	M.C.	2017-08-11 14:45:56-04	\N
215913000 	SUN VITA	2012-11-12 14:37:29-05	\N
215934000 	MOONLIGHT II	2012-03-26 06:37:55-04	\N
215958000 	HISTRIA PERLA	2014-11-22 22:36:54-05	\N
215959000 	TIZIANA	2012-09-17 12:59:55-04	\N
218003000 	BUGSIER 3	2015-01-14 22:55:28-05	\N
218019000 	SEACOD	2016-03-31 14:35:32-04	\N
218025000 	LIVERPOOL EXPRESS	2013-05-20 07:50:03-04	\N
218044000 	HENNEKE RAMBOW	2014-06-05 19:40:34-04	\N
218057000 	SEASPRAT	2016-09-07 23:55:07-04	\N
218084000 	GEO GRAPH	2016-07-09 18:50:09-04	\N
218085000 	SEAMARLIN	2014-12-14 03:13:32-05	\N
218098000 	IDA RAMBOW	2016-05-29 09:45:35-04	\N
218108000 	ESHIP1	2013-12-12 16:52:52-05	\N
218143000 	FAIRPLAY-31	2014-12-03 16:41:45-05	\N
218162000 	VICTORIA	2012-03-19 07:18:07-04	\N
218170000 	REGINE	2018-02-06 08:49:11-05	\N
218172000 	KUGELBAKE	2012-02-20 12:36:15-05	\N
218179000 	ILKA	2014-02-26 07:23:20-05	\N
218257000 	BUGSIER 6	2013-12-11 08:59:23-05	\N
218292000 	SEAPIKE	2017-10-25 11:39:54-04	\N
218298000 	HYDROGRAF	2017-03-19 20:07:24-04	\N
218319000 	WIND LIFT1	2015-02-09 06:21:18-05	\N
218321000 	BUGSIER 10	2016-08-06 20:27:26-04	\N
218334000 	FALSHOEFT	2015-02-13 14:21:28-05	\N
218363000 	LONE LANGAA	2013-09-22 23:34:12-04	\N
218364000 	FRANKFURT EXPRESS	2016-01-17 03:33:40-05	\N
218366000 	SOFIA EXPRESS	2017-12-07 13:54:35-05	\N
218375000 	CLAUS	2019-02-21 23:43:40-05	\N
218393000 	BUGSIER 5	2018-07-05 06:06:20-04	\N
218413000 	BALTIC	2017-07-30 08:09:51-04	\N
218415000 	MERIDIAN	2019-01-12 04:37:12-05	\N
218439000 	HOGELAND	2014-04-06 05:43:07-04	\N
218474000 	ESSEN EXPRESS	2012-05-16 12:14:45-04	\N
218481000 	AQUANAUT	2014-09-10 01:37:09-04	\N
218551000 	SEABASS	2012-12-24 12:58:56-05	\N
218569000 	SHU	2015-10-05 15:16:28-04	\N
218615000 	OCEAN VOYAGER	2018-03-04 18:47:10-05	\N
218627000 	VERA RAMBOW	2016-10-31 03:46:33-04	\N
218667000 	ANDRE W	2013-03-08 06:25:00-05	\N
218681000 	SLOMAN HERMES	2013-06-07 21:56:57-04	\N
218709000 	ALTE WESER	2014-08-10 05:54:01-04	\N
218715000 	ERIC HAMMANN	2018-06-13 14:39:14-04	\N
218728000 	WALTER HAMMANN	2013-11-21 23:36:21-05	\N
218731000 	LEANDER	2018-08-07 10:46:45-04	\N
218759000 	HALLAND	2014-12-26 23:34:14-05	\N
218779000 	ANNIKA	2018-10-16 19:16:18-04	\N
218791000 	ANTWERPEN EXPRESS	2015-04-20 22:42:18-04	\N
218795000 	ROBIN HOOD	2014-07-06 06:32:29-04	\N
218799000 	MARK	2013-03-01 06:53:58-05	\N
218801000 	SIMON B	2016-09-22 23:12:51-04	\N
218805000 	MILLERNTOR	2015-09-16 19:05:32-04	\N
218809000 	KARL ERIK	2016-05-30 00:21:46-04	\N
218814000 	LILY-B	2015-05-18 05:06:55-04	\N
218815000 	BREMER JOHANNA	2017-12-01 19:41:08-05	\N
218816000 	BEATE	2018-07-26 17:03:44-04	\N
218818000 	PATARA	2017-03-17 17:19:37-04	\N
218826000 	POLYNESIA	2015-05-22 15:13:48-04	\N
218827000 	JOSEF MOEBIUS	2017-04-02 10:33:08-04	\N
218832000 	BERLIN	2013-07-29 23:23:43-04	\N
218835000 	ANTEOS	2015-03-15 22:36:56-04	\N
218836000 	SARAH-B	2013-08-31 06:39:24-04	\N
218840000 	KIRSTEN-B	2012-01-02 08:18:45-05	\N
218844000 	CMA CGM IVANHOE	2012-05-27 23:27:04-04	\N
218855000 	RMS VERITAS	2012-03-24 20:49:27-04	\N
218856000 	ANOUK	2014-09-16 19:13:23-04	\N
218858000 	HENRIKE	2012-07-14 13:52:31-04	\N
218859000 	GASCHEM BREMEN	2014-11-03 04:02:47-05	\N
218860000 	BUGSIER 12	2013-10-16 16:33:54-04	\N
218861000 	BREMER ELENA	2012-05-21 02:07:16-04	\N
218862000 	LEV TWISTER	2014-07-20 21:28:48-04	\N
219000028 	MERCANDIA VIII	2014-02-13 23:39:18-05	\N
219000155 	MHV 901 ENOE	2014-07-07 06:26:04-04	\N
219000167 	MHV 903 HJORTOE	2015-05-27 15:45:52-04	\N
219000174 	MHV 911 BOPA	2013-02-11 04:50:08-05	\N
219000175 	MHV 908 BRIGADEN	2015-05-02 10:01:30-04	\N
219000177 	MHV 907 HVIDSTEN	2016-04-16 13:15:46-04	\N
219000182 	MHV 802 CARINA	2012-06-29 18:52:13-04	\N
219000189 	MHV 809 ANTARES	2012-09-14 21:35:46-04	\N
219000191 	MHV 810 LUNA	2018-08-07 18:12:21-04	\N
219000192 	MHV 811 APOLLO	2012-06-07 13:31:26-04	\N
219000217 	SOELOEVEN	2014-02-06 07:16:46-05	\N
219000245 	SATURN	2013-05-16 08:14:34-04	\N
219000333 	SKAW STAR	2017-06-30 20:53:14-04	\N
219000368 	MERCANDIA IV	2012-07-16 20:49:26-04	\N
219000407 	MARGRETE LAESOE	2018-10-15 08:01:03-04	\N
219000416 	METTE MILJOE	2015-05-29 07:07:35-04	\N
219000417 	MARIE MILJOE	2015-11-29 02:30:45-05	\N
219000429 	PRINS RICHARD	2012-05-18 00:38:21-04	\N
219000431 	PRINSESSE BENEDIKTE	2013-12-14 09:43:54-05	\N
219000543 	RESCUE MORTEN STAGE	2016-08-27 06:15:42-04	\N
219000548 	STORESUND	2017-09-15 05:15:34-04	\N
219000552 	MHV 816 PATRIOTEN	2015-08-07 10:01:04-04	\N
219000575 	SKIPPER	2018-06-19 16:15:38-04	\N
219000584 	SEJEROEFAERGEN	2014-09-30 10:10:45-04	\N
219000618 	L248 MAJA LYNG	2018-11-07 23:29:38-05	\N
219000632 	PORTUS	2017-06-25 04:23:38-04	\N
219000657 	LILLA DAN	2013-11-15 00:48:39-05	\N
219000692 	GITI ANKA	2017-03-09 10:14:24-05	\N
219000734 	ANE LAESOE	2017-06-27 11:09:52-04	\N
219000737 	HOLGER DANSKE	2012-03-12 11:32:31-04	\N
219000742 	HOEJESTENE	2019-01-02 12:30:01-05	\N
219000805 	HANNE	2014-08-29 14:34:37-04	\N
219000811 	M.F.ASKOE	2012-08-06 04:35:26-04	\N
219000827 	RESCUE CB CLAUDI	2015-03-07 04:13:39-05	\N
219000836 	AEROESKOEBING	2013-05-02 07:48:04-04	\N
219000852 	AHLSELL	2013-06-28 21:04:06-04	\N
219000872 	HALS EGENSE	2012-03-18 08:09:28-04	\N
219000873 	EGENSE	2015-04-28 14:49:55-04	\N
219000896 	URSUS	2019-01-21 22:19:33-05	\N
219000899 	NEKSELOEFAERGEN	2018-02-14 15:39:34-05	\N
219000907 	SJALLAND	2019-01-05 13:09:21-05	\N
219000934 	MOELBOEN	2019-01-05 07:13:12-05	\N
219000949 	HEBO-LIFT 9	2018-01-30 04:53:10-05	\N
219001013 	PILOT POLLUX	2015-05-21 05:36:08-04	\N
219001034 	TRAMP	2018-05-18 12:56:44-04	\N
219001058 	DANPILOT MARS	2018-07-28 20:46:19-04	\N
219001061 	DANPILOT MERKUR	2015-02-24 17:24:57-05	\N
219001064 	L/F 165	2018-04-20 06:27:43-04	\N
219001083 	ALBA	2013-10-25 23:22:11-04	\N
219001211 	GITTE VIG	2014-10-14 20:48:58-04	\N
219001214 	OPHELIA	2013-02-26 06:10:13-05	\N
219001236 	HUGIN	2012-08-21 12:44:53-04	\N
219001239 	SVAVA	2018-11-01 04:48:03-04	\N
219001261 	JOHN MADSEN	2017-05-26 18:05:22-04	\N
219001262 	PETER MADSEN	2016-02-24 10:59:00-05	\N
219001306 	AIRPORT RESCUE	2012-07-03 01:41:23-04	\N
219001343 	HM 119 BLUE OCEAN	2014-05-13 06:14:17-04	\N
219001459 	MARGRETHE FIGHTER	2014-06-28 14:11:59-04	\N
219001518 	SONJAN 1	2017-06-26 09:36:46-04	\N
219001522 	SOREN STRANDBY	2014-02-02 02:49:43-05	\N
219001549 	HM86 JULIE DIREMO	2014-03-16 06:38:58-04	\N
219001553 	GRAESHOLM FN 168	2017-08-06 03:02:45-04	\N
219001559 	MEILSOE	2018-07-01 16:52:35-04	\N
219001569 	HM52 KANSAS	2012-06-14 02:24:00-04	\N
219001582 	THORBJOERN	2016-06-14 06:36:10-04	\N
219001647 	ELISABETH HOEJ	2014-04-28 08:24:17-04	\N
219001682 	HM95 AUGUST	2018-12-24 14:07:54-05	\N
219001819 	LAPIS	2012-06-02 21:47:21-04	\N
219001976 	HG 64 EXPO	2015-03-24 07:30:35-04	\N
219002023 	KATINKA:AS72	2017-01-19 23:44:26-05	\N
219002029 	ALBATROS1	2013-10-01 13:11:56-04	\N
219002047 	HG 398 NITRIME	2015-03-18 13:54:58-04	\N
219002067 	ALSIN	2012-05-21 05:05:33-04	\N
219002098 	EMILIA	2012-08-17 02:24:00-04	\N
219002136 	L282 MARIE ISABELLA	2014-04-07 00:10:59-04	\N
219002159 	SKAWPILOT 2-DANPILOT	2016-11-02 18:46:23-04	\N
219002176 	PILOT 1	2017-10-13 20:57:26-04	\N
219002177 	CHRISTINE	2012-03-28 17:02:23-04	\N
219002349 	HENRY P. LADING	2014-06-23 05:24:33-04	\N
219002418 	PETER	2017-08-11 19:11:34-04	\N
219002587 	R/V DAPHNE	2015-12-08 06:27:19-05	\N
219002731 	ANHOLT	2013-02-20 04:54:16-05	\N
219002764 	L.W.DAM	2014-09-09 07:14:06-04	\N
219002769 	ANNA E.ROERBYE	2017-08-03 16:54:49-04	\N
219002774 	MARGRETHE GAARDBO	2017-01-16 03:54:55-05	\N
219002827 	MIE MALENE	2012-05-21 10:10:09-04	\N
219002846 	KARISMA	2015-12-04 23:59:00-05	\N
219002857 	LANGOE	2016-09-09 01:45:26-04	\N
219002906 	STORE TEISTEN	2018-06-27 21:14:23-04	\N
219002929 	OSLOFJORD	2014-01-24 20:44:04-05	\N
219002954 	HANNE BERIT	2014-02-06 17:41:14-05	\N
219002981 	TEMPTATION	2017-07-26 00:43:16-04	\N
219003066 	RI 146 POLARIS	2014-06-23 11:17:53-04	\N
219003121 	AARSLEFF BARGE 104	2013-12-21 20:55:20-05	\N
219003452 	GERDA IV	2012-11-17 03:32:19-05	\N
219003461 	JOIN	2015-04-10 11:26:26-04	\N
219003966 	SKAWLINK 3	2016-07-30 10:51:55-04	\N
219004179 	LIMFJORDEN	2016-07-31 12:53:07-04	\N
219004242 	RS 73 ANNIKA	2016-08-01 22:53:31-04	\N
219004266 	EKKO	2014-05-06 01:48:08-04	\N
219004275 	SONDERSTRAND S45	2018-08-23 03:32:57-04	\N
219004596 	RS 64 ELSE	2013-10-07 05:39:26-04	\N
219004896 	SUSANNE SAJ	2013-02-05 01:12:04-05	\N
219004907 	FOENIKS MILJOE	2018-12-20 04:50:01-05	\N
219005068 	OMOE	2012-09-20 00:19:35-04	\N
219005226 	FORTUNA	2013-08-13 04:36:21-04	\N
219005302 	ND8 KIRSTINE KELLER	2017-05-28 10:09:09-04	\N
219005313 	ARA	2017-02-03 16:34:05-05	\N
219005385 	EL-MAS	2018-06-25 20:01:43-04	\N
219005513 	TOBIAS SKOEDT GILNET	2012-06-09 18:32:39-04	\N
219005574 	CAT 1	2017-11-05 04:35:10-05	\N
219005616 	HM406 LISE LONGLINER	2013-09-04 14:45:38-04	\N
219005671 	HM141 PLUTO	2013-03-09 01:39:38-05	\N
219005719 	MIA K398	2015-08-01 22:28:13-04	\N
219005732 	HG20 MALENE MEYER	2016-10-28 04:46:15-04	\N
219005763 	HM50 SANS SOUCI	2015-10-26 07:32:27-04	\N
219005816 	HO32 SIF	2013-09-08 18:14:55-04	\N
219005866 	FN 72 NEBRASKA	2016-03-19 13:13:19-04	\N
219005867 	AMALIE BENJAMIN A59	2015-03-14 11:32:55-04	\N
219005901 	L70 LIMEA	2017-05-13 08:07:30-04	\N
219005904 	AURELIA	2014-12-22 04:42:37-05	\N
219005929 	T247 SANDY LONGLINER	2012-01-15 08:48:43-05	\N
219005941 	JOERN OLE	2016-07-14 16:50:59-04	\N
219005965 	H356 FLID	2018-01-15 16:18:36-05	\N
219005979 	NAKSKOV HAVN II	2013-02-26 01:55:56-05	\N
219005983 	SG 75 JANK	2016-06-20 03:17:22-04	\N
219005995 	LENE-KRISTINA	2014-03-18 00:25:04-04	\N
219006005 	S 123 SILJE-SOFIE	2018-10-19 13:44:56-04	\N
219006023 	FN 305 KNOGEN	2013-04-07 14:28:27-04	\N
219006098 	LIS KEMI	2019-01-13 03:16:56-05	\N
219006113 	FN 272 TINA MALENE	2016-06-12 03:07:55-04	\N
219006152 	M S FELIX	2016-02-01 02:00:11-05	\N
219006157 	FN219 VIBIMA	2013-05-25 08:09:44-04	\N
219006221 	TINSOLDATEN	2013-11-16 12:19:13-05	\N
219006248 	HERDIS	2013-12-24 23:25:21-05	\N
219006301 	FN 308 HELLE LOTTE	2012-05-19 04:02:17-04	\N
219006478 	DANPILOT POSEIDON	2012-01-17 03:21:21-05	\N
219006508 	FN 136 PENELOPE	2012-08-27 19:00:02-04	\N
219006655 	R 50 NORDVIND	2018-06-30 06:20:47-04	\N
219006835 	FN 484 SPIRHOLM	2016-08-11 15:35:01-04	\N
219006971 	FN 220 IDA MARIE	2016-05-25 05:00:31-04	\N
219007034 	LOUISE  R223	2018-03-27 09:26:23-04	\N
219007155 	SKJOLD	2018-02-26 02:06:51-05	\N
219007363 	MJOLNER.R	2013-04-24 08:31:53-04	\N
219007401 	PILOT BOAT INGE	2017-08-23 01:55:42-04	\N
219007404 	R252 RAMONA	2015-07-27 17:32:26-04	\N
219007414 	SANNE A	2016-12-29 01:46:19-05	\N
219007606 	KAREN MARGRETHE	2012-02-26 11:06:17-05	\N
219007641 	R61 KONGSSKAER	2016-09-05 02:13:22-04	\N
219007678 	BIRKHOLM	2017-06-04 17:17:08-04	\N
219007679 	FYRHOLM	2019-02-24 11:14:39-05	\N
219007693 	ASA	2014-02-14 06:16:42-05	\N
219007694 	MB1	2016-02-22 18:38:00-05	\N
219007898 	NAVIGATOR	2014-07-10 10:54:40-04	\N
219007937 	AARSLEFF JACK 5	2012-11-23 12:48:09-05	\N
219008000 	TERN OCEAN	2013-08-06 14:37:44-04	\N
219008156 	SG 81  MARIE	2017-05-05 19:40:19-04	\N
219008746 	UDBYHOJ	2018-03-06 21:20:33-05	\N
219009135 	HM56 LAILA	2012-08-29 06:20:53-04	\N
219009273 	HM165 BRITTA	2012-08-01 18:13:16-04	\N
219009338 	WIND SUPPORTER	2013-12-13 12:03:45-05	\N
219009432 	ESVAGT CASSIOPEIA	2015-03-14 14:38:10-04	\N
219009542 	FN 44 HELENE SARAH	2014-09-24 20:25:44-04	\N
219009599 	HG 75 NICOLINE	2015-06-23 17:04:14-04	\N
219009704 	MARTINA	2013-02-07 21:09:57-05	\N
219009871 	POSEIDON	2012-03-08 23:06:06-05	\N
219009907 	GIZMO HG3	2018-10-06 12:12:19-04	\N
219010247 	T 18 MILLE	2013-09-18 23:50:39-04	\N
219010979 	VEST-EL	2014-03-12 11:24:46-04	\N
219010989 	WESTBANK	2018-11-03 22:25:08-04	\N
219011021 	DANASUND	2017-02-25 03:11:53-05	\N
219011205 	ESVAGT CONTENDER	2014-11-14 06:20:02-05	\N
219011491 	DORIS K	2014-03-18 18:22:14-04	\N
219011659 	FOUR SONS	2013-08-18 13:14:08-04	\N
219011717 	ESVAGT DON	2014-12-19 01:41:02-05	\N
219011953 	S61 NORDAN	2012-04-02 13:39:23-04	\N
219012049 	SKANSEN	2012-08-02 20:27:52-04	\N
219012061 	MARIANNE	2012-05-26 18:25:29-04	\N
219013538 	CARPE DIEM	2017-11-30 20:35:46-05	\N
219013539 	CANOPUS	2012-08-14 23:55:46-04	\N
219013673 	VELOCITY	2015-02-05 16:49:16-05	\N
219013885 	DORIS VENDELBO	2015-05-03 06:59:30-04	\N
219013964 	HELLE SAJ	2012-08-24 17:58:37-04	\N
219014000 	TORM LOUISE	2012-07-21 00:54:08-04	\N
219014161 	INGER KATHRINE L610	2012-04-02 01:30:45-04	\N
219014162 	HM9 INGER	2012-04-15 11:04:32-04	\N
219014219 	DHIVA	2014-11-04 22:33:10-05	\N
219014278 	STEVNS BATTLER	2018-03-29 08:05:10-04	\N
219014307 	THISTLE	2015-11-02 11:49:14-05	\N
219014374 	FIBIGER	2018-02-18 10:25:10-05	\N
219014399 	SHAMANA	2014-11-26 21:23:52-05	\N
219014434 	VOYAGER	2017-06-15 15:50:24-04	\N
219014436 	SUPPORTER	2017-03-25 04:52:43-04	\N
219014686 	HENNY LILLIAN	2012-05-05 10:59:54-04	\N
219014875 	SVITZER TRYM	2016-11-20 03:40:29-05	\N
219015127 	EGHOLM II	2013-10-23 03:47:12-04	\N
219015153 	HILLY	2014-05-06 01:47:36-04	\N
219015298 	TARNBRIS	2016-06-18 00:40:00-04	\N
219015336 	MAIMUNA	2018-08-28 03:25:37-04	\N
219015359 	NAVICON2	2014-12-31 04:14:30-05	\N
219015362 	WELL-BANK	2013-07-06 11:07:40-04	\N
219015373 	SEATECH	2012-04-25 23:21:06-04	\N
219015403 	SONHO	2018-12-13 06:58:28-05	\N
219015425 	SVITZER THOR	2012-07-10 07:45:38-04	\N
219015579 	LOKE R	2012-05-28 15:39:10-04	\N
219015822 	ADVENTURE	2016-09-24 05:38:40-04	\N
219016004 	L300 LAGUNEN	2013-08-24 09:43:50-04	\N
219016306 	SIMAC 1	2017-01-05 10:48:58-05	\N
219016351 	DELIVERER	2015-07-04 19:57:59-04	\N
219016356 	TRANSPORTER	2013-01-13 12:24:08-05	\N
219016547 	ELEPHANTEN	2015-01-22 03:00:26-05	\N
219016555 	LOLLAND	2012-08-12 09:04:19-04	\N
219016577 	BUILDER	2015-05-25 16:49:21-04	\N
219016615 	MIE KA33	2014-09-19 20:57:34-04	\N
219016663 	BRINGER	2015-05-17 16:30:43-04	\N
219016668 	BALOO	2012-06-15 18:42:51-04	\N
219016683 	MJOELNER-FUR	2017-03-24 10:53:23-04	\N
219016713 	AMALIE	2017-04-26 13:22:20-04	\N
219016764 	STROMBOLI	2013-08-08 01:20:46-04	\N
219016781 	PILOT BOAT SERVUS 4	2015-09-15 17:41:26-04	\N
219016831 	SULEJMA	2015-03-13 07:24:26-04	\N
219016832 	AGERSOE III	2017-11-27 15:47:37-05	\N
219016889 	BAGGERS	2016-01-16 08:58:05-05	\N
219016938 	LANGELAND	2018-03-18 23:05:07-04	\N
219017081 	EXPRESS 1	2013-10-09 07:52:20-04	\N
219017105 	LAURA MUNCK	2018-06-09 23:21:52-04	\N
219017204 	BOLDER	2012-10-11 16:06:06-04	\N
219017214 	ESVAGT AURORA	2017-07-28 22:32:05-04	\N
219017325 	ACCOMPLISHER	2012-03-26 22:37:39-04	\N
219017582 	TENDER1	2016-07-04 21:25:55-04	\N
219017664 	FEGGESUND	2014-11-24 04:22:18-05	\N
219017733 	SKAWLINK4	2012-02-28 03:52:10-05	\N
219017815 	ISEFJORD	2013-12-19 19:25:47-05	\N
219017917 	STRYNOE	2013-03-11 18:43:51-04	\N
219018172 	EXPRESS 2	2014-02-24 09:11:33-05	\N
219018271 	MAERSKMCKINNEYMOLLER	2013-08-07 23:28:16-04	\N
219018314 	DAMSA 1	2017-12-18 09:18:07-05	\N
219018405 	BUTTERFLY S321	2017-04-21 15:45:52-04	\N
219018494 	SAR BIL NR VORUPOR	2016-03-10 21:35:19-05	\N
219018811 	SVITZER BJORN	2018-11-19 00:47:45-05	\N
219018823 	FRU VEBER	2014-11-16 04:59:02-05	\N
219018833 	AURORA	2015-04-18 10:02:47-04	\N
219018865 	SEA MASTER	2012-05-25 08:07:33-04	\N
219019002 	SEA CHALLENGER	2017-08-23 04:13:30-04	\N
219019067 	GAIA NORDIC	2013-02-10 15:01:28-05	\N
219019139 	MARSTAL MAERSK	2012-09-08 16:26:00-04	\N
219019218 	ESVAGT CORNELIA	2014-10-30 03:07:33-04	\N
219019219 	ESVAGT CLAUDINE	2018-02-11 20:37:40-05	\N
219019365 	MATZ MAERSK	2012-06-14 22:44:26-04	\N
219019831 	SKIPPER	2018-07-11 03:33:56-04	\N
219019853 	KEM 2	2013-11-24 05:44:09-05	\N
219019887 	PRINSESSE ISABELLA	2017-04-19 19:54:28-04	\N
219019936 	WIND TRANSPORTER	2016-06-01 22:59:42-04	\N
219019955 	SULE VIKING	2012-07-18 16:26:38-04	\N
219019966 	VIBEKE BRAM	2015-03-06 06:05:27-05	\N
219020325 	BLUE BETRIA	2013-09-29 08:18:19-04	\N
219020578 	BRESTUR HG63	2016-07-19 04:59:44-04	\N
219020688 	RESCUER	2016-12-02 06:04:19-05	\N
219021049 	IDEFIX	2012-03-21 19:42:39-04	\N
219021176 	EMIL E517	2018-08-21 03:17:34-04	\N
219021235 	HAVFISKEN	2018-06-19 08:03:13-04	\N
219021240 	KARIN HOEJ	2018-01-23 06:16:04-05	\N
219021291 	NAVARANA	2013-04-12 10:13:37-04	\N
219021313 	SULEDROTT	2012-11-15 11:58:09-05	\N
219021351 	TORM MARINA	2015-11-16 17:09:05-05	\N
219022000 	HM635 KARBAK	2012-03-22 16:27:32-04	\N
219022062 	SVITZER VIDAR	2012-10-19 01:36:21-04	\N
219022085 	AMIE II	2012-07-10 00:41:21-04	\N
219022165 	HM228 PONDUS	2012-11-20 22:30:13-05	\N
219022256 	DANPILOT ALFA	2014-03-20 02:55:49-04	\N
219022257 	DANPILOT BRAVO	2015-11-19 13:19:16-05	\N
219022265 	SVITZER HERMOD	2017-06-29 07:55:35-04	\N
219022300 	ODIN	2014-07-25 03:53:21-04	\N
219022326 	STORMY	2018-10-19 02:05:23-04	\N
219022342 	MARIE FN 548	2012-07-11 00:22:09-04	\N
219022389 	POSEIDON	2018-01-02 08:24:35-05	\N
219022390 	ARIZONA	2018-12-20 15:45:48-05	\N
219022570 	AQUAMATHILDA	2017-09-23 02:34:58-04	\N
219022903 	EXPRESS 3	2013-09-17 20:56:40-04	\N
219023046 	CARRIER EXPRESS	2012-01-28 17:51:51-05	\N
219023117 	SC NORDIC	2013-06-25 18:30:46-04	\N
219023236 	FRIDA AMALIE L549	2014-12-04 06:13:35-05	\N
219023274 	MILTON HG236	2016-10-10 16:31:50-04	\N
219023313 	SAJONI	2013-06-19 07:47:05-04	\N
219023467 	FONIKS 3	2014-04-10 10:45:51-04	\N
219023531 	ELLEN	2017-09-20 10:04:04-04	\N
219023588 	HM96 JANNI	2014-10-24 12:35:10-04	\N
219023617 	LINDEN	2013-02-16 11:26:59-05	\N
219023641 	IMAGINE	2018-05-31 02:03:29-04	\N
219023738 	EMLI PILEGAARD	2017-11-06 16:14:02-05	\N
219023811 	LAVIE	2012-04-08 03:52:26-04	\N
219023834 	DANPILOT ECHO	2013-04-27 08:54:47-04	\N
219023842 	SVITZER VALE	2013-12-26 05:30:06-05	\N
219023899 	CADIZ	2015-04-22 13:11:54-04	\N
219024000 	IDA-KATRINE S84	2012-03-10 16:08:17-05	\N
219024146 	OLGA	2015-03-05 10:55:25-05	\N
219024176 	DANPILOT GOLF	2015-06-05 20:26:57-04	\N
219024178 	DANPILOT INDIA	2014-10-25 16:26:01-04	\N
219024185 	KANALEN	2017-05-06 21:56:44-04	\N
219024194 	SERVER	2016-10-12 22:49:07-04	\N
219024336 	JEPPE	2018-02-08 18:27:31-05	\N
219024608 	MARTINE	2013-12-05 00:11:09-05	\N
219024675 	DANPILOT JULIET	2013-04-10 21:29:15-04	\N
219024698 	BIRGITTE L349	2016-05-15 06:52:54-04	\N
219024779 	PAMELA P	2017-05-11 12:52:18-04	\N
219024784 	DANPILOT MIKE	2012-03-29 09:44:50-04	\N
219024924 	HM22 CHRISTINE	2013-04-24 00:46:50-04	\N
219025000 	ARCTIC GAS	2014-02-07 23:18:21-05	\N
219026000 	HAMMERSHUS	2015-08-12 22:29:46-04	\N
219028000 	HAPPY CONDOR	2018-04-10 05:36:53-04	\N
219030000 	HDMS LAUGE KOCH	2018-06-05 01:34:08-04	\N
219039000 	MUMBAI MAERSK	2015-02-04 13:01:01-05	\N
219042000 	ESVAGT CAPRI	2013-12-20 20:18:30-05	\N
219045000 	MAASTRICHT MAERSK	2014-08-30 00:41:55-04	\N
219047000 	EURUS EXPRESS	2017-09-21 20:03:46-04	\N
219053000 	VOLGA MAERSK	2012-04-26 12:51:56-04	\N
219056000 	MAERSK EMDEN	2016-04-13 02:52:42-04	\N
219057000 	TINA THERESA	2013-01-20 08:21:00-05	\N
219083000 	TERNVIK	2015-01-18 11:04:30-05	\N
219092000 	ESVAGT MERCATOR	2013-04-22 00:10:48-04	\N
219095000 	CAP SAN ANTONIO	2012-04-01 10:38:23-04	\N
219101000 	CAP SAN MARCO	2017-08-29 14:34:47-04	\N
219102000 	CAP SAN NICOLAS	2015-11-23 22:56:12-05	\N
219106000 	A 357 HANNE DUE	2017-04-16 01:24:04-04	\N
219108000 	S449 MYGGENES	2016-08-30 18:48:15-04	\N
219110000 	VAYENGA MAERSK	2014-02-22 23:36:13-05	\N
219112000 	UASC ZAMZAM	2015-03-28 21:47:35-04	\N
219113000 	ESVAGT INNOVATOR	2013-12-03 15:32:18-05	\N
219114000 	THOR EXPRESS	2013-07-23 14:59:54-04	\N
219115000 	VENTA MAERSK	2018-08-10 02:24:09-04	\N
219118000 	SEAGO BREMERHAVEN	2017-02-27 03:19:13-05	\N
219125000 	LONNY HEDVIG	2018-08-19 06:51:31-04	\N
219128000 	KLEVSTRAND	2013-02-13 08:58:43-05	\N
219138000 	HALLINGSOE L573	2017-02-23 04:45:37-05	\N
219142000 	FOB SWATH 8	2018-05-08 00:30:19-04	\N
219149000 	NORD STINGRAY	2013-04-19 09:20:19-04	\N
219151000 	NORDIC ANN	2014-06-17 09:20:38-04	\N
219154000 	NORDIC MAYA	2018-05-25 16:22:35-04	\N
219159000 	FENJA	2016-07-16 09:47:15-04	\N
219162000 	TESSA KOSAN	2014-11-17 15:49:54-05	\N
219166000 	CONNECTOR EXPRESS	2017-01-09 10:10:30-05	\N
219168000 	STELLA NOVA	2018-03-03 04:46:21-05	\N
219173000 	POVL ANKER	2014-09-12 03:14:40-04	\N
219176000 	HM379 LINGBANK	2013-06-07 15:22:58-04	\N
219188000 	EMMALIE	2014-08-02 05:24:09-04	\N
219189000 	BLUE ALFA	2019-01-17 18:52:16-05	\N
219191000 	DANICA VIOLET	2013-11-13 16:51:58-05	\N
219216000 	SEAGO ANTWERP	2018-04-15 07:12:05-04	\N
219217000 	MAERSK GIRONDE	2012-12-13 08:18:58-05	\N
219226000 	ESVAGT ALPHA	2018-08-18 12:37:59-04	\N
219229000 	MAERSK SALALAH	2012-09-26 09:58:06-04	\N
219230000 	TYCHO BRAHE	2012-06-23 22:07:51-04	\N
219244000 	GLAREA	2012-04-30 16:15:12-04	\N
219248000 	BRO DESIGNER	2017-07-21 02:43:09-04	\N
219252000 	ATLANTIC	2012-08-21 09:33:16-04	\N
219255000 	BRO DELIVERER	2012-01-21 22:35:02-05	\N
219261000 	BRO DISTRIBUTOR	2015-05-23 05:19:09-04	\N
219262000 	GUNNAR SEIDENFADEN	2013-01-08 01:53:16-05	\N
219263000 	GUNNAR THORSON	2013-02-07 08:32:08-05	\N
219275000 	MAERSK CONNECTOR	2013-09-02 16:49:25-04	\N
219285000 	SVITZER ROTA	2012-11-01 05:13:23-04	\N
219292000 	ANGLIA SEAWAYS	2012-09-01 09:12:15-04	\N
219294000 	S158 SARON	2013-05-03 23:03:31-04	\N
219296000 	BLUE AGENA	2018-03-07 03:38:59-05	\N
219302000 	ATLANTIC GAS	2017-03-18 11:12:27-04	\N
219313000 	FREJA R	2012-09-19 13:59:59-04	\N
219335000 	BLUE ANTARES	2014-11-26 23:54:59-05	\N
219339000 	HUNTER	2012-09-07 15:02:02-04	\N
219343000 	L654 PIA GLANZ	2013-01-01 02:06:48-05	\N
219347000 	STAVANGERFJORD	2015-10-04 12:27:13-04	\N
219348000 	BERGENSFJORD	2018-11-25 08:32:17-05	\N
219384000 	DANA	2018-05-31 11:43:37-04	\N
219385000 	BJORNSHOLM	2013-11-11 20:41:51-05	\N
219387000 	NJORD R	2018-04-03 06:58:23-04	\N
219397000 	MAERSK EDGAR	2016-06-15 15:06:16-04	\N
219417000 	GEORG STAGE	2015-08-04 20:30:02-04	\N
219423000 	COPENHAGEN	2017-08-23 13:02:32-04	\N
219429000 	RALIMA	2016-07-28 12:44:57-04	\N
219433000 	SHELF EXPRESS	2018-02-17 03:55:53-05	\N
219435000 	FREESIA  SEAWAYS	2013-08-20 10:50:08-04	\N
219437000 	BEGONIA SEAWAYS	2018-09-05 00:16:04-04	\N
219439000 	CHRISTINA PAULSEN	2017-05-29 17:56:54-04	\N
219440000 	SOUTH ARNE	2017-07-19 21:12:39-04	\N
219441000 	HAMETNER SENIOR L441	2013-12-11 23:35:04-05	\N
219443000 	HG 410 SIGNET	2013-12-18 20:03:21-05	\N
219447000 	ATTENDER	2017-09-28 09:52:37-04	\N
219449000 	ESVAGT SERVER	2017-08-24 15:48:24-04	\N
219455000 	MAGNOLIA SEAWAYS	2018-06-07 05:14:17-04	\N
219458000 	SELANDIA SEAWAYS	2015-04-11 22:59:17-04	\N
219459000 	FOB SWATH 2	2012-01-11 08:38:25-05	\N
219461000 	ARGONAUT	2012-07-07 16:40:10-04	\N
219468000 	ESVAGT CELESTE	2016-10-21 16:16:40-04	\N
219473000 	ANHOUT SWAN	2012-03-24 21:15:50-04	\N
219483000 	FINOLA	2016-11-06 09:55:06-05	\N
219500000 	DANMARK	2017-06-19 22:42:55-04	\N
219501000 	DEN STORE BJOERN	2017-10-01 18:06:36-04	\N
219503000 	L228 SUSANITA	2015-03-12 20:50:26-04	\N
219512000 	NORD GERANIUM	2013-02-04 19:39:10-05	\N
219517000 	DANNEBROG	2012-04-21 03:24:25-04	\N
219523000 	HDMS TRITON	2016-10-06 12:52:40-04	\N
219551000 	ARK GERMANIA	2014-07-02 01:06:23-04	\N
219565000 	ODIN EXPRESS	2012-03-26 16:22:30-04	\N
219571000 	MAERSK EDWARD	2018-04-13 16:37:46-04	\N
219573000 	THOR R	2017-03-10 08:14:32-05	\N
219582000 	ELVIRA BULKER	2015-05-27 15:18:51-04	\N
219590000 	ESVAGT FROUDE	2015-05-09 20:14:51-04	\N
219592000 	CROWN SEAWAYS	2014-02-26 19:37:03-05	\N
219597000 	L56 ANNA LISE	2018-05-05 04:29:27-04	\N
219601000 	MAX	2018-09-24 09:56:44-04	\N
219607000 	LOUISE BULKER	2012-02-22 20:10:10-05	\N
219615000 	WIND SERVER	2013-01-15 06:31:51-05	\N
219620000 	MAREN MAERSK	2017-05-06 11:43:40-04	\N
219622000 	HAMLET	2018-09-25 21:44:30-04	\N
219623000 	NAJA ARCTICA	2013-04-27 07:56:03-04	\N
219624000 	MONA SWAN	2016-09-21 07:28:38-04	\N
219630000 	MARCHEN MAERSK	2014-03-22 06:27:16-04	\N
219632000 	MARIT MAERSK	2017-10-25 23:57:40-04	\N
219633000 	HM289 CYRANO	2014-01-31 22:39:27-05	\N
219650000 	L232 TOVE KYNDE	2012-02-23 15:30:52-05	\N
219655000 	NUKA ARCTICA	2016-12-12 04:23:29-05	\N
219661000 	L126 BERING SEA	2014-03-10 00:35:56-04	\N
219663000 	MINIK ARCTICA	2016-03-19 05:04:48-04	\N
219667000 	IVALO ARCTICA	2013-12-23 14:15:53-05	\N
219672000 	BERING GAS	2014-02-22 20:56:51-05	\N
219675000 	ORATECA	2018-01-08 15:19:12-05	\N
219678000 	VISTULA MAERSK	2018-11-29 15:19:21-05	\N
219683000 	CELTIC GAS	2019-01-29 14:51:46-05	\N
219705000 	EXPRESS 4	2014-03-14 03:10:15-04	\N
219709000 	HM335 FLIPPER	2013-01-31 07:47:32-05	\N
219730000 	VESTLAND	2015-02-01 14:05:52-05	\N
219741000 	THORBJORN	2012-10-15 21:06:20-04	\N
219743000 	MOONLIGHT ND58	2012-05-08 02:31:24-04	\N
219745000 	GITTE HENNING	2016-12-05 08:07:34-05	\N
219751000 	ANNI NIELSEN	2018-07-29 03:05:27-04	\N
219754000 	ULLA LINDBLAD	2018-12-23 16:36:18-05	\N
219762000 	NORTH SEA	2017-03-15 18:35:19-04	\N
219777000 	CAMILLA HOEJ	2015-03-19 21:47:42-04	\N
219793000 	RI457 KIRSTEN FJORD	2013-04-18 08:01:43-04	\N
219796000 	R 218 JUDITH BECHMAN	2016-11-14 05:34:18-05	\N
219798000 	TOENNE	2012-12-16 21:12:17-05	\N
219799000 	KAREN MARGRETHE L423	2016-10-13 00:47:07-04	\N
219801000 	FN 462 JEANNE	2015-05-09 01:23:32-04	\N
219805000 	TERNFJORD	2019-01-07 07:15:02-05	\N
219812000 	NOTUS EXPRESS	2018-11-19 06:37:32-05	\N
219822000 	MAERSK MASTER	2016-05-28 09:26:42-04	\N
219825000 	BRITANNIA SEAWAYS	2017-06-25 02:53:00-04	\N
219826000 	ESVAGT OBSERVER	2014-01-23 04:07:29-05	\N
219829000 	BESTLA	2018-01-27 19:00:59-05	\N
219831000 	HM447 ELLY KYNDE	2012-09-27 19:56:16-04	\N
219849000 	CALORIUS	2016-10-22 12:32:44-04	\N
219853000 	L757 AALTJE POSTMA	2014-04-26 02:16:22-04	\N
219872000 	L 625 MARITANA	2017-11-14 19:05:51-05	\N
219884000 	NORA MAERSK	2012-11-19 08:31:09-05	\N
219890000 	VELA - DENMARK	2017-05-25 05:21:59-04	\N
219904000 	FN 81 BETINA KRUSE	2012-06-04 23:04:10-04	\N
219923000 	CABLE ONE	2012-04-22 16:30:00-04	\N
219939000 	VT PROTON	2012-02-09 13:45:11-05	\N
219944000 	BONITO	2013-06-14 12:07:49-04	\N
219945000 	PEARL SEAWAYS	2017-01-25 18:36:44-05	\N
219948000 	CASILO S386	2016-10-28 11:55:41-04	\N
219956000 	BORKUMRIF	2014-03-07 10:56:35-05	\N
219963000 	MODI R	2013-09-25 19:07:49-04	\N
219964000 	TRUD R	2012-09-03 17:23:34-04	\N
220002000 	ELSE MARIE THERESA	2015-10-10 07:15:17-04	\N
220012000 	NORDSKOV AS238	2018-06-22 07:35:07-04	\N
220043000 	HM120 ASTORIA	2017-07-29 01:47:38-04	\N
220051000 	HM423 FRU MIDDELBOE	2016-02-29 08:48:46-05	\N
220059000 	CHARLOTTE MAERSK	2015-08-25 07:49:26-04	\N
220071000 	L66 MARIA BORK	2014-06-01 22:42:43-04	\N
220075000 	BRUTUS	2015-03-17 21:49:21-04	\N
220088000 	FN 426 KJOLPEN	2014-11-25 13:26:10-05	\N
220107000 	MAERSK INSPIRER	2013-03-07 18:43:34-05	\N
220109000 	L120 LINETTE	2018-10-12 23:23:23-04	\N
220118000 	L620 AUSTRIA	2015-02-26 22:32:48-05	\N
220124000 	WESTSUND	2014-07-14 06:28:55-04	\N
220127000 	FN 261 STJERNE	2012-12-05 23:41:07-05	\N
220137000 	NORDLAND	2014-11-09 06:36:56-05	\N
220142000 	FN 321 LINE DALGAARD	2016-05-28 15:20:35-04	\N
220147000 	BITTEN THERESA	2015-09-30 02:41:54-04	\N
220151000 	KAREN NIELSEN	2013-10-20 12:03:25-04	\N
220187000 	AXEL MAERSK	2013-05-01 06:38:01-04	\N
220192000 	ESVAGT SIGMA	2013-09-30 19:06:24-04	\N
220198000 	OLGA MAERSK	2013-12-17 06:04:30-05	\N
220206000 	ARNOLD MAERSK	2012-01-05 05:44:43-05	\N
220223000 	PETUNIA SEAWAYS	2017-01-18 06:37:43-05	\N
220229000 	FLORES MANDIRI	2013-05-22 18:54:14-04	\N
220234000 	NORDIC NELLY	2015-07-04 23:03:43-04	\N
220235000 	NORDIC NORA	2014-01-18 05:16:05-05	\N
220236000 	NORDIC NADJA	2014-12-26 07:16:54-05	\N
220253000 	PRIMULA SEAWAYS	2016-08-12 19:46:23-04	\N
220256000 	CHARLOTTE P  FN 131	2014-08-22 22:26:04-04	\N
220257000 	R_222 BORNOE	2016-01-30 04:24:24-05	\N
220258000 	TORM ISMINI	2014-07-27 12:14:30-04	\N
220264000 	SOFIE THERESA	2015-02-17 17:46:13-05	\N
220273000 	DANPILOT PLUTO	2018-11-06 11:37:40-05	\N
220279000 	S42 LISTA	2013-11-23 09:46:50-05	\N
220281000 	ESVAGT CORONA	2018-01-30 05:58:47-05	\N
220282000 	ESVAGT CAPELLA	2012-08-07 06:44:22-04	\N
220284000 	SUECIA SEAWAYS	2018-01-19 22:45:25-05	\N
220294000 	BLUE CASTOR	2012-04-30 13:28:51-04	\N
220295000 	LUANDA HG 15	2015-12-15 11:45:06-05	\N
220298000 	NORDIC MARIANNE	2013-04-21 13:14:20-04	\N
220307000 	ANDREA KLITBO FN226	2018-02-10 02:22:44-05	\N
220323000 	SLESVIG	2014-12-06 16:23:19-05	\N
220329000 	ELIN	2017-08-19 13:38:00-04	\N
220333000 	HV99 ANNI DORTHE	2013-11-28 18:10:56-05	\N
220334000 	M JERUP	2017-11-25 00:32:40-05	\N
220339000 	R 60 TASMANIA	2016-05-20 16:33:21-04	\N
220343000 	SOFIE LYKKE	2019-01-14 07:18:06-05	\N
220364000 	MARY ARCTICA	2012-07-28 22:47:34-04	\N
220413000 	GUNVOR MAERSK	2016-07-13 17:59:32-04	\N
220414000 	GJERTRUD MAERSK	2014-01-18 18:18:56-05	\N
220428000 	KNUD RASMUSSEN	2012-10-16 11:05:15-04	\N
220431000 	DNK NAVY PATROL P520	2018-07-29 20:17:16-04	\N
220434000 	DNK NAVY PATROL P523	2013-07-20 08:27:21-04	\N
220435000 	DNK NAVY PATROL P524	2016-11-07 19:50:25-05	\N
220436000 	DNK NAVY PATROL P525	2013-03-28 00:31:25-04	\N
220439000 	ALBA ROUSING	2014-06-20 00:37:06-04	\N
220442000 	ORAHOLM	2014-04-16 13:04:32-04	\N
220446000 	ESVAGT CONNECTOR	2017-09-29 16:00:16-04	\N
220449000 	KING SEAWAYS	2014-04-09 04:18:43-04	\N
220461000 	ISAFOLD	2014-04-21 06:11:35-04	\N
220464000 	FICARIA SEAWAYS	2015-12-02 23:55:25-05	\N
220474000 	VINA	2015-01-20 10:59:03-05	\N
220476000 	FRIGGA	2015-01-23 15:13:24-05	\N
220477000 	ELEONORA MAERSK	2015-02-18 02:39:13-05	\N
220478000 	ESTELLE MAERSK	2015-07-20 12:43:11-04	\N
220482000 	CETON	2014-12-26 06:22:06-05	\N
220486000 	SVITZER RAN	2018-03-01 00:06:30-05	\N
220489000 	PRINCESS SEAWAYS	2018-04-20 07:32:19-04	\N
220495000 	BRO NIBE	2012-06-08 21:28:36-04	\N
220496000 	EVELYN MAERSK	2013-07-30 11:13:40-04	\N
220497000 	EBBA MAERSK	2013-08-27 05:25:34-04	\N
220498000 	BRO NORDBY	2016-12-30 10:32:53-05	\N
220502000 	BRO NUUK	2015-10-25 16:57:24-04	\N
220504000 	BRO NISSUM	2013-10-17 02:14:56-04	\N
220507000 	ST. ANTHONY	2018-02-23 17:07:54-05	\N
220514000 	ORASUND	2017-08-09 10:08:38-04	\N
220520000 	WIND	2017-11-04 18:11:41-04	\N
220521000 	TORM CECILIE	2015-12-25 23:56:46-05	\N
220545000 	SELANDIA SWAN	2016-03-17 14:15:33-04	\N
220546000 	JUTLANDIA SWAN	2016-05-28 11:17:28-04	\N
220552000 	TORM LOIRE	2015-07-06 04:09:59-04	\N
220555000 	TORM THAMES	2018-06-03 09:21:10-04	\N
220556000 	TORM TEVERE	2015-07-20 10:15:53-04	\N
220558000 	TORM SAN JACINTO	2018-10-31 07:33:59-04	\N
220560000 	TORM REbb2762AN	2015-11-24 21:20:08-05	\N
220567000 	TORM GARONNE	2016-10-31 04:19:26-04	\N
220579000 	MAERSK LIFTER	2014-11-20 13:13:26-05	\N
220581000 	MAERSK LANCER	2019-02-19 16:32:40-05	\N
220588000 	MAERSK TRACKER	2013-10-24 15:24:03-04	\N
220589000 	MAERSK TRANSPORTER	2012-03-30 15:38:37-04	\N
220595000 	GUNHILDE MAERSK	2016-03-23 16:02:31-04	\N
220598000 	GERDA MAERSK	2013-02-13 18:57:49-05	\N
220609000 	AALBORG	2013-04-21 02:49:36-04	\N
220612000 	ESVAGT NJORD	2015-11-03 11:55:29-05	\N
220614000 	COPENHAGEN	2013-02-18 14:49:41-05	\N
220616000 	THRONDER	2015-06-07 07:23:50-04	\N
220619000 	SAMSOE	2018-03-02 22:35:21-05	\N
220620000 	TORM LENE	2012-11-23 17:33:16-05	\N
220626000 	DETECTER	2016-11-23 11:48:06-05	\N
220632000 	ESVAGT BERGEN	2016-05-15 14:11:16-04	\N
220633000 	ESVAGT STAVANGER	2013-08-08 12:38:10-04	\N
220634000 	TORM LILLY	2013-07-22 21:36:21-04	\N
220638000 	TORM GYDA	2017-06-11 01:54:24-04	\N
220645000 	TORM GUDRUN	2017-09-02 13:14:25-04	\N
222000097 	MARVIN	2017-06-10 16:32:14-04	\N
222222236 	IHC 425	2018-05-12 19:27:25-04	\N
224000240 	ZERUKO ERREGINA	2017-04-22 01:21:36-04	\N
224005540 	F/V ARRETXU BERRIA	2014-06-06 23:01:14-04	\N
224005590 	F/V ANDREKALA BERRIA	2017-08-04 19:37:29-04	\N
224005890 	SOLLER CAT	2015-02-09 13:09:03-05	\N
224006050 	LA BARCA SAMBA	2015-05-24 14:42:54-04	\N
224006950 	ES LLEVANT	2014-09-24 19:45:45-04	\N
224007820 	GAZTELUGATXEKO DONIE	2017-05-09 20:11:04-04	\N
224008000 	CASTAVI JET	2015-11-11 13:56:33-05	\N
224022250 	CAP MENORCA	2014-10-21 03:57:06-04	\N
224022730 	ROSA MARIA JUAREZ	2015-04-13 10:03:39-04	\N
224023970 	DOMINGO	2014-01-28 21:29:30-05	\N
224025970 	JOSE Y DOLORES	2013-09-15 10:45:44-04	\N
224026000 	CALA GULLO	2014-03-13 20:39:06-04	\N
224029000 	BOUZAS	2014-05-30 00:56:11-04	\N
224042130 	PESCALEMA	2014-09-06 20:44:38-04	\N
224046000 	VB RISBAN	2016-01-03 05:13:48-05	\N
224046670 	CABO DO MUNDO	2016-10-16 04:25:10-04	\N
224052970 	SUKARI PRIMERO	2014-02-19 22:33:22-05	\N
224063490 	CARILA CINC	2013-02-03 06:41:36-05	\N
224063980 	SALVADOR DALI	2014-07-01 22:46:23-04	\N
224069850 	TUKU TUKU	2015-03-02 04:34:01-05	\N
224070940 	REGINA ONCE	2014-11-30 12:02:09-05	\N
224073390 	F/V GAZTELUGATXE	2013-12-24 02:22:24-05	\N
224074180 	CIMA DE ORO	2013-04-10 04:12:22-04	\N
224074980 	PEIX BLAU	2018-12-01 15:05:37-05	\N
224076440 	CORVO	2017-04-17 04:40:25-04	\N
224080370 	GURE LEIRE	2014-12-26 03:17:36-05	\N
224082990 	ALTHAIA	2016-05-31 09:22:26-04	\N
224087530 	F/V AKETXE	2018-03-01 17:00:30-05	\N
224090420 	ESC. NAUTIC TENERIFE	2014-05-06 06:01:12-04	\N
224091770 	JM	2014-01-06 22:27:53-05	\N
224095240 	FIDEL I ROSITA	2013-10-18 06:17:20-04	\N
224095360 	SANT GENIS	2014-10-08 21:37:20-04	\N
224097430 	IBAIZABAL SEIS	2013-08-29 20:35:53-04	\N
224100160 	LOS PICONES	2012-03-21 11:03:22-04	\N
224105000 	F/V ANTIUKO AMA	2018-06-14 19:53:06-04	\N
224106140 	LA NUEVA FURIA	2017-09-23 17:36:09-04	\N
224106820 	BELLA LOLA CUATRO	2015-08-13 13:11:45-04	\N
224107290 	SALIMAR CUATRO	2012-11-17 17:29:28-05	\N
224110484 	OPHEN MAVERICK	2012-03-14 03:25:40-04	\N
224128000 	VB XALOC	2018-09-29 22:43:10-04	\N
224140853 	EMOTIONS	2015-06-24 16:00:20-04	\N
224142890 	SPABUNKER TREINTA	2016-05-11 16:06:14-04	\N
224145000 	VOLCAN DE TIMANFAYA	2016-10-04 20:20:37-04	\N
224151990 	LORENZO Y FINA	2012-02-28 10:44:22-05	\N
224152140 	ANSIA	2014-02-18 03:35:04-05	\N
224155370 	CONSTANTA	2017-05-13 20:42:04-04	\N
224157180 	MATADOR	2014-05-28 04:05:15-04	\N
224157350 	RAMON CASAS	2016-08-12 05:54:09-04	\N
224161160 	VB FURIA	2013-01-28 20:14:00-05	\N
224166160 	TAFIRA	2012-02-04 07:16:29-05	\N
224181000 	GURE KANTABRIKO	2016-11-12 20:17:55-05	\N
224183670 	MARANSA	2014-01-21 19:34:24-05	\N
224184000 	GUARDAMAR TALIA	2015-07-15 02:02:52-04	\N
224193750 	CAP DE QUERS	2012-08-13 19:50:25-04	\N
224204370 	AMBUS	2012-01-07 02:03:51-05	\N
224208000 	VB XEREA	2012-04-05 07:18:42-04	\N
224220140 	SANT PAU	2019-01-05 15:31:04-05	\N
224229670 	ECOLOGICO SEGUNDO	2018-12-15 06:39:21-05	\N
224230520 	BUTELLA	2014-02-04 15:35:45-05	\N
224232440 	CALUA	2015-05-27 14:54:45-04	\N
224241680 	ARI	2018-06-26 08:17:52-04	\N
224247000 	RAMON LLULL	2012-06-14 08:37:13-04	\N
224257190 	BLUE CACAO	2017-12-04 06:09:22-05	\N
224264000 	NIXE	2015-12-27 23:29:41-05	\N
224265130 	BLANCA S	2016-12-23 09:11:21-05	\N
224271150 	PILOT BOAT 1	2017-03-01 21:01:13-05	\N
224271630 	MONTBRIO	2013-04-13 09:49:41-04	\N
224289000 	VB-CANARIAS	2012-03-31 21:34:39-04	\N
224294530 	SANDOZ	2016-09-27 07:51:36-04	\N
224297000 	OMVAC CINCO	2012-11-22 15:45:54-05	\N
224304570 	SIRIUS BCN PILOTS	2013-06-08 10:12:10-04	\N
224315000 	F/V KAXU	2017-08-16 22:58:43-04	\N
224320930 	NIRVANA FORMENTERA	2018-08-10 05:17:49-04	\N
224323980 	PILOT BOAT 2	2013-10-14 09:53:40-04	\N
224324620 	CABRERA DOS	2014-11-23 21:18:25-05	\N
224333460 	EL CAENA	2018-04-26 19:34:28-04	\N
224335760 	COLAMBRE	2014-08-31 13:49:39-04	\N
224347930 	ROS	2015-01-11 09:21:20-05	\N
224359000 	ALMUDAINA DOS	2017-10-04 11:49:48-04	\N
224365000 	GUANARTEME	2017-12-24 03:56:09-05	\N
224376000 	ANZORAS	2015-02-03 21:36:02-05	\N
224381550 	R CLAUDIA	2016-02-09 12:57:18-05	\N
224395420 	CAT IBIZA STAR	2015-10-29 04:33:07-04	\N
224402000 	ABEL MATUTES	2017-11-26 16:10:47-05	\N
224404000 	GURE GASKUNA	2016-05-01 07:14:26-04	\N
224431320 	SERENIDAD	2018-12-08 04:47:03-05	\N
224436000 	BARCELONA KNUTSEN	2016-07-14 20:59:10-04	\N
224447000 	MENCEY	2012-10-14 17:21:20-04	\N
224451000 	RIOJA KNUTSEN	2018-12-19 16:43:07-05	\N
224474000 	VB TENERIFE	2018-12-14 07:45:30-05	\N
224478190 	IBAIZABAL SIETE	2013-08-26 09:57:16-04	\N
224482000 	GALICIA SPIRIT	2013-06-26 20:00:56-04	\N
224493000 	SAR MESANA	2012-05-12 16:57:32-04	\N
224494000 	VB BALEAR	2013-07-08 15:06:42-04	\N
224499000 	SUAR VIGO	2014-10-26 21:18:33-04	\N
224508160 	ROSALES CINCO	2014-08-28 12:46:46-04	\N
224511000 	RAMON MARGALEF	2017-11-14 11:00:53-05	\N
224513000 	OMARSUB TRES	2019-01-08 22:43:39-05	\N
224522000 	PUNTA SALINAS	2016-04-09 21:20:21-04	\N
224537350 	ICARO CINCO	2013-03-23 08:12:09-04	\N
224542000 	OMVACSIETE	2015-01-14 02:57:34-05	\N
224569790 	MONTCLAR	2015-06-17 18:25:32-04	\N
224569880 	MONTALT	2018-07-24 14:39:26-04	\N
224598000 	FRANCISCO P NAVARRO	2018-04-30 02:43:13-04	\N
224606000 	BILBAO KNUTSEN	2017-05-22 02:31:25-04	\N
224611000 	COSTA LA LUZ	2018-11-12 08:47:50-05	\N
224612680 	PILOT 1	2014-09-03 07:44:24-04	\N
224631000 	MARIA DE MAEZTU	2016-09-30 03:24:39-04	\N
224634000 	MARTA MATA	2012-06-24 22:47:36-04	\N
224637000 	MARTIN I SOLER	2012-12-23 17:57:43-05	\N
224640870 	IBAIZABAL OCHO	2016-07-21 06:09:37-04	\N
224655000 	ENCOFRADOR	2012-03-26 04:04:41-04	\N
224717000 	LODAIRO	2012-12-30 08:35:29-05	\N
224745000 	ALBONIGA	2016-05-30 14:52:04-04	\N
224746000 	CALA SEQUER	2016-12-29 20:49:33-05	\N
224768000 	BONANZA EXPRESS	2012-08-12 04:58:25-04	\N
224772000 	OPEN ARMS	2015-11-04 20:20:41-05	\N
224802000 	MANDEO	2016-07-12 08:04:48-04	\N
224824000 	GALDAMES	2012-01-07 01:44:52-05	\N
224826000 	GATIKA	2017-01-16 05:53:02-05	\N
224829000 	IBAIZABAL CATORCE	2017-08-09 07:22:32-04	\N
224840000 	BENCOMO EXPRESS	2016-04-13 18:23:23-04	\N
224859000 	CIENTIFICO	2019-01-09 17:53:53-05	\N
224895000 	NUEVO QUIMAR	2016-04-12 21:21:03-04	\N
224925000 	OMVAC DOCE	2013-08-27 09:00:34-04	\N
224939000 	SIEMPRE BALUARTE	2012-11-01 10:20:06-04	\N
224940340 	EMV DOCE	2015-05-01 21:05:39-04	\N
224942860 	PILOT 1 PUNTA LIMA	2016-11-08 19:53:42-05	\N
224957000 	VOLCAN DE TAMADABA	2014-09-19 17:20:41-04	\N
224985000 	HISPANIA SPIRIT	2018-08-28 17:30:44-04	\N
224994000 	BAHIA TRES	2017-11-24 14:48:50-05	\N
225317000 	VOLCAN DE TENEGUIA	2013-03-04 21:31:08-05	\N
225339000 	HERBEIRA	2015-10-11 18:55:29-04	\N
225342000 	ILLETAS JET	2014-05-08 19:51:10-04	\N
225344000 	BETANCURIA EXPRESS	2018-05-17 09:30:11-04	\N
225361000 	F/V MATALENAS 2	2019-01-08 16:15:34-05	\N
225363000 	SATO GALICIA	2012-01-16 11:41:50-05	\N
225371000 	MUROS	2017-02-17 14:42:47-05	\N
225386000 	OMVAC OCHO	2012-01-28 23:16:58-05	\N
225388000 	FINITA R	2012-09-21 19:16:17-04	\N
225392000 	MAVERICK DOS	2012-05-25 18:56:12-04	\N
225394000 	WILLY-T	2019-01-18 07:15:34-05	\N
225397000 	MORAIME	2012-02-28 09:17:00-05	\N
225415000 	IBAIZABAL ONCE	2013-12-30 21:37:49-05	\N
225416000 	VOLCAN DEL TEIDE	2018-11-23 03:04:50-05	\N
225423000 	VOLCAN DE TINAMAR	2016-03-11 06:20:14-05	\N
225424000 	CRISTINA MASAVEU	2016-02-09 03:29:25-05	\N
225444000 	POSIDONIA	2014-10-26 03:57:08-04	\N
225457000 	GONZALO S	2015-11-04 20:38:38-05	\N
225488000 	AIRES DE FORMENTERA	2017-08-30 04:25:21-04	\N
225924330 	RIO JANDULA	2015-01-27 01:50:54-05	\N
225950380 	SOCIB	2013-06-02 14:59:07-04	\N
225969770 	PILOTS AMOSUCAS P	2014-09-19 05:59:04-04	\N
225977720 	TRICK	2016-03-01 03:47:30-05	\N
225981136 	PORTALS VELLS	2015-05-12 18:19:46-04	\N
225981442 	FLAMENCA	2018-01-30 16:14:00-05	\N
225981613 	EL BAILE I	2018-08-02 23:09:30-04	\N
225982109 	BULBIN	2014-08-03 10:26:25-04	\N
225982280 	ALANNAH	2013-04-23 00:17:56-04	\N
225982587 	BLUE MARINE	2018-03-01 01:34:28-05	\N
225984205 	BIG GANI	2013-03-21 09:02:51-04	\N
225984257 	MIKO	2016-08-21 16:21:46-04	\N
225984551 	POTI POTI	2013-03-03 07:16:56-05	\N
225986970 	ASTREO	2012-03-15 11:06:10-04	\N
225987433 	MARA	2018-02-26 22:48:09-05	\N
225987485 	EMILIA	2014-07-11 23:38:07-04	\N
225987686 	BENCHI EXPRESS	2016-09-19 05:42:04-04	\N
225987714 	PEPA	2015-10-23 12:35:52-04	\N
225988267 	SATCHMO	2014-06-30 23:51:38-04	\N
225988346 	JORGE JUAN S	2018-01-18 12:09:17-05	\N
225989381 	PISCIS	2013-10-11 23:12:10-04	\N
225990035 	NEREU	2016-11-30 03:04:15-05	\N
226000000 	ASTERION	2017-10-01 07:58:00-04	\N
226000050 	REVOLUTION	2014-09-07 06:59:03-04	\N
226000080 	MURMURE DES FLOTS	2016-09-17 13:31:56-04	\N
226000240 	REYNALD	2017-08-15 14:41:48-04	\N
226000270 	RAINBOW	2013-07-14 17:52:12-04	\N
226000560 	LUCKY WAY	2014-01-22 13:45:22-05	\N
226000590 	ODYSSEUS	2015-06-27 09:16:53-04	\N
226000890 	BEN-DOR	2013-01-10 22:24:56-05	\N
226001270 	BORNEO	2014-05-12 18:41:10-04	\N
226001280 	WESTPHALIE	2012-05-01 23:12:57-04	\N
226001370 	ACONIT	2013-03-07 01:36:43-05	\N
226001590 	RADAR	2014-10-09 02:06:45-04	\N
226001830 	MARSOUIN	2012-08-28 11:59:35-04	\N
226002260 	BISMARCK	2012-11-25 04:32:00-05	\N
226002270 	VAUBAN	2014-06-13 23:11:25-04	\N
226002380 	MAGNUM	2014-06-30 22:02:12-04	\N
226002480 	HEBE	2018-06-24 12:17:33-04	\N
226002520 	MASCARET	2017-05-21 05:28:31-04	\N
226002580 	INGRID	2012-07-07 16:37:49-04	\N
226002630 	AMISTA	2012-05-12 15:33:00-04	\N
226002690 	MARPOL COLLECTOR 1	2016-08-08 15:43:04-04	\N
226002760 	INTRAITABLE	2018-10-11 02:53:52-04	\N
226002780 	JEAN BART	2014-05-14 16:56:04-04	\N
226002790 	BIARRITZ	2016-08-10 05:37:02-04	\N
226002850 	SOLANA	2012-03-18 09:02:26-04	\N
226002910 	THEMIS	2016-02-17 12:41:07-05	\N
226002980 	INVINCIBLE	2015-07-02 22:59:57-04	\N
226002990 	MEDARD	2012-03-25 03:52:22-04	\N
226003010 	CLOVIS	2014-10-14 23:19:38-04	\N
226003050 	PUEBLO	2018-11-08 22:12:42-05	\N
226003090 	TITANIC	2013-07-18 11:25:42-04	\N
226003130 	LOYAUTE	2012-11-10 14:14:23-05	\N
226003220 	LYP VER	2014-09-08 08:54:18-04	\N
226003240 	VAQUEROS	2017-07-25 05:45:30-04	\N
226003390 	DAUPHIN	2016-11-29 08:20:26-05	\N
226003720 	BRONX	2019-01-22 03:07:52-05	\N
226003730 	SELODIE	2015-11-28 02:12:00-05	\N
226003840 	MICHELANGELO	2014-01-18 23:48:11-05	\N
226004030 	THOR	2018-02-20 01:39:16-05	\N
226004180 	MAGISTER	2017-06-06 20:20:05-04	\N
226004920 	SEBASTIEN L	2012-10-11 05:43:26-04	\N
226004980 	LUCMAR	2016-05-28 20:12:20-04	\N
226005170 	HASTA LA VISTA BABY	2015-09-15 16:50:40-04	\N
226005180 	ALAMO	2013-12-30 20:45:16-05	\N
226005190 	EROS	2016-03-02 15:59:16-05	\N
226005240 	LAVERA	2012-07-19 07:49:16-04	\N
226005350 	PHIMARC	2015-10-28 07:01:56-04	\N
226005390 	MAGELLAN	2012-04-17 10:09:17-04	\N
226005620 	PALYSANDO	2015-11-29 23:14:37-05	\N
226005720 	OURAL	2014-12-23 16:40:00-05	\N
226005740 	CETUS	2016-11-19 01:21:08-05	\N
226005840 	ZEELAND>	2014-06-10 12:01:01-04	\N
226006080 	PAQUEBOT	2013-10-20 12:52:53-04	\N
226006180 	AQUILON	2014-08-22 04:14:03-04	\N
226006240 	VER-LYP	2018-10-13 21:35:58-04	\N
226006420 	BENGUELA	2017-01-05 23:19:30-05	\N
226006690 	DUPLEIX	2018-07-13 06:26:02-04	\N
226006730 	BAC 15	2018-06-03 04:56:07-04	\N
226006740 	BAC 16	2012-11-02 16:30:23-04	\N
226006750 	BAC 17	2015-07-28 10:48:17-04	\N
226006760 	BAC 18	2018-01-17 03:40:35-05	\N
226006780 	BAC 20	2018-11-06 16:11:18-05	\N
226006790 	BAC 22	2017-09-10 00:33:56-04	\N
226006810 	ARTOIS	2013-08-06 21:20:41-04	\N
226006850 	VERT GALANT	2018-06-10 08:50:19-04	\N
226006860 	LE GRAND PAVOIS	2017-06-28 08:17:29-04	\N
226006890 	PUEBLA	2016-10-20 21:49:44-04	\N
226007130 	EL PASO	2013-09-02 13:02:46-04	\N
226007150 	LE TOSCA	2014-09-23 14:01:55-04	\N
226007280 	SERENITAS	2015-12-03 01:29:58-05	\N
226007640 	BELOUGA	2015-04-20 01:19:20-04	\N
226008660 	LITTORAL	2018-08-29 05:44:13-04	\N
226008840 	PARIS IENA	2018-05-12 20:17:59-04	\N
226008850 	TENNESSEE	2013-11-06 09:30:14-05	\N
226008930 	RIVER PALACE	2014-04-27 13:23:44-04	\N
226008940 	MISSISSIPPI	2015-12-19 02:13:23-05	\N
226009330 	LA GALIOTE	2012-07-18 11:16:11-04	\N
226009340 	LA GALERE	2014-09-22 04:59:18-04	\N
226009350 	LE MULET COUREAU	2018-08-14 09:22:29-04	\N
226009390 	JEAN BRUEL	2019-02-01 21:54:24-05	\N
226009410 	LA PATACHE	2016-03-22 07:51:23-04	\N
226009430 	JS MOUCHE	2018-07-23 03:39:03-04	\N
226009460 	SAPHIR	2016-05-22 14:01:56-04	\N
226009620 	MACKENZIE	2018-07-17 00:37:23-04	\N
226009650 	IRINA	2015-08-01 14:54:58-04	\N
226009690 	LE TEXEL	2012-04-12 06:35:13-04	\N
226010220 	RAYMONDE	2016-12-08 04:12:30-05	\N
226010550 	THIERRY M	2016-05-01 10:27:59-04	\N
226010880 	LOIRE PRINCESSE	2013-10-03 15:27:31-04	\N
226011320 	ESCAPADE	2015-12-18 12:40:51-05	\N
226012010 	NIRVANA	2012-05-31 14:16:17-04	\N
226012250 	MS ALABAMA	2016-07-07 19:15:16-04	\N
226012260 	SUNISHA	2016-04-20 00:26:56-04	\N
226012360 	LAS VEGAS	2014-12-11 15:08:51-05	\N
226012560 	SAMPZON	2017-03-16 02:02:24-04	\N
226012910 	DORADO	2015-07-11 17:36:33-04	\N
226013560 	BON VOYAGE	2013-10-27 11:01:42-04	\N
226013740 	RASE-MOTTE	2015-03-17 16:10:16-04	\N
226014110 	ORCHIDEE	2015-04-28 20:35:18-04	\N
226014170 	EXCELSIOR	2015-05-15 07:48:04-04	\N
226084000 	F/V KADEGE	2014-01-09 05:53:16-05	\N
226105000 	F/V ROSELEND	2013-03-14 07:50:16-04	\N
226183000 	F/V NICOLAS JEREMY	2012-05-16 17:49:19-04	\N
226202000 	F/V L EUROPE	2017-06-28 10:19:41-04	\N
226230000 	F/V L ARC EN CIEL I	2017-12-02 09:21:42-05	\N
226263000 	ABEILLE BOURBON	2016-01-27 06:21:48-05	\N
226265000 	ABEILLE LIBERTE	2014-09-21 15:35:28-04	\N
226280000 	JEAN NICOLI	2018-03-29 11:54:38-04	\N
226290000 	RAYMOND CROZE	2016-11-22 04:37:06-05	\N
226302000 	ST SOLENE	2017-03-25 17:17:51-04	\N
226325000 	CMA CGM MOZART	2012-03-29 14:56:05-04	\N
226326000 	CMACGM FORT ST LOUIS	2018-02-04 00:51:33-05	\N
226327000 	CMA CGM ROSSINI	2014-10-21 23:57:50-04	\N
226328000 	CMA CGM F. ST PIERRE	2016-03-24 15:35:32-04	\N
226332000 	CS ILE DE BATZ	2018-11-30 12:59:54-05	\N
226334000 	HALTENBANK PAIRTRAWL	2012-08-24 03:13:21-04	\N
226338000 	BAIE DE SEINE	2012-04-10 13:04:07-04	\N
226340000 	SANDVIKEN	2012-02-20 12:57:37-05	\N
226346000 	VSG MISTRAL	2018-03-07 13:24:28-05	\N
226863770 	MMO8	2013-05-03 21:20:50-04	\N
226916000 	JULES	2017-02-26 09:12:03-05	\N
227000000 	FRENCH WARSHIP	2014-01-02 11:24:09-05	\N
227002960 	GUERANDE	2012-04-18 01:33:42-04	\N
227003050 	ENEZ EUSSA 3	2019-01-21 16:27:31-05	\N
227003190 	MILOUIN	2016-10-20 01:28:07-04	\N
227003850 	COTES DE BRETAGNE	2018-04-01 23:37:51-04	\N
227004260 	LYNX	2013-05-19 15:05:19-04	\N
227004510 	BELLE ILE	2015-08-03 06:01:47-04	\N
227004660 	VB POULIGUEN	2017-04-04 12:50:19-04	\N
227005260 	VB OLERON	2014-10-17 17:22:02-04	\N
227005270 	VB SAINT MARC	2018-03-22 19:35:29-04	\N
227005280 	VB COGNAC	2012-01-22 04:28:15-05	\N
227006040 	LA GUIFETTE	2014-12-31 16:37:36-05	\N
227006650 	MISTRAL 7	2017-11-15 19:18:30-05	\N
227006690 	AVENTUREUX	2015-06-02 10:06:40-04	\N
227006720 	FAROUCHE	2012-01-22 15:40:35-05	\N
227006730 	TRIOMPHANT	2016-02-25 10:44:36-05	\N
227006760 	VB 21 FECAMP	2012-04-29 06:09:10-04	\N
227006770 	VB DEAUVILLE [26]	2012-06-08 09:02:59-04	\N
227006780 	VB ST ADRESSE (25)	2019-01-30 02:02:18-05	\N
227006810 	VB 3 LA HEVE	2019-02-11 18:55:48-05	\N
227009750 	FORT BOYARD	2012-12-18 08:30:19-05	\N
227009790 	OCEANITE	2012-01-21 03:56:39-05	\N
227011050 	TRIJ^TJE	2014-07-06 13:32:05-04	\N
227013280 	AND CO	2016-04-06 23:36:23-04	\N
227016900 	MARSEILLAIS 6	2014-02-10 03:32:23-05	\N
227017200 	CHAMBON BORA	2013-12-28 12:15:22-05	\N
227019500 	SCORFF	2013-02-16 18:35:50-05	\N
227022800 	COTE DES DUNES	2016-05-09 09:07:32-04	\N
227023100 	MONT SAINT MICHEL	2013-02-23 19:30:07-05	\N
227023200 	VB GASCOGNE[22]	2014-05-20 08:47:11-04	\N
227023300 	DANIEL LAVAL	2012-08-12 22:33:16-04	\N
227023430 	VIVALDI	2016-08-12 20:27:57-04	\N
227030190 	TADORNE	2015-09-23 22:07:22-04	\N
227035360 	SMACK	2017-01-04 07:52:49-05	\N
227062830 	DUNCAN	2014-06-04 09:51:32-04	\N
227069110 	BAC 23	2013-11-01 09:15:38-04	\N
227070030 	CYBELE 17	2014-12-16 11:17:27-05	\N
227071210 	MOJITO	2015-02-27 00:52:03-05	\N
227072970 	BON SECOURS 5	2015-09-17 17:48:53-04	\N
227072990 	BON SECOURS 7	2012-04-27 09:40:02-04	\N
227075840 	MADURA	2018-12-24 02:08:05-05	\N
227083590 	METEOR	2019-01-29 23:40:30-05	\N
227084020 	TABAYO	2018-12-08 05:23:23-05	\N
227088050 	PHOENIX	2018-01-12 06:20:33-05	\N
227088590 	ERMINIG	2017-01-02 05:22:14-05	\N
227092670 	AMALFI	2012-11-15 02:06:45-05	\N
227094770 	WARTA	2015-11-22 12:30:47-05	\N
227095720 	MILWAUKEE	2012-07-13 05:33:38-04	\N
227096140 	MIRABEAU	2017-10-18 17:04:28-04	\N
227097250 	MOONRAKER	2017-12-05 22:12:12-05	\N
227097440 	KOALA	2013-12-27 22:35:56-05	\N
227097480 	IPANEMA	2018-12-04 05:59:07-05	\N
227098010 	VIKING-GRACELAND	2016-09-26 06:27:58-04	\N
227098230 	DORIA	2018-12-23 00:44:16-05	\N
227098310 	GALWAY	2018-11-06 05:21:04-05	\N
227099020 	HORIZON	2017-08-09 19:17:08-04	\N
227099110 	MANAUS	2013-12-03 01:45:34-05	\N
227100440 	TOULONNAIS XVII	2015-03-11 18:17:54-04	\N
227106700 	F\\V SAINT NICOLAS	2017-11-03 05:03:37-04	\N
227108400 	F/V LE FRANCE	2014-11-17 10:32:36-05	\N
227116280 	CIRRUS	2013-11-01 00:00:55-04	\N
227122280 	ZUBAIDI	2017-02-05 19:50:17-05	\N
227126370 	REBELL	2017-05-07 14:27:32-04	\N
227126990 	MILO	2014-06-30 11:14:19-04	\N
227134260 	MARICA	2013-07-05 21:08:24-04	\N
227134439 	CENTURION	2013-07-27 17:28:36-04	\N
227134968 	WATERWORLD	2015-08-13 07:39:11-04	\N
227138700 	SAINT JACQUES II	2012-08-11 05:38:06-04	\N
227138800 	F/V MARANATHA II	2016-01-27 03:31:26-05	\N
227141900 	F\\V PASCAL	2017-06-26 14:38:00-04	\N
227142300 	FV ERISPOE	2013-06-24 09:02:50-04	\N
227142900 	NOTRE DAME BOULOGNE	2012-02-19 00:10:38-05	\N
227143600 	F/V THOMAS NICOLAS 2	2013-09-13 23:09:44-04	\N
227143700 	F/V ST JOSSE IV	2014-04-21 00:46:01-04	\N
227144300 	F/V ETOILE DU BERGER	2013-08-15 19:21:48-04	\N
227144900 	F/V HERMINE	2017-01-04 21:21:32-05	\N
227145190 	CROQUE SOUS TWO	2018-09-07 15:27:38-04	\N
227146400 	F/V SAINT-JEAN PPN	2017-09-19 05:34:43-04	\N
227146700 	F/V CARPE DIEM 3	2013-09-12 09:33:20-04	\N
227148000 	LANGEVIN	2017-06-07 21:24:02-04	\N
227148640 	ESTELONA	2014-12-23 14:15:31-05	\N
227149010 	TAYGETTE	2017-08-03 05:43:06-04	\N
227152980 	PICHALA	2014-01-04 18:18:28-05	\N
227158520 	LOLA	2014-05-31 16:08:01-04	\N
227164320 	SQUATINA	2018-02-02 18:34:53-05	\N
227165480 	HELIOS	2014-10-13 23:03:13-04	\N
227168180 	ROUEN PILOT COLIBRI	2017-02-12 23:42:59-05	\N
227171840 	MAKEMO	2012-08-14 12:19:45-04	\N
227185270 	CAPERIC 3	2012-10-16 12:11:02-04	\N
227185370 	ANGEL	2018-04-01 19:00:50-04	\N
227186230 	CAEN OUISTREHAM 4	2012-05-30 17:57:34-04	\N
227195140 	AURELIE	2017-01-30 05:05:50-05	\N
227198650 	KATTBERRIA	2015-03-30 06:40:21-04	\N
227211320 	KADOR	2014-12-14 07:58:26-05	\N
227212000 	TETHYS 2	2014-07-17 21:35:32-04	\N
227213720 	ODYSSEE	2018-11-26 16:05:51-05	\N
227214420 	SKIPPY	2018-10-10 08:08:48-04	\N
227220710 	ZELINE	2016-12-23 10:27:15-05	\N
227221430 	SCORPION	2019-02-08 10:10:44-05	\N
227224850 	MARKO	2018-03-08 10:42:57-05	\N
227229330 	LE GABIAN 1	2018-06-04 13:30:50-04	\N
227233730 	LADY CHARLYETTE	2013-10-23 20:47:20-04	\N
227235520 	HARMONY	2014-10-18 13:33:26-04	\N
227237960 	TOTO	2013-09-29 07:45:34-04	\N
227242320 	AZUREVA	2013-11-14 15:47:46-05	\N
227242560 	ESCALE	2012-11-07 00:40:53-05	\N
227243000 	FRENCH WARSHIP	2013-09-09 20:04:08-04	\N
227246000 	AILETTE	2019-01-02 16:55:57-05	\N
227246880 	LOUMA 2	2012-07-17 14:41:07-04	\N
227252350 	TRINQUETTE 4	2013-06-19 03:24:02-04	\N
227252610 	GRANIE	2016-07-24 13:46:34-04	\N
227253180 	EOLE	2014-06-06 03:30:56-04	\N
227255140 	ETOILE	2012-12-18 22:58:04-05	\N
227259890 	SEBASTIEN VAUBAN	2012-01-20 04:05:44-05	\N
227262870 	CAPERIC 4	2013-12-28 00:03:06-05	\N
227263370 	EQUILIBRE	2018-05-25 11:01:03-04	\N
227264730 	STANEKIA II	2017-08-26 12:15:55-04	\N
227270000 	F/V THALIA	2016-06-16 15:35:06-04	\N
227270090 	VANILLA SKY	2015-11-02 16:57:52-05	\N
227272000 	VB PROVENCE	2018-10-03 00:11:02-04	\N
227273000 	NORMANDIE	2016-04-17 03:18:40-04	\N
227275010 	F/V PUNTA VIXIA	2012-04-21 18:01:19-04	\N
227275310 	LH PILOT ST NICOLAS	2014-09-19 12:44:08-04	\N
227277040 	LA LONDE	2015-11-05 23:49:22-05	\N
227284570 	PINSOL	2019-02-20 08:28:33-05	\N
227285160 	BLUE MOON	2015-01-10 20:15:01-05	\N
227286000 	BRETAGNE	2017-11-24 10:16:03-05	\N
227289000 	BARFLEUR	2012-11-05 10:22:13-05	\N
227290730 	PADPANIX III	2015-07-02 16:37:39-04	\N
227292870 	J4F	2015-06-23 11:14:42-04	\N
227293080 	CAMAGUAL IV	2013-08-28 17:50:47-04	\N
227293540 	MAALOULA	2018-08-28 11:12:25-04	\N
227302000 	FV PRINS BERNHARD	2018-07-17 19:29:58-04	\N
227303000 	F/V SANDETTIE	2018-01-10 01:28:11-05	\N
227308000 	F/V MALORICK	2014-02-24 21:47:19-05	\N
227310000 	F/V MAGELLAN	2017-06-11 22:04:43-04	\N
227310150 	F/V CORAIL	2014-02-28 05:12:55-05	\N
227313000 	F/V CAP FREHEL	2012-01-22 05:48:55-05	\N
227315190 	F/V FACE A LA MER	2017-06-28 12:07:54-04	\N
227315730 	F/V POINT FINAL	2014-06-30 04:26:27-04	\N
227316750 	F/V LA PERSEVERANCE	2017-05-24 10:22:02-04	\N
227317000 	F/V SAMANA	2013-09-03 13:25:22-04	\N
227317490 	F/V MIRLOU4	2017-12-08 05:01:39-05	\N
227317870 	F/V ADELE CAMILLE	2018-01-18 07:46:46-05	\N
227318010 	F/V LA SARDANE	2012-03-31 09:02:44-04	\N
227318380 	F\\V MANOOTCHE	2014-11-15 02:24:24-05	\N
227326140 	GLEN MAEL	2012-11-14 22:46:42-05	\N
227328310 	ELOYSE	2014-05-25 00:59:04-04	\N
227333560 	TEHOU	2013-10-01 04:08:29-04	\N
227334670 	TAGUA	2014-07-04 20:45:03-04	\N
227336000 	F/V RANGIROA	2013-10-10 12:03:57-04	\N
227338300 	BLUE JAYS 3	2013-04-19 16:13:32-04	\N
227340000 	F/V LE MARIE LOUIS	2013-01-03 04:11:37-05	\N
227341160 	LAROCHELLE PILOT 014	2018-09-18 09:28:23-04	\N
227341920 	LA DEVOUEE	2013-09-01 19:20:10-04	\N
227341930 	LA VIGILANTE	2012-08-19 06:29:06-04	\N
227352570 	BINOME	2013-11-12 11:39:11-05	\N
227357860 	BRIPHIL	2013-01-19 09:43:43-05	\N
227361760 	SAINTE MARIE	2014-03-27 06:41:54-04	\N
227364000 	LE MUREX	2013-05-02 20:23:50-04	\N
227364620 	TSM CHAUSEY	2018-03-23 23:55:03-04	\N
227369910 	MADIBA	2017-07-07 15:30:11-04	\N
227377330 	ANN ELDER	2012-09-03 14:22:43-04	\N
227377620 	TALARIA	2016-05-31 19:53:31-04	\N
227378990 	TAMARA	2012-01-31 23:21:31-05	\N
227379580 	HONALICE	2013-12-06 08:09:08-05	\N
227382000 	F/V LARCHE	2014-07-01 23:33:15-04	\N
227386050 	ASTREA	2013-12-30 09:47:04-05	\N
227401510 	MA MUSE	2016-09-23 22:45:20-04	\N
227402190 	VANIKORO	2017-07-19 20:59:20-04	\N
227402320 	PIERRE  1ER	2013-03-18 01:10:19-04	\N
227410000 	F/V TANGAROA	2013-02-07 01:23:40-05	\N
227410840 	LADY L	2015-04-24 17:52:31-04	\N
227415930 	LADY M	2015-12-29 07:51:52-05	\N
227418000 	F/V SERTAN	2014-10-18 11:40:48-04	\N
227434230 	UTOKY	2014-04-02 11:04:18-04	\N
227434380 	PULSAR	2018-01-04 23:45:52-05	\N
227436000 	F/V LE BARON	2014-06-20 06:50:40-04	\N
227441450 	MARIE	2013-02-08 07:46:11-05	\N
227445370 	NEREIDES 3	2015-12-12 01:34:03-05	\N
227445530 	FALCO	2013-02-28 01:42:40-05	\N
227446770 	JAKVAMM	2012-12-09 14:48:52-05	\N
227451830 	SUMMERTIME VI	2012-02-06 17:55:13-05	\N
227456780 	S/Y LOUZOU	2012-08-19 16:11:20-04	\N
227461060 	TIMEOUT	2013-05-03 09:08:35-04	\N
227461230 	BAC 13	2016-01-19 08:33:50-05	\N
227461490 	LET IT BE	2013-05-01 16:16:33-04	\N
227462570 	FIRST JOY	2014-05-19 19:30:18-04	\N
227462880 	ANEGADA	2016-08-09 13:22:26-04	\N
227463690 	STRATO	2017-10-03 23:06:29-04	\N
227464770 	TSM LOCH	2016-06-30 01:16:53-04	\N
227470940 	AR LOCA	2016-09-12 10:01:17-04	\N
227476370 	ARMONEE	2015-01-13 15:16:37-05	\N
227478490 	LIBERTA	2015-12-15 01:47:03-05	\N
227481890 	BALUCHON	2017-12-30 19:00:17-05	\N
227483450 	NO NAME	2014-05-12 03:23:38-04	\N
227484840 	NOMADE	2014-06-24 08:37:14-04	\N
227487990 	SAINT MICHEL	2012-10-25 09:53:09-04	\N
227488630 	FELICITY	2018-03-25 06:15:46-04	\N
227490230 	BLEU 2 TOI	2013-03-21 02:10:07-04	\N
227493040 	TEHAME	2014-06-08 10:28:26-04	\N
227494790 	NOP NOP	2013-10-01 15:15:55-04	\N
227494810 	NCY	2018-09-02 07:54:05-04	\N
227496490 	(not set)	2012-04-04 12:13:58-04	\N
227498540 	JEMALE	2015-10-09 13:57:53-04	\N
227504990 	FREJULINE	2017-10-01 03:05:41-04	\N
227511960 	SAN MIGUEL	2012-04-19 16:19:46-04	\N
227513290 	NOTRE DAME DES FLOTS	2015-03-30 18:41:20-04	\N
227516430 	PRINCES	2015-10-06 15:12:07-04	\N
227530330 	GOLDSTAR	2016-05-21 08:30:01-04	\N
227539530 	FLEURDEMER	2017-10-31 00:06:49-04	\N
227540290 	MARIE LOUISE	2015-07-17 06:52:38-04	\N
227550010 	UPSET RACING SOLO	2014-04-18 08:04:28-04	\N
227563000 	F/V MARIAL	2018-05-31 06:59:37-04	\N
227566760 	S/Y MINDELO	2016-04-19 00:40:27-04	\N
227573960 	F/V YOUL VAT	2014-06-23 21:26:08-04	\N
227574020 	TIBIDY	2014-10-27 10:19:25-04	\N
227574030 	BINDY	2017-10-28 00:25:52-04	\N
227580520 	LOUARN	2016-02-12 04:15:15-05	\N
227581000 	F/V OUTSIDER	2012-01-20 08:24:28-05	\N
227582000 	F/V VENT DU LARGE	2019-02-08 01:06:44-05	\N
227588560 	S/Y TINTO III	2014-04-03 04:07:09-04	\N
227591880 	F/V LE KEVIN II	2015-12-24 02:06:15-05	\N
227592820 	TREBERON	2013-11-13 22:51:59-05	\N
227593750 	SNS 148	2014-10-04 18:20:39-04	\N
227595000 	F/V LES MISERABLES	2012-12-30 21:23:26-05	\N
227598930 	VAL D ARGOAT	2018-02-09 09:15:18-05	\N
227610280 	WILLIWAW 4	2012-04-02 19:37:28-04	\N
227612820 	PONT D YEU	2017-03-30 09:37:21-04	\N
227626920 	F/V CAP AUX ANGES	2012-05-21 02:12:40-04	\N
227629670 	CHRISTIALOU	2014-01-27 06:52:00-05	\N
227630870 	F/V LA CRITIQUE	2014-04-28 13:15:17-04	\N
227635910 	F/V SAINT MARIN	2014-09-08 23:30:48-04	\N
227655820 	TY GALAAD	2015-06-08 07:02:34-04	\N
227658910 	LE CHATELET	2016-06-03 19:50:35-04	\N
227677160 	L ESSOR	2017-09-08 06:44:29-04	\N
227681610 	MAHANA	2014-10-22 11:47:44-04	\N
227682410 	LA ROCHELLE PILOT 07	2016-11-16 15:56:40-05	\N
227685830 	MARGRITIC	2017-03-13 00:25:45-04	\N
227689560 	OBSTINE	2017-08-03 03:54:49-04	\N
227689570 	MISTRAL	2017-04-07 18:25:27-04	\N
227692060 	PELAGIES	2016-03-18 21:42:01-04	\N
227713010 	PILOT-BOAT COURONNEE	2012-05-06 04:51:55-04	\N
227720410 	TOULOULOU	2013-05-01 01:25:12-04	\N
227723070 	BROTONNE	2013-07-01 14:13:53-04	\N
227729770 	LEOPARD	2013-08-02 18:01:31-04	\N
227731830 	BLEU MARINE	2014-07-09 01:14:46-04	\N
227732390 	BELISSIMA	2014-07-24 04:32:27-04	\N
227744230 	EDEN ISLAND	2017-08-10 12:22:46-04	\N
227752910 	LH PILOT ST CECILE	2018-09-17 15:13:40-04	\N
227757520 	TIMELI	2014-07-31 07:32:55-04	\N
227785000 	FUJI	2017-05-06 14:43:00-04	\N
227789190 	INTREPIDE	2014-10-21 12:45:39-04	\N
227789220 	INFLEXIBLE	2015-04-20 11:56:54-04	\N
227789670 	CPT JEAN THOMAS	2012-12-11 17:31:50-05	\N
227789690 	BON SECOURS 1	2015-12-10 12:47:02-05	\N
227792380 	ON LPREND	2014-11-28 10:18:17-05	\N
227795520 	KHAYA	2012-12-08 09:54:54-05	\N
227802690 	PARATY	2016-11-04 21:28:36-04	\N
227807020 	ASCENSION	2018-06-20 11:35:37-04	\N
227808000 	F/V OISEAU D TEMPETE	2013-04-14 05:27:26-04	\N
227811240 	APHELIOTES	2013-10-15 02:42:51-04	\N
227813420 	COPAINS	2015-03-25 03:55:48-04	\N
227815510 	HIRAM	2016-06-27 21:11:32-04	\N
227815530 	OPUS 1	2013-12-29 20:11:21-05	\N
227817000 	F/V NOMADE	2014-03-06 22:04:33-05	\N
227817520 	S.H.A.D.O.	2017-11-17 22:03:47-05	\N
227821430 	STERWEN	2015-10-09 16:31:30-04	\N
227822000 	F/V CAP LIZARD	2012-02-28 02:30:58-05	\N
227824430 	ELEONORE	2017-02-10 20:38:03-05	\N
227826030 	SUNNY DREAM	2018-01-18 07:34:15-05	\N
227829630 	MAESTRO	2016-02-26 03:35:37-05	\N
227832880 	F/V LA TRINITE	2017-02-16 11:28:46-05	\N
227833720 	JAMAI	2014-04-21 05:33:10-04	\N
227835430 	MONTECRISTO	2016-08-22 01:52:54-04	\N
227836860 	KASHIRA	2017-01-11 03:57:34-05	\N
227837760 	CAEN OUISTREHAM 5	2014-09-10 07:58:15-04	\N
227840150 	CANAFLO II	2015-12-23 04:54:23-05	\N
227850720 	PAJEAROS	2014-01-22 12:30:36-05	\N
227852000 	F/V KEFELEG AR MOR	2017-07-14 16:13:23-04	\N
227853720 	TAONA	2016-07-14 17:09:05-04	\N
227855000 	F/V VOLUNTAS DEI	2018-01-04 12:26:22-05	\N
227856770 	DJANIK	2015-05-11 06:05:52-04	\N
227859990 	GIOCO	2012-09-04 18:21:18-04	\N
227866050 	NGB2	2016-05-21 03:43:11-04	\N
227867270 	CAYMAN 3	2016-07-14 19:39:42-04	\N
227867940 	RED ROSE	2012-05-12 16:04:12-04	\N
227868220 	OCHO	2016-05-24 21:12:08-04	\N
227879530 	MAIMITI	2019-01-15 23:47:54-05	\N
227881120 	THEON	2014-06-07 22:20:56-04	\N
227882440 	GOLDRUSH	2013-12-22 11:26:05-05	\N
227884030 	ARAOK	2018-06-28 04:35:23-04	\N
227888280 	VINCENT MYLENE	2015-02-05 14:32:06-05	\N
227891060 	VERSS-O	2013-08-18 00:30:40-04	\N
227901090 	DANAIDE 5	2013-12-08 13:09:28-05	\N
227908000 	F/V SOLITAIRE 1	2015-03-05 23:54:45-05	\N
227909000 	F/V LUMIAN	2017-10-20 08:31:49-04	\N
227916000 	F/V TARZH AN DEIZ	2014-02-10 20:58:24-05	\N
227941000 	F/V ANTAEUS	2015-09-19 21:29:00-04	\N
227977000 	F/V ROSEAU DU LAC	2016-07-19 06:54:45-04	\N
227988000 	LUDIVINE F/V	2013-06-08 14:31:55-04	\N
227998200 	RHONE FRENCH WARSHIP	2012-08-11 22:27:42-04	\N
227998300 	FRENCH WARSHIP	2013-02-07 10:34:42-05	\N
227999200 	NORMANDIE	2013-12-11 22:36:09-05	\N
228000700 	ETOILE DU ROY	2019-01-15 12:31:11-05	\N
228002000 	ABEILLE  LANGUEDOC	2017-04-20 18:49:54-04	\N
228003800 	SHANA DES SLOPS	2015-03-31 16:41:01-04	\N
228006800 	CALAIS SEAWAYS	2013-05-23 17:06:27-04	\N
228008600 	LIBERTY	2015-04-27 02:17:38-04	\N
228009700 	PIANA	2014-03-05 17:17:03-05	\N
228016600 	POLARIS I	2013-08-07 12:28:18-04	\N
228017700 	FROMVEUR II	2015-05-17 12:06:56-04	\N
228020700 	CITY OF HAMBURG	2016-01-23 03:46:52-05	\N
228021600 	F/V LA FANETTE	2016-06-16 19:01:45-04	\N
228022900 	ETRETAT	2013-06-08 13:26:46-04	\N
228024800 	ST PIERRE	2013-07-22 09:28:27-04	\N
228025700 	CIUDAD DE CADIZ	2018-01-14 00:38:03-05	\N
228039800 	F/V FARFADET	2016-09-21 18:38:35-04	\N
228041600 	PIERRE DE FERMAT	2018-03-14 18:37:41-04	\N
228042600 	F/V MABON III	2018-08-21 13:59:17-04	\N
228051800 	GRAND BLEU VINTAGE	2016-03-11 03:02:10-05	\N
228056800 	ROXANE Z	2015-12-08 21:40:14-05	\N
228057000 	MN COLIBRI	2018-01-22 21:13:14-05	\N
228061700 	HONDARRA	2015-05-25 15:31:52-04	\N
228064900 	VN SAPEUR	2012-08-28 12:34:25-04	\N
228067800 	VB OURAGAN	2017-02-27 12:33:00-05	\N
228068600 	JIF SURVEYOR	2014-06-09 05:57:43-04	\N
228068700 	VB.CYCLONE	2013-01-13 11:15:01-05	\N
228070700 	F/V MELIZENN	2015-10-15 21:49:20-04	\N
228070800 	F/V ARPEGE	2016-05-13 17:16:14-04	\N
228072800 	VB TYPHON	2016-01-18 19:18:49-05	\N
228072900 	VB TEMPETE	2012-02-19 11:08:24-05	\N
228073600 	VN REBEL	2018-08-28 07:43:54-04	\N
228078700 	F/V MARANELLO	2014-11-16 06:33:29-05	\N
228079000 	COLUMBUS	2017-09-04 01:53:02-04	\N
228080600 	F/V EMERAUDE	2016-04-27 09:04:49-04	\N
228080700 	CHERBOURG 1	2015-08-01 23:29:39-04	\N
228081000 	PASCAL PAOLI	2019-02-06 07:50:31-05	\N
228082800 	GOULPHAR	2012-11-21 04:18:43-05	\N
228084000 	VILLE DE BORDEAUX	2014-03-11 02:14:23-04	\N
228085000 	COTE DES FLANDRES	2019-01-05 20:18:40-05	\N
228085700 	VB 16 TORNADE	2018-06-11 00:53:48-04	\N
228089800 	F/V DIOGENE	2012-05-08 15:55:44-04	\N
228089900 	F\\V CALIFORNIA	2017-03-22 13:28:26-04	\N
228096900 	F/V LE MARMOUSET 3	2016-04-06 20:50:09-04	\N
228097600 	F/V CAP FINISTERE	2015-03-26 09:58:43-04	\N
228097800 	VN PARTISAN	2012-10-18 03:12:41-04	\N
228098700 	CMA CGM ST EXUPERY	2016-01-13 11:32:23-05	\N
228098900 	LYDIA D	2016-07-07 06:52:17-04	\N
228099600 	ANNA B	2012-09-05 20:11:43-04	\N
228099800 	TIGERS III	2014-04-09 16:06:29-04	\N
228101600 	F/V POSEIDON	2015-07-23 19:37:15-04	\N
228109000 	F/V KAN AN AEL	2013-04-23 12:01:28-04	\N
228122900 	F/V SANTIMAX	2012-11-27 11:27:41-05	\N
228123800 	TSM KERMOR	2015-11-15 18:02:18-05	\N
228131800 	F/V FILOU	2017-03-23 23:56:42-04	\N
228134700 	F/V NAONED	2017-12-09 00:11:11-05	\N
228136000 	JIF XPLORER	2017-06-28 18:16:21-04	\N
228138000 	F/V LES MENHIRS	2017-05-24 06:09:17-04	\N
228147700 	THE SEVEN SEAS	2015-05-14 04:06:59-04	\N
228155700 	ARMORIQUE	2013-10-06 22:28:08-04	\N
228157600 	MILLE VISAGES	2016-02-16 00:56:06-05	\N
228160000 	B	2016-10-05 23:34:41-04	\N
228160900 	SAMUEL DE CHAMPLAIN	2017-10-08 18:27:15-04	\N
228165700 	F/V FLEUR DE GWARES	2018-11-23 09:31:58-05	\N
228168600 	F/V ROSELAND	2018-05-16 12:09:22-04	\N
228172000 	F/V IROISE 1	2013-04-07 12:09:29-04	\N
228179700 	VB BARFLEUR (18)	2018-11-22 17:08:18-05	\N
228183600 	PONT AVEN	2016-11-20 20:32:19-05	\N
228184000 	F/V ARMANDECHE	2017-10-15 15:40:23-04	\N
228186700 	ARGONAUTE	2013-06-12 18:02:37-04	\N
228188600 	THEMIS	2017-05-21 14:55:55-04	\N
228193700 	CROISIC	2018-03-05 12:42:53-05	\N
228196800 	LA BOUDEUSE	2013-10-18 02:56:19-04	\N
228208700 	F/V VAG A LAMM	2018-03-30 01:57:13-04	\N
228208800 	F/V LYCIA	2018-08-30 09:03:25-04	\N
228209700 	F/V ARUNDEL	2017-12-26 00:12:46-05	\N
228211000 	F/V ATALANTE 3	2012-12-02 20:32:22-05	\N
228213700 	KANARMOOR	2012-05-01 19:32:42-04	\N
228216000 	F/V AZUR	2012-09-19 10:18:38-04	\N
228216600 	F/V RENAISSANCE II	2016-03-05 22:46:27-05	\N
228218600 	F/V LA PETITE BRIZE	2017-03-27 07:28:19-04	\N
228219600 	ANDRE.L	2015-01-12 04:38:13-05	\N
228228800 	F/V LE JUSANT	2012-11-29 19:51:46-05	\N
228232800 	AUNIS 2	2018-12-07 00:08:29-05	\N
228236000 	COPPELIA F/V	2018-01-11 02:08:01-05	\N
228237700 	NORMANDIE.EXPRESS	2015-03-07 16:03:15-05	\N
228237800 	CAP AIGUADES	2015-11-02 05:40:52-05	\N
228238700 	AR LAERES	2017-09-15 12:41:54-04	\N
228239900 	F/V MOOREA	2013-08-07 20:43:27-04	\N
228240600 	F/V QUENTIN GREGOIRE	2013-11-05 06:24:45-05	\N
228253900 	F/V DJAKEY	2014-07-08 14:21:14-04	\N
228259600 	F\\V.MIRACETI	2012-08-31 23:58:37-04	\N
228262700 	F/V URTXINTXA	2012-04-15 00:17:59-04	\N
228263700 	ARMORIQUE	2016-08-12 03:17:14-04	\N
228264600 	F/V MOR BREIZ	2017-10-17 10:22:22-04	\N
228279900 	VB CAMARGUE	2015-01-04 19:24:30-05	\N
228281000 	FV LIOU AN AMZER	2015-12-21 08:03:34-05	\N
228283600 	CHAMBON SUROIT	2018-03-15 07:54:46-04	\N
228283700 	CHAMBON NOROIT	2018-05-23 08:45:57-04	\N
228284800 	VB OCTEVILLE 11	2014-07-09 00:43:18-04	\N
228284900 	KAIROS	2013-09-13 22:33:35-04	\N
228287800 	VB RHONE	2016-07-14 09:10:13-04	\N
228287900 	VB YPORT 12	2015-09-07 01:28:22-04	\N
228292700 	FLORENCE B	2015-04-18 16:11:04-04	\N
228293600 	VB ADROIT	2012-04-02 15:18:12-04	\N
228293700 	VB PUISSANT	2019-01-19 17:42:37-05	\N
228296900 	CAPT. LOUIS THOMAS	2013-12-17 14:05:31-05	\N
228299700 	VB CRAU	2015-09-28 21:06:08-04	\N
228301900 	F/V MAMMOUTH	2017-06-02 05:08:23-04	\N
228302900 	F/V MIRENTXU 1	2013-10-13 12:06:10-04	\N
228306000 	F/V ODESSA	2017-07-02 01:21:01-04	\N
228308600 	PETER FABER	2019-02-11 14:43:57-05	\N
228308900 	TI OSCAR PAPA	2012-07-08 05:19:24-04	\N
228315000 	F/V ATTALAYA BERRIA	2015-06-19 05:13:30-04	\N
228315700 	MN PELICAN	2014-09-24 12:44:52-04	\N
228320900 	ST SARA	2018-08-12 22:32:43-04	\N
228330600 	CHIBERTA	2017-01-06 04:27:45-05	\N
228330700 	CHANTACO	2015-04-12 05:51:32-04	\N
228337800 	F/V LAZALAI.	2015-12-14 22:26:27-05	\N
228338600 	CMA CGM NABUCCO	2016-05-10 20:59:33-04	\N
228344800 	RMT PENFRET	2018-08-03 14:02:55-04	\N
228345800 	CMA CGM LAPEROUSE	2013-11-17 13:27:55-05	\N
228357900 	F/V LE CORAIL 1	2017-01-30 15:50:41-05	\N
228358600 	F/V ARCADIA	2012-12-04 00:10:56-05	\N
228362900 	CMA CGM FORTDEFRANCE	2013-10-09 13:14:53-04	\N
228367000 	F/V ANTHINEAS	2013-06-17 04:31:12-04	\N
228387000 	F/V LIBERTY-S	2014-10-23 00:00:12-04	\N
228665424 	LIBERDAE.	2014-04-19 17:15:55-04	\N
228803000 	F/V NEW LOOK	2017-11-15 06:45:51-05	\N
228813000 	F/V KAB DAVID 3	2013-02-10 15:41:45-05	\N
228840000 	F/V CORTO MALTESE II	2018-04-05 18:34:12-04	\N
228888000 	F/V EDEN ROC II	2013-03-15 18:20:23-04	\N
228904000 	F/V ARIN	2015-01-10 20:09:13-05	\N
228929000 	F/V ADELINE STEPHEN	2015-01-30 14:50:39-05	\N
229000086 	ALAMEA	2012-11-08 19:01:47-05	\N
229000087 	MURMUR	2017-09-07 09:01:55-04	\N
229000097 	LA POLONIA	2012-06-08 05:57:36-04	\N
229000124 	ARAMIS	2014-06-26 10:34:34-04	\N
229000178 	REGINA K	2018-10-06 10:24:03-04	\N
229000214 	SHALAN	2013-04-10 15:49:09-04	\N
229000224 	JOY	2012-09-11 15:51:13-04	\N
229000259 	JUHULO	2015-11-17 04:22:53-05	\N
229000420 	LUAMAR 2	2012-10-29 19:09:17-04	\N
229000465 	THUNDERBALL I	2014-10-07 16:12:58-04	\N
229000487 	SY PALMYRE	2017-10-08 02:26:19-04	\N
229000491 	EUPHORIA 1	2016-05-19 13:58:07-04	\N
229000604 	SONG OF THE SEA	2014-09-19 11:11:38-04	\N
229000625 	DEA	2016-09-18 12:42:25-04	\N
229000644 	EX OFFICIO	2012-06-05 04:37:14-04	\N
229001000 	CELESTYAL CRYSTAL	2014-08-09 04:27:05-04	\N
229004000 	ADFINES SEA	2017-11-20 19:44:58-05	\N
229012000 	VESLETS	2016-02-17 22:22:47-05	\N
229013000 	RODOPI	2016-11-09 22:29:44-05	\N
229015000 	KEY EAST	2015-07-30 18:44:28-04	\N
229025000 	KATRIN	2014-08-29 01:58:44-04	\N
229033000 	FLORIANA	2013-01-28 23:56:39-05	\N
229068000 	ABML EVA	2018-10-03 08:40:49-04	\N
229080000 	BOLD TERN	2016-10-09 14:33:57-04	\N
229089000 	UNIVERSAL DURBAN	2014-02-10 05:15:20-05	\N
229095000 	SD ROVER	2016-11-24 09:37:49-05	\N
229097000 	SD REBEL	2012-09-26 15:18:30-04	\N
229108000 	LYDIA	2016-12-29 00:37:20-05	\N
229155000 	HASHTAG	2014-02-22 15:51:14-05	\N
229176000 	REKON	2016-07-17 01:16:36-04	\N
229177000 	TAHITI ONE	2014-05-07 17:48:47-04	\N
229192000 	PALLAS GLORY	2014-09-14 18:11:50-04	\N
229213000 	DOGAN	2016-12-24 23:31:20-05	\N
229241000 	KAIRIT	2017-09-03 23:16:20-04	\N
229245000 	KAMELIA	2013-08-15 13:09:03-04	\N
229279000 	DHARMA	2015-10-27 14:52:30-04	\N
229288000 	SC AHTELA	2013-02-15 22:17:40-05	\N
229294000 	ZP BULLDOG	2015-07-11 08:57:45-04	\N
229295000 	ZP BOXER	2014-06-15 09:06:35-04	\N
229323000 	NORDSCHELDE	2014-03-20 13:20:59-04	\N
229339000 	BIXBITE	2015-01-17 08:29:15-05	\N
229377000 	MOLIVER	2013-09-19 13:47:27-04	\N
229379000 	MS SCENIC JEWEL	2015-04-09 06:55:20-04	\N
229381000 	FIRST BROTHER	2015-06-18 18:02:58-04	\N
229384000 	MSC LAUSANNE	2017-12-22 09:36:46-05	\N
229385000 	FALKBERG	2018-06-06 14:01:52-04	\N
229386000 	M/Y ILE DE FRANCE	2012-12-06 03:21:01-05	\N
229388000 	SEAMERCURY	2012-11-09 17:21:56-05	\N
229392000 	SHARK 1	2015-09-28 01:23:58-04	\N
229398000 	SD DOLPHIN	2017-01-21 22:12:09-05	\N
229400000 	MAXI BEER	2017-05-03 14:15:01-04	\N
229413000 	CARINTHIA VII	2014-07-23 14:09:17-04	\N
229417000 	DP GEZINA	2018-12-30 00:10:13-05	\N
229419000 	HEVEA	2013-10-10 20:46:37-04	\N
229426000 	-BLISS	2018-10-10 23:08:41-04	\N
229430000 	ANNA J	2015-11-26 08:16:47-05	\N
229436000 	VELLMARI	2018-07-09 10:45:19-04	\N
229437000 	DP GALYNA	2015-12-02 17:37:17-05	\N
229488000 	CMA CGM CHOPIN	2015-08-17 14:44:54-04	\N
229521000 	MAERSK KOBE	2018-11-13 06:35:10-05	\N
229536000 	KAROLI	2014-07-30 05:32:33-04	\N
229554000 	HOPA	2016-06-07 15:40:15-04	\N
229561000 	IMERA	2014-08-07 10:51:29-04	\N
229566000 	OCEAN BROTHER	2016-09-22 11:01:17-04	\N
229572000 	MERKUR OCEAN	2015-07-03 00:24:23-04	\N
229581000 	KITA LNG	2018-05-06 07:37:10-04	\N
229582000 	PALU LNG	2014-04-09 15:06:24-04	\N
229583000 	YARI LNG	2014-09-20 19:28:06-04	\N
229586000 	IBI	2018-09-02 20:56:59-04	\N
229600000 	GLUECKSBURG	2019-02-13 04:33:15-05	\N
229603000 	KIRAN ISTANBUL	2017-10-01 06:40:48-04	\N
229611000 	POLA MUROM	2018-07-05 11:57:24-04	\N
229612000 	POLA PALEKH	2014-07-02 07:14:22-04	\N
229625000 	MSC AJACCIO	2014-06-16 13:46:27-04	\N
229627000 	SVEA	2013-06-08 17:10:47-04	\N
229630000 	X-PRESS MULHACEN	2016-03-11 15:42:49-05	\N
229631000 	CIELO DI NEW YORK	2016-06-27 16:56:48-04	\N
229636000 	MT SEA HALCYONE	2012-01-09 19:32:27-05	\N
229640000 	HIGH VOYAGER	2013-05-28 06:48:16-04	\N
229668000 	BESIKTAS ICELAND	2016-01-10 06:58:37-05	\N
229672000 	TUERKIS	2016-07-12 01:32:36-04	\N
229692000 	MED ADRIATIC	2019-01-18 01:44:00-05	\N
229698000 	ZEYNO	2015-01-30 12:33:21-05	\N
229704000 	ELLEN	2018-12-03 00:02:48-05	\N
229709000 	JAAN	2017-09-04 01:13:44-04	\N
229736000 	CARMEN1	2016-12-17 09:07:18-05	\N
229761000 	HERCULINA	2014-06-14 22:13:41-04	\N
229767000 	ARCTIC AURORA	2014-08-07 09:42:13-04	\N
229768000 	EMERALD SKY	2014-12-18 04:40:33-05	\N
229773000 	TAHITI	2012-05-15 12:07:21-04	\N
229781000 	SCENIC JADE	2014-03-15 05:51:59-04	\N
229784000 	SCENIC GEM	2012-06-22 06:25:07-04	\N
229796000 	COOL EXPLORER	2016-09-21 01:34:57-04	\N
229801000 	RT EMOTION	2013-08-20 12:20:35-04	\N
229802000 	RT EVOLUTION	2017-02-25 08:17:55-05	\N
229812000 	BARENTS SEA	2016-09-25 21:22:10-04	\N
229818000 	EMERALD STAR	2016-11-24 10:34:28-05	\N
229822000 	SKAW PROVIDER	2016-02-14 20:22:40-05	\N
229826000 	SEA RANGER	2016-05-26 16:58:45-04	\N
229835000 	MULTRATUG 28	2018-10-27 09:35:03-04	\N
229836000 	YOU&G	2015-04-02 03:14:54-04	\N
229849000 	KERLI	2013-06-15 00:47:24-04	\N
229852000 	DENIKI	2015-03-19 04:14:59-04	\N
229860000 	KAJA	2012-10-12 00:11:16-04	\N
229862000 	MSC FLAMINIA	2013-10-16 09:51:33-04	\N
229868000 	FEDERICA PRIMA	2013-09-17 01:32:54-04	\N
229872000 	STAR PIERA	2013-07-02 15:29:13-04	\N
229875000 	MARIU	2012-08-10 07:47:32-04	\N
229878000 	RONA	2014-10-10 04:17:41-04	\N
229881000 	BALTIC FREEDOM	2017-11-30 09:17:10-05	\N
229882000 	BALTIC MARINER I	2015-09-14 15:01:59-04	\N
229883000 	BALTIC FAVOUR	2018-11-04 13:26:57-05	\N
229884000 	SHARK	2012-02-25 01:26:48-05	\N
229885000 	MOONBIRD	2013-08-11 15:48:28-04	\N
229889000 	PHILMX	2015-04-26 06:35:41-04	\N
229892000 	ZEUS S	2016-06-14 10:45:33-04	\N
229906000 	MAC TOO	2013-08-01 14:45:06-04	\N
229908000 	MY CIPITOUBA	2016-10-01 11:18:15-04	\N
229928000 	AL MURAYKH	2015-08-21 05:42:11-04	\N
229931000 	M/Y ADORA	2014-04-26 03:13:01-04	\N
229941000 	YM EVEREST	2017-09-21 22:56:34-04	\N
229946000 	SUMMER BREEZE I	2019-01-26 16:06:25-05	\N
229959000 	RIGA	2015-07-03 23:56:10-04	\N
229961000 	ARABELLA	2016-11-19 20:18:53-05	\N
229969000 	ID PIONEER	2014-10-03 20:05:28-04	\N
229971000 	ABY VIRGINIA	2015-05-28 07:28:34-04	\N
229972000 	WISBY WAVE	2012-04-09 22:36:16-04	\N
229975000 	ZP BEAR	2012-01-27 14:02:26-05	\N
229976000 	ZP BISON	2014-01-07 17:11:25-05	\N
229978000 	SATIE	2015-11-01 17:57:41-05	\N
229981000 	EMERALD	2013-07-03 08:33:35-04	\N
229988000 	CMA CGM TAGE	2012-05-25 20:07:11-04	\N
230005750 	PILOT L-142	2014-11-12 14:34:07-05	\N
230006000 	FINNKRAFT	2016-01-29 23:12:49-05	\N
230007000 	FINNHAWK	2012-05-30 19:42:32-04	\N
230012000 	WINDO	2016-11-17 17:27:01-05	\N
230012710 	PILOT L-232	2014-05-24 17:32:24-04	\N
230014910 	MT 1310	2013-12-07 20:03:23-05	\N
230017340 	PILOT L145	2016-02-26 18:24:37-05	\N
230022147 	MEI YU 88268	2013-08-29 11:00:18-04	\N
230024660 	TOR	2017-12-22 18:00:06-05	\N
230025040 	TUIKKU	2018-04-28 05:48:18-04	\N
230025450 	JACOB	2014-08-22 07:11:03-04	\N
230025470 	MT1322	2017-08-31 19:38:37-04	\N
230028670 	HECTOR	2012-10-28 04:41:55-04	\N
230028680 	BOULDER	2015-02-09 20:30:42-05	\N
230028850 	SUNNAN2	2014-02-18 14:56:47-05	\N
230035000 	BALTIK	2016-01-14 14:41:27-05	\N
230044260 	KALLE	2012-09-28 13:35:51-04	\N
230045240 	PILOT L149	2012-09-08 20:52:43-04	\N
230045250 	PILOT L148	2017-09-06 02:45:17-04	\N
230046990 	MT5300	2017-12-04 12:28:01-05	\N
230048570 	ARDNAGEE	2014-09-15 05:38:37-04	\N
230051080 	STELLA	2014-05-18 05:00:06-04	\N
230052800 	EMMA	2013-04-23 09:14:24-04	\N
230053260 	SOUND NEPTUNUS	2014-02-08 13:48:41-05	\N
230060890 	PILOT L150	2013-01-23 19:27:00-05	\N
230061040 	SUURSAARI	2018-09-09 05:31:43-04	\N
230063110 	OPTIMUS	2015-02-18 18:21:34-05	\N
230065570 	IXOUS	2013-01-18 08:15:36-05	\N
230069190 	LINDESNES	2016-12-28 01:05:51-05	\N
230069910 	RYSARAHTI	2015-05-02 03:26:22-04	\N
230076480 	AMIRAALI	2017-12-31 05:17:46-05	\N
230081290 	L152	2012-10-02 15:24:11-04	\N
230081700 	KAISLA	2015-02-03 17:42:12-05	\N
230082760 	LA VIDA	2013-08-20 22:16:00-04	\N
230085710 	BOANN	2013-07-28 11:40:17-04	\N
230085750 	SINANN	2014-11-20 17:37:26-05	\N
230091080 	PILOT L153	2018-10-31 17:44:32-04	\N
230091450 	KALKKE	2013-07-14 11:11:16-04	\N
230091950 	BALTIC AMELIE	2017-02-02 19:55:02-05	\N
230093590 	EIJA	2013-11-29 03:40:46-05	\N
230108270 	VALBORG	2017-09-28 11:58:24-04	\N
230108590 	EHRENSVAERD	2017-06-26 06:11:06-04	\N
230110850 	GABRIEL	2016-09-11 01:12:57-04	\N
230111070 	MT1303	2016-11-05 23:18:47-04	\N
230111650 	OILI 4	2012-06-24 20:50:42-04	\N
230113760 	KATHRINA	2015-04-06 13:33:46-04	\N
230113940 	PILOT L133	2016-05-04 01:26:20-04	\N
230122280 	MENHADEN	2017-10-03 19:02:20-04	\N
230125970 	VAHINE	2018-10-26 13:45:48-04	\N
230126390 	FORSBY	2013-05-19 00:42:16-04	\N
230130190 	KNOCKOUT	2014-11-11 22:56:00-05	\N
230136340 	VESI	2015-08-14 03:11:46-04	\N
230138350 	ENOUGH TALK	2014-08-22 06:15:42-04	\N
230138770 	(not set)	2017-04-23 09:56:55-04	\N
230138890 	RANDI	2018-03-22 15:50:33-04	\N
230145000 	ARANDA	2016-12-21 06:59:40-05	\N
230172000 	AMORELLA	2017-10-29 06:41:56-04	\N
230178000 	APOLLON	2013-02-17 15:33:18-05	\N
230181000 	MARIELLA	2014-11-26 07:17:18-05	\N
230182000 	ARTEMIS	2016-06-20 21:22:58-04	\N
230184000 	SILJA SERENADE	2017-04-21 17:09:48-04	\N
230191000 	LINK STAR	2012-08-08 19:00:31-04	\N
230196000 	KATARINA	2015-07-24 17:43:21-04	\N
230204000 	EXPORTER	2017-10-14 15:56:49-04	\N
230245000 	FENNICA	2012-03-13 20:58:20-04	\N
230275000 	NORDICA	2014-01-11 06:20:57-05	\N
230276000 	KRAFT	2015-08-23 22:36:20-04	\N
230279000 	NEPTUN	2012-09-30 14:11:34-04	\N
230291000 	VOIMA	2017-11-06 15:05:40-05	\N
230341000 	FJARDVAGEN	2013-12-29 09:07:27-05	\N
230350000 	LAURA	2015-04-23 22:35:04-04	\N
230352000 	MARJATTA	2015-04-12 00:48:20-04	\N
230357000 	BORE BAY	2016-11-09 16:23:30-05	\N
230370000 	RMS CARELIE	2017-07-03 18:51:46-04	\N
230601000 	AURA	2012-07-13 05:50:23-04	\N
230604000 	RAMONA	2013-11-16 04:24:27-05	\N
230618000 	FINNSEA	2018-12-07 16:19:24-05	\N
230622000 	FINNSKY	2012-09-10 08:57:56-04	\N
230623000 	FINNSUN	2016-10-29 20:54:18-04	\N
230625000 	KUMPULA	2012-02-05 11:01:01-05	\N
230628000 	FINLANDIA	2016-01-24 10:49:18-05	\N
230631000 	FINNTIDE	2017-05-16 20:30:55-04	\N
230637000 	FINNFELLOW	2017-07-13 04:47:54-04	\N
230643000 	FINNPULP	2014-05-18 18:04:08-04	\N
230644000 	LEONARDO	2014-01-26 08:12:23-05	\N
230645000 	KALLIO	2015-04-23 07:42:47-04	\N
230648000 	JOLIE	2012-11-08 09:58:11-05	\N
230649000 	PRIMA LADY	2018-07-22 09:42:54-04	\N
230651000 	POLARIS VG	2018-12-06 14:00:15-05	\N
230652000 	NORSKY	2014-04-01 20:42:18-04	\N
230656000 	MARTTA VG	2014-11-16 04:22:46-05	\N
230659000 	BALTICA	2017-07-02 07:02:11-04	\N
230660000 	TAURUS	2017-11-28 10:16:19-05	\N
230662000 	MIRVA VG	2014-02-28 14:13:50-05	\N
230664000 	POHJANMERI	2014-06-01 04:07:24-04	\N
230666000 	BALTIC MADONNA	2014-08-19 02:30:53-04	\N
230669000 	JENNIFER	2014-01-05 09:59:47-05	\N
230671000 	FINNSWAN	2017-09-25 09:45:37-04	\N
230675000 	AURORA	2015-12-17 22:55:58-05	\N
230678000 	VOIMA	2015-06-08 21:25:48-04	\N
230681000 	NINA	2014-04-10 20:29:28-04	\N
230908000 	AJAX	2016-05-30 10:40:59-04	\N
230915000 	BORE BANK	2012-01-18 07:18:22-05	\N
230917000 	ESTRADEN	2018-04-21 20:22:24-04	\N
230925000 	MISTRAL	2016-01-07 23:33:16-05	\N
230927000 	SEAGARD	2017-05-05 09:43:22-04	\N
230928000 	MINOS	2014-03-24 04:19:34-04	\N
230931000 	AJAX	2016-10-14 19:20:06-04	\N
230935000 	EIRA	2014-12-20 20:53:26-05	\N
230937650 	NOKO	2012-12-07 06:22:42-05	\N
230940560 	KEILA	2016-05-07 22:20:44-04	\N
230941170 	MONS	2012-08-26 04:19:08-04	\N
230941580 	PERA17	2015-01-19 15:56:28-05	\N
230942840 	OTAVA	2016-11-05 14:01:01-04	\N
230948000 	CONTAINERSHIPS VII	2014-03-27 18:25:00-04	\N
230956000 	KIISLA	2014-05-08 18:05:05-04	\N
230961000 	POLARIS	2013-05-24 18:16:58-04	\N
230965000 	NESTE	2014-06-29 10:27:03-04	\N
230981750 	MT3327	2018-11-13 13:12:47-05	\N
230982010 	PILOT L137	2017-06-15 09:27:35-04	\N
230984090 	TINTO	2016-03-22 00:48:59-04	\N
230985000 	AILA	2013-02-22 22:47:56-05	\N
230985490 	SUOMENLINNA II	2012-12-18 05:14:11-05	\N
230985850 	ALLI	2012-07-18 03:28:18-04	\N
230987000 	FINNLADY	2019-01-06 00:47:13-05	\N
230987390 	FALCO	2016-10-07 06:24:55-04	\N
230987940 	JOANNA SATURNA	2017-03-31 09:45:30-04	\N
230989380 	TRITON	2018-10-20 11:08:37-04	\N
230989410 	AMIRAALI	2015-08-10 21:46:39-04	\N
230990270 	HARALD	2015-01-26 21:35:50-05	\N
230992210 	PILOT L 132	2015-02-19 05:35:16-05	\N
230992650 	URSUS	2012-01-22 04:07:18-05	\N
230992970 	VIIKARI	2018-12-13 17:38:00-05	\N
230993790 	ISOSAARI	2016-01-19 17:27:48-05	\N
230994000 	MISANA	2016-06-12 07:15:24-04	\N
230994870 	KOKAR	2017-10-14 23:46:58-04	\N
230995000 	MISIDA	2017-04-30 19:10:36-04	\N
231024000 	LISTERHAV	2012-08-27 16:42:06-04	\N
231025000 	LISTERVIK	2015-12-21 22:47:44-05	\N
231026000 	LISTERLAND	2015-12-22 02:03:39-05	\N
231045000 	ENNIBERG	2012-01-08 23:08:27-05	\N
231065000 	SJOBORG	2012-12-07 01:23:13-05	\N
231076000 	STRIL MERKUR	2012-11-10 08:23:30-05	\N
231078000 	SLATTABERG	2018-01-14 00:18:49-05	\N
231103000 	SILVER LAKE	2013-04-16 07:34:43-04	\N
231108000 	HAV SAGA	2014-05-24 17:45:34-04	\N
231108438 	AURORA EXPLORER	2012-10-07 14:00:51-04	\N
231114000 	VITIN	2015-11-05 16:21:53-05	\N
231130000 	TEISTIN	2016-08-01 02:41:32-04	\N
231141000 	VINGA SAFIR	2012-10-06 13:00:06-04	\N
231251000 	HAV STREYM	2017-05-17 22:31:11-04	\N
231260000 	DUNKER	2013-02-09 11:49:37-05	\N
231261000 	SVITZER VALAND	2015-12-19 16:24:48-05	\N
231262000 	KULLEN	2017-09-01 22:35:27-04	\N
231319000 	CECILIA	2012-12-09 04:02:04-05	\N
231336000 	TINGANES	2013-08-22 19:39:02-04	\N
231355000 	ARNARFELL	2018-03-17 07:34:03-04	\N
231522000 	HAV ATLANTIC	2017-03-21 05:15:47-04	\N
231605000 	KONGSBORG	2018-11-10 02:55:08-05	\N
231613000 	BAL BULK	2017-12-10 10:04:49-05	\N
231695000 	FURE FERDER	2012-07-01 04:41:22-04	\N
231700000 	ELDBORG	2017-09-01 07:01:05-04	\N
231711000 	NORDKINN	2012-05-30 05:46:37-04	\N
231745000 	KAROLINE	2018-03-28 09:37:37-04	\N
231748000 	KVITBJORN	2018-03-14 07:53:54-04	\N
231751000 	GADUS	2018-09-06 15:00:23-04	\N
231763000 	QUEST	2017-07-14 09:11:22-04	\N
231766000 	SILVER PEARL	2012-06-17 07:01:34-04	\N
231770000 	KVITNOS	2016-02-25 13:27:47-05	\N
231774000 	EYSTNES	2016-06-08 01:58:56-04	\N
231781000 	FRANKLIN	2016-10-16 08:08:10-04	\N
231785000 	DETTIFOSS	2013-01-31 14:28:47-05	\N
231790000 	SUNNANHAV	2015-08-23 09:35:42-04	\N
231791000 	KALKVIK	2016-03-19 17:04:36-04	\N
231834000 	HAV SAND	2013-01-22 11:41:39-05	\N
231840000 	TIDAN	2016-10-17 22:46:35-04	\N
231841000 	NOSSAN	2012-06-24 01:19:47-04	\N
231844000 	VINGAREN	2014-08-10 01:59:50-04	\N
231846000 	SVITZER GAIA	2017-04-17 13:39:20-04	\N
231847000 	SVITZER HYMER	2013-05-17 19:27:12-04	\N
231848000 	SVITZER GEO	2012-07-22 18:09:50-04	\N
231849000 	SKULD	2017-03-25 06:38:54-04	\N
232000420 	HEBRIDEAN ISLES	2015-02-24 21:53:32-05	\N
232000570 	ARCO BECK	2019-02-04 21:13:13-05	\N
232000790 	CITY OF WESTMINSTER	2018-06-16 02:37:27-04	\N
232000840 	BRITANNIA BEAVER	2018-02-04 10:15:44-05	\N
232001040 	EUROPEAN SEAWAY	2012-11-10 21:43:51-05	\N
232001240 	ARCO AVON	2014-12-24 15:46:28-05	\N
232001260 	ARCO AXE	2015-02-18 15:26:33-05	\N
232001470 	PRIDE OF BURGUNDY	2015-06-12 20:03:34-04	\N
232002184 	SD BOVISAND	2018-08-21 04:58:30-04	\N
232002185 	SD CAWSAND	2018-02-17 18:22:21-05	\N
232002589 	RED EAGLE	2017-10-21 04:58:41-04	\N
232002594 	SVITZER BENTLEY	2016-12-28 10:15:56-05	\N
232002648 	SD ADEPT	2017-07-15 22:29:02-04	\N
232002650 	SD FORCEFUL	2016-02-15 14:31:39-05	\N
232002651 	SD FAITHFUL	2012-09-06 02:00:38-04	\N
232002653 	SD WARDEN	2012-05-28 17:03:46-04	\N
232002697 	MILLGARTH	2017-01-15 10:16:20-05	\N
232002698 	ANGLEGARTH	2017-12-13 09:11:20-05	\N
232002712 	SVITZER ALMA	2012-01-24 15:04:09-05	\N
232002807 	CITY OF CARDIFF	2013-11-29 22:08:30-05	\N
232002812 	SVITZER SURREY	2016-04-01 22:05:53-04	\N
232002835 	BRITISH WARSHIP	2018-12-15 18:11:48-05	\N
232002836 	SD NEWHAVEN	2013-11-13 09:09:47-05	\N
232002848 	LESLIE ANNE	2014-02-12 19:22:27-05	\N
232002896 	FS KRISTIANSAND	2018-07-28 02:09:29-04	\N
232002927 	SD MOORHEN	2016-09-29 22:39:03-04	\N
232002939 	SD POWERFUL	2012-10-31 01:42:41-04	\N
232002969 	COTSWOLD	2017-12-30 10:16:35-05	\N
232003081 	CITY OF CHICHESTER	2018-09-17 04:13:20-04	\N
232003084 	SVITZER SUSSEX	2012-01-11 16:18:02-05	\N
232003112 	LADY L	2012-05-29 22:49:12-04	\N
232003119 	SVITZER CECILIA	2013-11-22 21:35:29-05	\N
232003120 	SVITZER KATHLEEN	2016-10-06 22:15:30-04	\N
232003121 	SVITZER SARAH	2018-10-26 21:46:06-04	\N
232003225 	KIRKELLA	2014-10-05 07:47:49-04	\N
232003233 	SVITZER MERCIA	2014-03-12 06:26:40-04	\N
232003239 	STRANGFORD 2	2018-06-22 17:14:51-04	\N
232003278 	ARCO DART	2018-08-07 11:50:28-04	\N
232003288 	CLANSMAN	2018-03-31 23:01:39-04	\N
232003319 	PUTFORD VIKING	2013-02-16 18:56:12-05	\N
232003321 	BPOS HARVESTER	2017-10-14 06:55:51-04	\N
232003326 	PUTFORD ACHATES	2014-03-03 10:52:41-05	\N
232003329 	PUTFORD ARIES	2014-03-23 22:53:02-04	\N
232003331 	PUTFORD ATHENA	2015-06-14 04:28:43-04	\N
232003387 	ARCO DEE	2016-07-03 01:26:47-04	\N
232003440 	HAPPY HOURS	2015-01-04 10:49:20-05	\N
232003503 	SVITZER ELLERBY	2017-03-17 23:11:56-04	\N
232003506 	WELSH PIPER	2019-01-02 10:57:20-05	\N
232003548 	KINGS CROSS	2014-02-21 12:41:21-05	\N
232003580 	SAND FULMAR	2015-02-24 05:52:40-05	\N
232003587 	MAGIC DRAGON	2016-02-21 17:50:21-05	\N
232003624 	ORIENTAL	2018-04-12 11:18:22-04	\N
232003642 	RONEZ	2018-02-28 02:24:42-05	\N
232003667 	SEAN PAPA	2014-06-27 19:25:08-04	\N
232003668 	SEAN ROMEO	2019-01-11 23:27:33-05	\N
232003747 	LAVORO	2014-03-23 03:14:54-04	\N
232003935 	NORMA	2016-09-09 02:00:45-04	\N
232004003 	CAPITELLA	2018-08-06 02:35:36-04	\N
232004045 	DAKOTA	2016-01-03 02:20:01-05	\N
232004102 	CAMERON	2012-03-11 07:10:53-04	\N
232004294 	ATLANTIC SUN	2018-02-27 18:31:26-05	\N
232004296 	SV EXCELSIOR	2017-08-09 02:05:53-04	\N
232004315 	SHEARWATER	2018-08-04 12:45:01-04	\N
232004359 	OPTIMANA	2016-01-10 13:16:45-05	\N
232004399 	RNLI LIFEBOAT 17-24	2016-12-19 19:07:43-05	\N
232004509 	LIBERTY	2018-02-27 09:05:28-05	\N
232004530 	SERVICEMAN	2018-12-13 02:06:31-05	\N
232004598 	CALLISTO MAASSLUIS	2015-07-18 20:12:08-04	\N
232004607 	MFV HARVESTER	2014-03-25 19:58:22-04	\N
232004616 	EDDA PASSAT	2017-11-07 01:01:56-05	\N
232004630 	CITY OF AMSTERDAM	2017-07-27 06:23:45-04	\N
232004700 	MFV CHLOE OF LADRAM	2018-09-02 02:14:06-04	\N
232004729 	INTUITION	2016-09-06 17:16:30-04	\N
232004751 	MTS PATHFINDER	2014-05-02 11:08:06-04	\N
232004783 	DHB DOUGHTY	2012-04-15 16:57:56-04	\N
232004784 	DHB DAUNTLESS	2016-08-28 02:21:03-04	\N
232004830 	SUNNY DAY V	2017-02-11 19:40:23-05	\N
232004995 	AMARI TOO	2018-01-16 14:58:09-05	\N
232005254 	STRATHFOYLE	2018-08-01 07:52:43-04	\N
232005263 	JENNY	2017-01-14 16:37:53-05	\N
232005319 	FS ABERDOUR	2016-05-25 20:39:32-04	\N
232005321 	FS ABERGELDIE	2013-05-01 01:40:58-04	\N
232005410 	MFV VAN DIJCK	2017-05-28 03:18:05-04	\N
232005414 	CALLISTO	2018-12-06 15:09:45-05	\N
232005420 	F/V GEESKE	2017-09-15 09:50:05-04	\N
232005439 	HOLLY SHAI	2016-03-18 12:41:55-04	\N
232005460 	MFV PAMELA JILL	2013-05-17 00:41:57-04	\N
232005520 	MFV SAM OF LADRAM	2016-03-28 13:49:00-04	\N
232005530 	F/V HOLLY ANNE	2017-05-31 07:44:33-04	\N
232005533 	SCOT LEADER	2014-06-13 06:32:51-04	\N
232005554 	KING POWER	2017-12-14 07:54:29-05	\N
232005596 	BW MINDORO	2017-05-08 20:23:56-04	\N
232005630 	FV ST GEORGES PZ1053	2012-08-25 20:56:20-04	\N
232005662 	FISHER PRICE 2	2013-02-15 12:26:55-05	\N
232005700 	FV RESURGAM PZ 1001	2012-09-12 13:29:40-04	\N
232005737 	PB BARRACUDA	2016-10-23 16:29:28-04	\N
232005780 	TWILIGHT III PZ137	2012-12-04 14:47:54-05	\N
232005827 	LODE	2016-02-26 02:06:13-05	\N
232005890 	FV TREVESSA IV	2015-07-22 11:58:13-04	\N
232005975 	ICENI DEFENDER	2012-08-31 15:44:25-04	\N
232006030 	F/V MIRANDA	2018-01-04 11:59:26-05	\N
232006139 	SOUND EXPRESS	2016-01-29 12:42:52-05	\N
232006167 	BOY ANDREW	2015-05-29 17:24:17-04	\N
232006209 	BIG G	2014-03-19 16:06:44-04	\N
232006223 	PLAY THE GAME	2015-07-14 01:25:10-04	\N
232006290 	BEARFOOT	2018-08-31 13:21:05-04	\N
232006337 	BISCAY SENTINEL	2016-05-03 10:47:24-04	\N
232006364 	HENK SENIOR	2015-08-26 23:26:04-04	\N
232006368 	FRELSI	2016-09-27 14:37:18-04	\N
232006483 	SEACAT ENTERPRISE	2017-08-07 02:42:21-04	\N
232006506 	PATHWAY	2012-01-21 20:32:58-05	\N
232006511 	CMA CGM A. LINCOLN	2013-03-14 22:03:23-04	\N
232006603 	PACIFIC EXPLORER	2014-09-07 10:51:44-04	\N
232006643 	GINA MARY	2013-10-02 10:35:35-04	\N
232006659 	POLARIS	2014-02-02 00:06:12-05	\N
232006679 	STANDARD PRINCESS	2018-03-06 05:42:17-05	\N
232006684 	GRAHAM ROBERTSON	2016-09-19 14:03:48-04	\N
232006748 	NORDIC LONDON	2013-01-01 22:35:35-05	\N
232006869 	PILOT MADIGAN	2015-01-20 11:58:10-05	\N
232006912 	JAM TART	2017-01-13 01:08:10-05	\N
232007020 	FS BALMORAL	2018-01-20 01:53:47-05	\N
232007024 	CAELUM	2015-04-13 13:48:00-04	\N
232007124 	CHRISTELLE	2018-01-21 04:19:43-05	\N
232007224 	AT LAST	2012-05-29 19:24:57-04	\N
232007444 	MANOR VENTURE	2013-10-27 09:19:41-04	\N
232007481 	KIERA FIONA	2016-09-13 07:11:10-04	\N
232007487 	SVITZER MONARCH	2015-07-19 15:28:41-04	\N
232007488 	SVITZER GANGES	2018-01-23 09:13:31-05	\N
232007501 	DUNE	2016-10-13 19:15:30-04	\N
232007788 	HARRIET EVE TO50	2015-03-28 10:30:15-04	\N
232007860 	ISLA-B (GUARD)	2016-10-19 23:17:27-04	\N
232007970 	GERTRUDE ANN	2012-10-03 19:25:10-04	\N
232008182 	ANNIE E	2012-02-05 17:29:54-05	\N
232008399 	WINDCAT 40	2015-08-07 15:27:31-04	\N
232008510 	ARELI	2016-11-08 12:54:22-05	\N
232008552 	NEW TIMES	2013-01-02 13:51:43-05	\N
232008600 	EDDA MISTRAL	2016-06-28 10:44:11-04	\N
232008636 	VOE VANGUARD	2018-12-27 13:54:04-05	\N
232008661 	SCOT NAVIGATOR	2018-10-12 13:39:24-04	\N
232008821 	JUPITER CLIPPER	2016-08-05 16:57:25-04	\N
232008822 	MERCURY CLIPPER	2013-12-09 13:27:07-05	\N
232008824 	ARWYDD	2015-06-15 05:10:05-04	\N
232008874 	BIBBY WAVEMASTER 1	2012-03-17 06:58:37-04	\N
232008913 	FLOATING BRIDGE # 6	2018-05-20 14:30:33-04	\N
232008936 	MERRY JACK	2018-07-30 09:09:39-04	\N
232008947 	FV NORTHERN JOY H225	2013-02-05 19:27:24-05	\N
232008948 	KITTIWAKE	2014-07-22 12:13:29-04	\N
232008955 	MO4	2014-06-01 23:03:01-04	\N
232008958 	MINT JULEP	2019-01-01 11:15:35-05	\N
232009007 	AYA	2016-11-08 08:01:07-05	\N
232009194 	SPRING QUARTET	2012-05-16 15:41:47-04	\N
232009406 	MINA OF DARTMOUTH	2016-05-13 12:30:59-04	\N
232009504 	SEACAT LIBERTY	2019-01-13 20:02:10-05	\N
232009512 	HARDY II	2014-12-25 12:59:48-05	\N
232009775 	LORELEI	2015-03-25 14:09:21-04	\N
232009969 	SPARTINA	2013-05-11 20:27:50-04	\N
232010117 	OBNOXIOUS	2017-02-18 22:37:30-05	\N
232010194 	SPIRIT OF HADZOR	2013-06-16 19:06:12-04	\N
232010351 	DILIGENT JO	2014-11-23 09:41:12-05	\N
232010486 	USV M	2015-02-01 14:07:17-05	\N
232010560 	OOC NERZ	2018-05-14 22:33:23-04	\N
232010625 	FENCHURCH	2012-10-23 17:41:30-04	\N
232010629 	BEATRIX	2013-09-27 14:23:43-04	\N
232010652 	CAPALL MARA	2018-09-19 08:53:06-04	\N
232011021 	SVITZER AVON	2014-10-31 06:40:23-04	\N
232011045 	SAMA	2015-09-06 09:01:05-04	\N
232011198 	SUPERMAN	2016-06-18 02:32:55-04	\N
232011202 	ALTARAMA	2016-03-06 09:24:17-05	\N
232011423 	MANTA RAY	2017-04-29 06:28:21-04	\N
232011493 	MARINER B	2014-04-09 05:43:19-04	\N
232011496 	FS BRAEMAR	2014-03-27 22:16:41-04	\N
232011790 	PIPIN	2016-07-22 20:30:53-04	\N
232012046 	NORDIC BREEZE	2014-05-08 11:14:21-04	\N
232012089 	HELLESPONT PRIDE	2016-08-16 09:13:53-04	\N
232012173 	TALLULA	2016-10-05 13:20:22-04	\N
232012281 	QUIET STORM	2018-01-06 15:22:24-05	\N
232012383 	DRAGON	2017-04-07 20:47:26-04	\N
232012443 	SANDBANK FERRY	2017-07-12 12:15:21-04	\N
232012541 	SAUL GOODMAN	2012-10-28 13:44:06-04	\N
232012584 	MFV KCJ ROSE	2018-06-06 10:20:40-04	\N
232012585 	ANGLO RED	2017-03-16 02:45:53-04	\N
232012641 	OSPREY	2013-09-15 12:06:43-04	\N
232012707 	LENA H	2017-11-19 22:13:42-05	\N
232012756 	NEPTUNE	2018-07-26 16:02:54-04	\N
232012892 	NAVY	2016-06-21 19:27:55-04	\N
232012901 	A LITLE RISQUE	2017-07-21 18:47:30-04	\N
232012927 	ELLERY A	2014-11-18 04:28:21-05	\N
232012972 	OASIS	2013-03-18 10:43:21-04	\N
232012996 	NOBLEMAN	2012-03-28 02:58:53-04	\N
232013011 	GV LOUISE THOMSEN	2015-03-02 05:18:18-05	\N
232013153 	CHAMPAGNE MOMENT	2013-04-18 07:23:31-04	\N
232013230 	NJORD ZENITH	2018-06-06 14:33:22-04	\N
232013472 	TRUE LUFF	2014-10-08 14:52:30-04	\N
232013499 	SC MACAW	2012-04-30 14:53:06-04	\N
232013517 	KERED	2013-11-29 22:49:16-05	\N
232013527 	HELLESPONT PROGRESS	2016-07-26 12:32:16-04	\N
232013549 	ABALONE	2013-09-04 18:38:30-04	\N
232013572 	ESCAPE 2 SEA	2014-03-07 13:49:46-05	\N
232013577 	ANGRY WASP	2013-10-16 00:52:56-04	\N
232013687 	HAWL AWAY	2013-03-04 16:41:49-05	\N
232013701 	OUR DAVID GEORGE	2012-02-18 09:09:42-05	\N
232013749 	ARWEN	2014-05-29 10:06:33-04	\N
232013885 	WEM-2	2018-02-12 14:46:55-05	\N
232013992 	HULLABALOO	2012-08-08 17:29:46-04	\N
232014066 	TAITS FR229	2015-03-23 03:27:17-04	\N
232014279 	MAY LILLIAN	2015-06-10 21:05:32-04	\N
232014339 	FS CARRICK	2012-06-25 00:23:05-04	\N
232014461 	SASSY LADY TOO	2017-07-13 01:30:12-04	\N
232014502 	JULIA CAROLINE	2018-01-08 21:01:09-05	\N
232014536 	KOMODO	2013-09-07 14:12:46-04	\N
232014705 	NAO GALAXY	2017-10-02 21:57:36-04	\N
232014706 	NAO GUARDIAN	2013-02-14 06:56:50-05	\N
232014716 	NAO HORIZON	2018-12-14 17:04:38-05	\N
232014850 	DISTRIBUTOR	2012-12-28 07:53:54-05	\N
232014879 	BON VENTURA	2012-10-16 21:39:36-04	\N
232014966 	SOLENT DREAM	2016-07-21 10:10:53-04	\N
232015045 	OCEAN STAR	2013-04-28 19:21:06-04	\N
232015239 	PULLMAN	2012-06-16 21:46:25-04	\N
232015468 	SEAWAY AIMERY	2016-01-31 10:50:10-05	\N
232015526 	BELLEZA OF LONDON	2015-03-17 00:31:59-04	\N
232015629 	RED JET 7	2012-10-21 11:32:20-04	\N
232015744 	SUPERNOVA	2012-07-14 07:51:34-04	\N
232015829 	HONOR	2018-07-06 09:12:38-04	\N
232015835 	HAMBLE DREAM	2017-07-14 08:53:19-04	\N
232015861 	CRAIGLEITH	2016-03-01 15:06:58-05	\N
232015947 	ANGELA SKI- 2	2013-08-14 19:52:43-04	\N
232016154 	BUSCADERA	2015-02-07 10:57:10-05	\N
232016302 	ARGENTA	2014-05-23 11:14:59-04	\N
232016572 	JOSLYN	2018-04-27 05:05:57-04	\N
232016592 	ASHANTI	2012-02-04 01:19:33-05	\N
232016768 	CORRIB FISHER	2015-03-17 20:44:48-04	\N
232016793 	TRENT FISHER	2017-10-14 00:21:17-04	\N
232016880 	CLEWDO	2014-09-16 00:24:05-04	\N
232016969 	SAPPHIRE	2015-08-24 04:03:35-04	\N
232017193 	HST HUDSON	2014-03-19 02:30:00-04	\N
232017420 	PUTFORD PHOENIX	2013-06-01 23:44:25-04	\N
232017460 	BW SILICON	2016-05-01 21:12:07-04	\N
232017592 	SVITZER AMAZONAS	2012-12-05 10:15:54-05	\N
232017739 	SC EMERALD	2017-07-06 15:02:20-04	\N
232017761 	LADY LARISA	2015-01-14 14:25:14-05	\N
232017774 	UMIKO	2017-02-13 04:50:47-05	\N
232017796 	BEN WOOLLACOTT	2013-06-08 03:06:09-04	\N
232017797 	DAME VERA LYNN	2012-07-14 10:28:28-04	\N
232017990 	RIDGEBACK	2016-05-15 19:43:17-04	\N
232018019 	MFV SAXON SPIRIT	2018-07-02 23:47:28-04	\N
232018048 	BERGE GALDHOPIGGEN	2014-12-12 06:15:37-05	\N
232018189 	LASTOCHKA	2013-11-04 11:58:00-05	\N
232018240 	JANNETJE CORNELIS	2019-01-25 00:25:15-05	\N
232018251 	MINI Y	2017-12-24 02:20:20-05	\N
232018267 	MV SCOT CARRIER	2018-09-02 07:42:57-04	\N
232018309 	RAPSCALLION	2018-10-16 01:56:13-04	\N
232018328 	PENINSULA IX	2017-09-06 02:27:02-04	\N
232018469 	SHARLOU	2015-11-29 08:06:16-05	\N
232018697 	BERGE NYANGANI	2012-06-03 13:45:03-04	\N
232018799 	SVITZER MERIDIAN	2015-03-05 05:41:48-05	\N
232018898 	OLIVIA	2018-06-19 05:09:51-04	\N
232019124 	SEA KAT	2014-03-28 14:03:55-04	\N
232019303 	FREEDOM	2017-09-05 07:27:45-04	\N
232019382 	FCS SEAGULL	2017-04-14 05:32:35-04	\N
232019471 	OCEAN DON	2016-12-10 16:18:08-05	\N
232019499 	VENUS CLIPPER	2018-01-18 11:40:33-05	\N
232019514 	SVITZER HAWK	2015-06-03 23:20:17-04	\N
232019568 	GOOD DOG	2013-06-30 05:13:17-04	\N
232019612 	JULIE OF LADRAM	2014-06-13 06:35:22-04	\N
232019641 	CHINDIT	2018-03-02 11:32:32-05	\N
232019673 	HORATIO	2013-05-19 06:53:03-04	\N
232019712 	VOS TRAPPER	2018-03-04 17:41:41-05	\N
232019714 	ELWI	2013-09-05 10:29:23-04	\N
232019741 	GANESHA	2014-06-02 14:11:28-04	\N
232019804 	KOMMANDOR SUSAN	2018-04-23 13:28:53-04	\N
232019974 	MIMI LA SARDINE	2017-07-25 21:14:17-04	\N
232020141 	HIMATANGI	2015-11-15 13:18:02-05	\N
232022000 	CYAN	2018-02-07 00:52:44-05	\N
232054955 	SILVER STURGEON	2016-12-08 05:36:18-05	\N
232197000 	KAIARAHI	2014-09-07 21:28:53-04	\N
232204000 	VIVID	2012-05-13 05:16:00-04	\N
232215000 	SAND FALCON	2013-04-26 02:22:15-04	\N
232217000 	OCEAN OBSERVER	2015-04-09 00:42:24-04	\N
232247000 	M/Y AKULA	2015-09-09 23:43:22-04	\N
232284000 	NASHIRA II	2014-02-05 19:31:07-05	\N
232419000 	SEVEN NAVICA	2012-01-18 23:40:07-05	\N
232470000 	M/Y PETARA	2012-01-20 11:36:03-05	\N
232501000 	M/Y:QUINTESSA	2017-03-18 14:29:52-04	\N
232503000 	SUNBEAM FR487	2016-06-22 02:57:13-04	\N
232527000 	PORTOSALVO	2013-08-15 15:22:04-04	\N
232568000 	VOS SUPPORTER	2016-12-12 00:15:06-05	\N
232585000 	REVER POLARIS	2015-05-07 22:29:38-04	\N
232589000 	MONTROSE ALPHA	2014-08-22 15:06:09-04	\N
232626000 	SAND HERON	2018-10-18 18:34:50-04	\N
232649000 	HEBRIDEAN PRINCESS	2017-09-10 11:34:42-04	\N
232698000 	ANNIE PG	2018-12-17 05:14:21-05	\N
232752000 	GOOD HOPE MAX	2013-04-24 21:35:34-04	\N
232814000 	PUTFORD VOYAGER	2012-08-28 00:52:08-04	\N
232829000 	LOCH RANNOCH	2014-02-23 20:12:31-05	\N
232886000 	GRAMPIAN ORCADES	2017-05-11 13:10:42-04	\N
232892000 	CS SOVEREIGN	2016-06-09 23:41:26-04	\N
232957000 	RIO RITA	2016-11-25 08:50:13-05	\N
232967000 	MAXOU	2014-08-09 23:42:45-04	\N
233009000 	PRIDE OF KENT	2017-11-11 02:16:00-05	\N
233028000 	WILLOWGARTH	2014-06-28 11:04:38-04	\N
233071000 	ALBATROSS	2014-02-14 06:29:43-05	\N
233150000 	CITY OF SUNDERLAND	2012-01-17 03:46:10-05	\N
233185000 	PHAROS	2012-03-18 16:34:09-04	\N
233217000 	ST EVAL	2013-07-24 14:30:13-04	\N
233303000 	RFA ARGUS	2014-11-03 14:56:23-05	\N
233322000 	CITY OF LONDON	2013-06-06 21:14:38-04	\N
233342000 	MFV ANN MARIE	2016-08-17 21:49:14-04	\N
233346000 	VOS VICTORY	2018-03-07 08:43:05-05	\N
233558000 	CORYSTES	2015-09-28 15:21:11-04	\N
233681000 	HARDING	2015-01-12 21:41:22-05	\N
233694000 	OCEAN ENDEAVOUR	2017-02-05 21:36:58-05	\N
233933000 	CABLE INNOVATOR	2012-02-13 10:25:44-05	\N
233952012 	LADY VICTORIA	2018-11-19 13:03:14-05	\N
233975000 	SFF GV ARTEMIS	2015-03-04 13:28:03-05	\N
234028000 	M/Y ASTRALIUM	2014-07-02 11:44:33-04	\N
234171000 	NASHACHATA II	2016-07-30 22:56:40-04	\N
234203000 	PD147 ENTERPRISE	2014-06-14 18:18:26-04	\N
234234000 	JAYNEE W	2013-03-30 01:55:42-04	\N
234552000 	GALWAY FISHER	2014-08-31 19:24:54-04	\N
234605000 	HMS TYNE	2017-09-30 17:03:16-04	\N
234638000 	HMS ST ALBANS	2016-06-25 20:55:31-04	\N
234740000 	LA MASCARADE	2016-06-23 21:33:37-04	\N
234789000 	THAMES FISHER	2018-09-19 04:41:11-04	\N
234845000 	S/Y ALEJANDRA	2013-01-05 11:13:33-05	\N
234910000 	LESLEY PG	2016-02-15 07:24:09-05	\N
234979000 	PUTFORD   TERMINATOR	2015-01-08 06:47:24-05	\N
234983000 	BEN MY CHREE	2017-10-25 15:55:51-04	\N
235000031 	AYTON CROSS	2014-02-12 07:42:19-05	\N
235000073 	SD PADSTOW	2015-09-27 07:01:31-04	\N
235000148 	SD ORONSAY	2013-09-30 13:53:10-04	\N
235000164 	GRAY TEST	2017-06-21 00:20:23-04	\N
235000170 	OCEAN PIONEER FR928	2017-10-03 21:46:31-04	\N
235000322 	WILLIAM WALLACE	2015-11-19 03:26:01-05	\N
235000360 	F/V BARENTSZEE	2015-06-27 19:15:44-04	\N
235000377 	SEALION	2015-08-18 01:09:28-04	\N
235000407 	OCEAN MAID BA55	2013-12-27 06:25:30-05	\N
235000480 	SYLVIA BOWERS	2015-10-17 16:17:05-04	\N
235000500 	POLE STAR	2016-10-24 15:48:26-04	\N
235000743 	SPARKLING SEA N183	2014-06-15 21:32:27-04	\N
235000756 	TARTAN A	2013-06-07 10:42:16-04	\N
235000928 	MFV MERCURIUS M277	2017-05-30 06:50:55-04	\N
235000939 	KRISTELL	2016-10-15 16:10:38-04	\N
235000940 	TORNEDALEN	2017-09-30 16:31:31-04	\N
235001135 	SVITZER LAURA	2013-04-27 00:39:11-04	\N
235001318 	MFV EXCEL	2014-05-13 04:00:43-04	\N
235001420 	ALISON KAY	2017-12-31 04:10:31-05	\N
235001720 	S.Y.HUCKLEBERRY	2013-01-19 05:01:07-05	\N
235001800 	MFV WILLIAM HENRY II	2015-02-15 12:59:07-05	\N
235001841 	FV ROYAL SOVEREIGN	2012-03-25 01:24:04-04	\N
235001910 	MOONSHINER	2014-06-02 08:25:16-04	\N
235001921 	ELIZABETH N	2019-02-12 14:49:18-05	\N
235002016 	ERNESTINA	2017-03-05 22:43:05-05	\N
235002165 	TJEERD JACOBA DS7	2017-09-29 23:02:25-04	\N
235002514 	ST CLARE	2016-06-10 07:28:03-04	\N
235002520 	SCOT MARINER	2015-04-26 07:38:12-04	\N
235002733 	BOANDARO	2015-03-22 11:15:37-04	\N
235002800 	FV ADMIRAL GRENVILLE	2018-12-15 17:20:48-05	\N
235002830 	ADMIRAL BLAKE	2015-05-02 23:20:17-04	\N
235003276 	CHATTERBOX	2012-12-14 17:44:16-05	\N
235003310 	F/V_CHARISMA PW45	2013-01-28 00:27:05-05	\N
235003348 	SUN CLIPPER	2017-03-25 02:59:43-04	\N
235003355 	FV HELEN CLAIRE.	2015-01-16 10:15:03-05	\N
235003636 	SD KYLE OF LOCHALSH	2018-09-30 00:13:42-04	\N
235003665 	SOLENT SCENE	2016-02-10 03:55:40-05	\N
235003790 	TS JOHN JERWOOD	2015-01-02 20:13:29-05	\N
235003829 	MFV ENDURANCE KY77	2017-10-31 02:41:38-04	\N
235003950 	DESAMIS_B	2015-06-24 11:38:15-04	\N
235003968 	TRINITY STAR	2013-08-09 01:41:20-04	\N
235004026 	NEBULA	2019-01-20 00:50:55-05	\N
235004036 	ASTURIAS	2019-02-15 00:41:58-05	\N
235004070 	BOY CHRISTOPHER	2017-08-25 09:25:48-04	\N
235004140 	CORNELIS GERT JAN	2017-09-24 14:19:35-04	\N
235004230 	EDWARD HENRY	2013-09-23 17:31:29-04	\N
235004366 	SD MOORFOWL	2017-08-08 02:41:05-04	\N
235004391 	DAVID CHURCH	2012-12-17 12:06:54-05	\N
235004469 	GUIDE	2015-05-17 15:49:32-04	\N
235004471 	P.V.ESTUARY LEADER	2015-10-03 11:23:22-04	\N
235004829 	UKD SEALION	2018-09-20 07:03:14-04	\N
235005115 	RNLI LIFEBOAT 17-31	2017-02-02 11:23:24-05	\N
235005118 	RNLI LIFEBOAT 17-32	2017-07-10 22:56:49-04	\N
235005270 	CEFAS ENDEAVOUR	2013-10-24 00:01:37-04	\N
235005350 	QUO VADIS	2015-01-22 21:46:07-05	\N
235005457 	FV EMILIA JAYNE BM10	2018-04-11 22:19:50-04	\N
235005740 	FV SOLA FIDE	2017-08-22 20:27:46-04	\N
235006080 	LA NOVIA	2012-10-17 13:49:58-04	\N
235006336 	MORNING LIGHT	2012-09-20 03:15:40-04	\N
235006642 	SMIT CERNE	2014-09-25 10:31:02-04	\N
235006670 	VIKINGLAND	2018-09-03 14:28:56-04	\N
235006680 	RED OSPREY	2016-03-29 19:36:55-04	\N
235006758 	OSTSEE STAR	2012-06-19 02:28:09-04	\N
235007070 	F/V JACOBA	2017-04-28 02:11:21-04	\N
235007140 	M5	2015-09-21 15:55:43-04	\N
235007275 	MFV SARA LENA	2018-09-12 09:22:05-04	\N
235007420 	NEW DAWN FR470	2017-08-02 03:18:09-04	\N
235007561 	SMIT FROME	2012-07-10 17:17:01-04	\N
235007570 	MFV MARTINE	2013-05-02 09:10:07-04	\N
235007616 	ZOE DUE	2015-06-14 04:22:16-04	\N
235007690 	SIRI KNUTSEN	2014-07-11 03:52:23-04	\N
235007860 	FD283 TRUI UAN HINTE	2013-10-23 17:02:02-04	\N
235007990 	VERITY	2015-05-03 21:05:16-04	\N
235008047 	BOY ETHAN B215	2013-03-14 06:47:54-04	\N
235008143 	LA JOIE D	2016-08-02 09:16:11-04	\N
235008177 	SMIT SPEY	2015-02-06 06:37:03-05	\N
235008440 	M/T KEEWHIT	2017-02-24 23:11:25-05	\N
235008476 	CALICO	2018-04-26 02:43:04-04	\N
235008564 	RED JET 4	2016-11-16 23:40:37-05	\N
235008641 	CH HORN	2015-07-11 03:50:24-04	\N
235008665 	MFV STEPHANIE M177	2017-06-22 20:44:19-04	\N
235008741 	LOUISA N PZ101	2013-05-08 21:22:05-04	\N
235008860 	REVIVAL FR316	2013-07-18 06:32:35-04	\N
235008928 	LOCH PORTAIN	2016-09-14 03:31:49-04	\N
235009060 	F/V:DEFIANT FY848	2014-04-26 08:33:53-04	\N
235009760 	CAPE FLAMINGO	2013-10-22 09:50:55-04	\N
235009850 	EVER SIGMA	2015-01-31 10:15:13-05	\N
235009956 	WHITCHAMPION	2016-01-19 22:23:30-05	\N
235010000 	CHALLENGER 4	2014-05-19 00:45:47-04	\N
235010110 	MFV GOLDEN PROMISE	2016-12-14 23:42:04-05	\N
235010170 	SIDER AMY	2016-11-17 19:51:57-05	\N
235010197 	PAX	2017-08-30 08:24:54-04	\N
235010263 	ASSASSIN	2015-05-03 07:05:40-04	\N
235010450 	EVER SMART	2012-05-22 15:43:16-04	\N
235010500 	DOVER SEAWAYS	2017-10-08 19:57:55-04	\N
235010520 	GRAMPIAN CONTENDER	2016-01-17 14:31:08-05	\N
235010600 	FINNLAND	2012-08-18 09:45:43-04	\N
235010620 	SVITZER STANLOW	2015-06-10 04:18:40-04	\N
235010690 	ALERT	2015-01-26 12:14:04-05	\N
235010720 	GEOHOLM	2012-09-26 17:57:23-04	\N
235010890 	BINA	2012-01-15 04:34:38-05	\N
235011030 	GIJON KNUTSEN	2013-02-14 12:18:31-05	\N
235011110 	MY SIROCCO	2012-04-09 08:20:51-04	\N
235011218 	HELEN JANE 2	2015-04-01 14:20:59-04	\N
235011376 	SVITZER BRISTOL	2016-07-21 23:51:29-04	\N
235011848 	SVITZER VICTORY	2018-10-18 05:01:54-04	\N
235011986 	MARY SIOBHAN	2016-11-12 05:48:45-05	\N
235012220 	FEMBRIA	2014-07-03 04:24:02-04	\N
235012507 	ELLISA	2017-06-20 00:25:27-04	\N
235012605 	SVITZER BRUNEL	2017-12-18 13:59:07-05	\N
235012843 	BONOBO	2013-02-18 19:31:28-05	\N
235013204 	FAR FETCHED	2019-01-29 21:05:38-05	\N
235013325 	GOLDEN EMBLEM	2018-04-14 10:43:47-04	\N
235013375 	PILOT BOAT HASLAR	2018-01-02 18:56:57-05	\N
235013782 	SVITZER BOOTLE	2017-06-06 17:02:10-04	\N
235013829 	PILOT BOAT HAMSTEAD	2013-09-12 22:41:04-04	\N
235014266 	FLATHOLM	2015-05-22 04:31:07-04	\N
235014278 	SVITZER BIDSTON	2019-01-05 21:38:59-05	\N
235014365 	RED FALCON	2017-02-25 20:16:17-05	\N
235014753 	S/Y CAVEO	2013-08-16 20:15:43-04	\N
235015046 	ATALAYA	2016-09-21 14:58:25-04	\N
235016787 	WILANNE	2016-09-03 12:00:34-04	\N
235017045 	PLYMOUTH QUEST	2019-01-01 08:43:55-05	\N
235018062 	LESLEY M	2017-06-03 02:09:49-04	\N
235018872 	WINDCAT 1	2012-09-29 02:08:14-04	\N
235020479 	AURIGNY SOLACE	2015-10-09 23:56:16-04	\N
235020899 	SVITZER MILFORD	2014-07-02 07:12:05-04	\N
235021215 	WAGTAIL	2015-03-07 09:46:14-05	\N
235021256 	SY ALEXIA	2017-09-04 16:00:04-04	\N
235021304 	SOLI DEO GLORIA	2015-02-08 05:36:58-05	\N
235021316 	ASHOKAN	2017-08-29 14:40:34-04	\N
235021785 	TURTLE	2012-10-19 22:40:57-04	\N
235022000 	SASSAFRAS	2018-07-09 16:20:09-04	\N
235022603 	MT IMPULSE	2017-12-16 10:41:48-05	\N
235022612 	PATROL	2017-02-05 06:49:18-05	\N
235023045 	SVITZER STANFORD	2016-02-21 07:03:57-05	\N
235023353 	GALLIVANT	2017-12-25 11:48:14-05	\N
235024007 	ROYAL IRIS	2018-11-21 07:03:59-05	\N
235024473 	PROVIDENT	2013-11-20 18:20:18-05	\N
235024568 	COASTWORKER	2013-04-14 08:08:05-04	\N
235024997 	GALMARA	2015-11-05 12:44:33-05	\N
235025112 	BUTE	2013-11-28 05:48:42-05	\N
235025319 	OUR ANNA	2018-10-18 09:21:50-04	\N
235025323 	SVITZER FERRIBY	2012-03-23 17:06:32-04	\N
235026165 	CORRINGHAM	2017-07-20 05:10:26-04	\N
235026268 	GARIBALDO	2018-09-27 11:47:23-04	\N
235026811 	DUKE OF NORMANDY	2018-11-15 08:55:43-05	\N
235027115 	SY SARAVA	2017-01-20 23:31:40-05	\N
235027205 	WILD THYME	2016-09-27 08:22:38-04	\N
235028378 	KARANITA	2016-11-16 02:34:29-05	\N
235028825 	DUNKERQUE SEAWAYS	2013-12-19 06:42:18-05	\N
235028893 	RV CALLISTA	2017-09-27 22:22:59-04	\N
235030851 	RIX MERLIN	2013-11-24 16:56:37-05	\N
235031438 	CELESTE OF SOLENT	2012-01-11 19:42:44-05	\N
235031462 	ACCOMODATION PLAT 1	2014-08-19 10:10:36-04	\N
235031582 	LADY ANNA OF FIFE	2012-03-11 13:24:11-04	\N
235031618 	ST FAITH	2013-05-30 06:53:01-04	\N
235031707 	PV NEPTUNE	2018-06-23 18:17:03-04	\N
235032256 	BOUZY	2013-07-10 15:10:22-04	\N
235032469 	SVITZER WARDEN	2015-08-29 12:58:24-04	\N
235032474 	SVITZER HARTY	2014-12-27 18:52:00-05	\N
235032573 	PV VENUS	2012-12-14 10:14:46-05	\N
235032574 	PV HUMBER SATURN	2012-06-20 07:38:35-04	\N
235033181 	BOBO	2014-09-30 04:33:40-04	\N
235033694 	JULIE ANN BRD97	2014-01-28 07:39:47-05	\N
235034317 	SKOMER	2015-03-03 20:14:50-05	\N
235034786 	MANTA	2013-12-06 04:31:02-05	\N
235034989 	TRIPLEGEM	2016-10-27 23:09:32-04	\N
235035058 	NOMADIC STAR	2013-12-10 02:56:11-05	\N
235035113 	VASALAND	2015-12-20 19:34:11-05	\N
235035233 	ILEX OF UPNOR	2018-09-24 18:42:01-04	\N
235036365 	WINDCAT 3	2012-11-06 12:49:54-05	\N
235036791 	NARNIA	2018-02-26 05:03:46-05	\N
235037205 	MANTA RAY	2014-11-29 14:19:00-05	\N
235037917 	SVITZER SHOTLEY	2013-01-19 16:08:33-05	\N
235037944 	TWISTED	2015-10-04 10:15:54-04	\N
235038124 	FINAL AFFAIR	2018-11-06 23:22:34-05	\N
235038688 	S/Y STAY CALM	2016-03-30 04:45:25-04	\N
235039296 	RAMBLING ROSE	2014-08-27 16:08:45-04	\N
235039496 	BREEZEE	2014-03-15 21:53:01-04	\N
235039505 	GREY GOOSE	2018-09-05 08:34:53-04	\N
235040503 	WHITONIA	2018-04-10 02:46:39-04	\N
235056986 	TYPHOON CLIPPER	2016-11-18 19:51:39-05	\N
235056991 	METEOR CLIPPER	2015-12-01 17:20:56-05	\N
235057011 	MONSOON CLIPPER	2013-08-11 11:39:25-04	\N
235057012 	TORNADO CLIPPER	2016-11-25 11:25:06-05	\N
235057247 	MIRAGE	2012-06-28 09:59:01-04	\N
235057604 	WINDQUEST	2013-06-27 09:18:23-04	\N
235057789 	WINDCAT6	2016-08-18 18:58:43-04	\N
235058304 	MULTRATUG 5	2014-09-11 21:35:17-04	\N
235058334 	SI VIS PACEM	2017-04-18 00:03:57-04	\N
235058335 	4A	2018-07-12 20:42:15-04	\N
235058391 	CMA CGM SWORDFISH	2017-04-11 00:32:37-04	\N
235059199 	VOS INSPIRER	2017-05-07 15:18:49-04	\N
235059213 	TOISA PALADIN	2017-02-23 03:37:44-05	\N
235059382 	CMA CGM TARPON	2018-07-10 03:25:22-04	\N
235059487 	CORONA SEA	2017-01-01 19:55:34-05	\N
235059574 	JOKER	2012-12-17 20:16:14-05	\N
235059765 	PAULA C	2012-09-30 05:48:30-04	\N
235059857 	RV ALBA NA MARA	2014-08-11 15:27:42-04	\N
235060142 	SEA HAVEN	2013-11-28 11:14:56-05	\N
235060175 	ZAZU	2017-07-28 08:34:51-04	\N
235060176 	SEVEN SEAS	2013-06-06 20:36:09-04	\N
235060252 	CPO ENGLAND	2017-01-15 04:00:37-05	\N
235060255 	CPO GERMANY	2017-07-16 10:12:59-04	\N
235060301 	AKEMI	2013-02-04 02:08:26-05	\N
235060304 	ENERGY CENTURION	2013-04-29 05:42:56-04	\N
235060356 	FATIMA II	2016-10-09 21:03:50-04	\N
235060454 	BRITISH SAPPHIRE	2018-06-09 13:23:03-04	\N
235060549 	EILEENA FRANCESCA	2016-04-06 21:19:04-04	\N
235060723 	QUO VADIS	2018-07-27 06:09:28-04	\N
235060766 	NOORD STER	2012-01-13 19:36:54-05	\N
235060914 	SCOT PIONEER	2012-04-10 18:28:33-04	\N
235060989 	HAFNIA SEA	2013-07-18 19:59:32-04	\N
235061022 	MEAMINA	2016-03-30 16:58:10-04	\N
235061272 	MFV EMILY ROSE	2016-09-09 11:08:19-04	\N
235061329 	HIRTA	2013-06-18 11:04:18-04	\N
235061559 	ANNIE	2014-08-08 13:16:02-04	\N
235061705 	PENTALINA	2015-11-27 19:24:29-05	\N
235061786 	LE JOUANNET	2014-10-28 07:36:30-04	\N
235062011 	POLYAIGOS	2015-05-01 14:29:03-04	\N
235062013 	M/Y SALU	2018-06-29 09:18:20-04	\N
235062268 	JADIAS	2013-03-05 04:59:39-05	\N
235062421 	WELL ENHANCER	2016-02-01 14:23:05-05	\N
235062658 	ANDREAS L	2014-05-23 08:47:33-04	\N
235062747 	WINDCAT19	2016-09-17 02:49:43-04	\N
235062807 	H.M.DENHAM	2015-08-24 05:09:11-04	\N
235063065 	VOS PIONEER	2016-12-11 09:51:31-05	\N
235063153 	TEDDY CRUISER	2016-09-03 18:59:39-04	\N
235063155 	MTS VALIANT	2019-01-07 14:48:31-05	\N
235063361 	LA CHOUETTE	2018-12-09 01:29:26-05	\N
235063728 	SVITZER WATERSTON	2013-07-23 07:54:38-04	\N
235063849 	SVITZER GELLISWICK	2018-10-15 07:21:51-04	\N
235063852 	SVITZER MUSSELWICK	2013-09-18 08:02:49-04	\N
235063854 	SVITZER WATWICK	2012-03-10 09:26:20-05	\N
235064093 	JACQUI-A	2018-03-25 14:47:32-04	\N
235064101 	LATTITUDE ADJUSTMENT	2018-10-11 00:10:31-04	\N
235064422 	ESME	2017-10-19 18:44:04-04	\N
235064475 	MONOGIRL 2	2013-10-21 17:46:25-04	\N
235064508 	BOBBY DAZZLER	2017-02-09 09:23:21-05	\N
235064534 	DOLPHIN	2017-06-02 03:08:38-04	\N
235064573 	MTS VECTOR	2013-10-09 22:10:08-04	\N
235064668 	PELICAN	2015-04-24 09:03:02-04	\N
235064777 	WIGHT SUN	2013-11-09 17:31:03-05	\N
235064784 	WIGHT LIGHT	2013-07-31 12:12:52-04	\N
235064795 	BRYHER	2013-03-16 17:43:11-04	\N
235064991 	BERTILLAC	2015-01-17 20:30:13-05	\N
235065329 	MALAGO	2013-07-29 13:55:02-04	\N
235065811 	RED MOON	2018-08-14 02:45:24-04	\N
235065812 	SEAFOX-7	2015-05-09 13:04:02-04	\N
235065969 	STENA LAGAN	2018-10-17 23:19:05-04	\N
235066014 	SVITZER LINDSWAY	2018-07-26 08:13:35-04	\N
235066017 	STARGAZEY TRI	2017-01-21 19:35:02-05	\N
235060148 	BIGGLES	2013-05-20 07:53:29-04	\N
235066178 	K.GRACE	2018-07-19 14:18:50-04	\N
235066207 	EAS MHOR	2017-07-15 15:36:33-04	\N
235066352 	SEAFOX 4	2014-11-08 03:09:23-05	\N
235066353 	SVITZER KILROOM	2015-08-15 16:08:14-04	\N
235066459 	WINDCAT 11	2017-10-12 18:39:50-04	\N
235066626 	ZENITH	2013-05-01 02:22:51-04	\N
235066953 	KINGDOM OF FIFE	2016-08-24 03:10:31-04	\N
235067145 	NEW STAR	2014-10-13 08:54:19-04	\N
235067372 	FORTH JOUSTER	2015-01-16 22:32:25-05	\N
235067374 	SD MARS	2015-02-05 05:03:57-05	\N
235067543 	LIGHEA	2016-01-26 13:52:47-05	\N
235067679 	RNLI REFUELLER	2015-10-18 10:47:21-04	\N
235067709 	INISHOWEN AIR 2	2012-08-24 23:04:25-04	\N
235067855 	SENTINEL	2014-06-22 12:45:49-04	\N
235067942 	MCS LENIE	2018-08-14 08:22:11-04	\N
235067991 	SVITZER HAVEN	2015-12-19 13:46:35-05	\N
235068029 	COSCO HONGKONG	2012-06-18 13:27:14-04	\N
235068031 	COSCO FELIXSTOWE	2014-11-05 07:28:50-05	\N
235068109 	SVITZER RAMSEY	2013-11-30 07:35:05-05	\N
235068112 	SVITZER CALDEY	2012-04-24 03:40:03-04	\N
235068202 	LAVELA	2015-05-30 01:13:54-04	\N
235068243 	STENA MERSEY	2017-09-03 07:33:31-04	\N
235068328 	MTS INDUS	2013-09-18 13:22:48-04	\N
235068406 	GLENDEVERON BM500	2015-05-21 14:05:23-04	\N
235068455 	PICTON	2016-09-26 22:55:28-04	\N
235068657 	VIKING SENIOR	2012-07-24 21:26:25-04	\N
235068834 	HARMONIE II	2018-09-12 03:50:58-04	\N
235068913 	WINDCAT 16	2016-01-11 05:45:28-05	\N
235069065 	SARAH P	2014-04-14 08:42:22-04	\N
235069329 	SERENE SEAS	2016-05-09 16:23:43-04	\N
235069571 	NORHOLM	2012-12-06 15:40:08-05	\N
235069704 	SVITZER SKY	2019-02-23 20:04:06-05	\N
235069875 	WIGHT RYDER 1	2018-01-16 10:40:22-05	\N
235069877 	WIGHT RYDER 2	2014-07-28 16:09:58-04	\N
235070161 	LORNA ELLEN	2017-05-22 12:53:35-04	\N
235070199 	MANANNAN	2015-07-12 11:10:57-04	\N
235070283 	ERIN SCHULTE	2016-08-14 04:51:01-04	\N
235070418 	SMS SHOALBUSTER	2015-08-26 01:04:06-04	\N
235070436 	NORONYA K733	2016-01-22 23:44:30-05	\N
235070466 	VICTORIA KOSAN	2012-02-28 15:18:05-05	\N
235070585 	FAN ONE	2019-01-18 19:12:30-05	\N
235070675 	SEAFOX 1	2018-02-27 04:06:53-05	\N
235070762 	SD INDEPENDENT	2014-10-22 20:24:35-04	\N
235070763 	SD INDULGENT	2012-04-19 07:25:39-04	\N
235070867 	FREEWILL	2015-04-17 16:35:29-04	\N
235071537 	SD NAVIGATOR	2014-04-15 06:19:45-04	\N
235072062 	S/Y ALTA MAREA	2015-04-07 12:28:20-04	\N
235072088 	ELI KNUTSEN	2018-04-24 18:59:16-04	\N
235072313 	LOUGH FOYLE	2017-12-17 08:19:38-05	\N
235072372 	TEMPEST WS	2014-09-23 10:41:42-04	\N
235072616 	GRAMPIAN TALISKER	2015-01-10 04:04:07-05	\N
235072654 	JUBILANT	2016-01-07 08:26:14-05	\N
235072757 	SD BOUNTIFUL	2015-07-26 01:37:52-04	\N
235072879 	TEGOUR	2014-12-16 06:19:38-05	\N
235072958 	WHITE FANG	2017-03-07 01:56:26-05	\N
235073215 	NOELLE	2019-01-06 17:06:20-05	\N
235073277 	SP SPITFIRE	2015-12-21 12:39:18-05	\N
235073404 	LIV KNUTSEN	2012-10-13 22:49:22-04	\N
235073592 	WINDCAT 18	2015-04-06 13:26:56-04	\N
235073828 	VOS VOYAGER	2016-09-26 06:13:57-04	\N
235073947 	FLYING BEAGLE	2018-01-12 15:26:33-05	\N
235074296 	SD DEBORAH	2014-04-01 22:40:07-04	\N
235074298 	SD EILEEN	2012-05-25 01:52:48-04	\N
235074359 	MAGNUM	2015-04-21 04:52:58-04	\N
235074416 	SD SUZANNE	2018-08-12 06:53:11-04	\N
235074703 	SD CHRISTINA	2012-05-01 13:07:45-04	\N
235074754 	SMIT SANDON	2016-11-14 07:03:51-05	\N
235075156 	LES TROIS MOUSSES	2014-10-13 02:07:14-04	\N
235075328 	JACK PETCHEY	2018-03-31 19:03:15-04	\N
235075339 	MCS ANNEKE	2018-02-11 12:05:18-05	\N
235075439 	MAIDEN CASTLE	2012-12-08 17:47:07-05	\N
235075466 	JUTLANDIA SEAWAYS	2015-01-18 19:45:00-05	\N
235075535 	SD RAASAY	2012-01-12 11:05:42-05	\N
235075617 	BILMAR	2014-02-06 10:45:29-05	\N
235075759 	MAGGIE	2012-07-10 17:44:48-04	\N
235076013 	DEEP VISION	2013-12-24 17:06:24-05	\N
235076095 	LCU9737	2013-07-07 04:29:46-04	\N
235076096 	LCU 9733	2012-05-21 12:45:21-04	\N
235076274 	PARAMOUNT HAMILTON	2016-04-16 12:56:17-04	\N
235076283 	PARAMOUNT HYDRA	2019-01-01 09:59:36-05	\N
235076614 	CARNIVAL	2016-08-07 15:45:03-04	\N
235076683 	GUARDSMAN	2012-12-08 08:49:15-05	\N
235076687 	JENNAH D	2017-10-17 16:29:54-04	\N
235076784 	BOY ANDREW	2016-12-10 00:43:56-05	\N
235076876 	MORNING DEW	2018-03-14 23:06:18-04	\N
235077076 	INNOVATOR	2014-05-18 13:40:54-04	\N
235077185 	BATON ROUGE	2018-10-04 13:27:46-04	\N
235077242 	SKELLIG OF SARK	2015-07-14 13:59:49-04	\N
235077287 	AILEEN M	2018-04-03 19:44:36-04	\N
235077441 	MILAN	2018-04-16 13:30:34-04	\N
235077605 	PIGEON POINT	2016-08-06 14:42:49-04	\N
235077712 	UKD ORCA	2013-09-02 11:27:43-04	\N
235077805 	KATE C	2015-09-06 18:21:15-04	\N
235077831 	WINDCAT21	2016-11-18 01:07:31-05	\N
235077872 	LAMMOUCHE	2017-08-28 13:48:23-04	\N
235078078 	CMA CGM GEMINI	2016-09-09 20:55:17-04	\N
235078345 	PL ST BRENDAN	2015-07-28 09:27:47-04	\N
235078558 	NORMA MARY	2013-06-19 17:24:57-04	\N
235078634 	RECOVERY	2014-05-31 15:58:44-04	\N
235078638 	RESOURCE	2017-08-17 23:43:27-04	\N
235078639 	RECLAIM	2018-07-23 06:10:41-04	\N
235078641 	REDOUBT	2013-07-01 22:11:56-04	\N
235078687 	FILIUS	2014-12-05 05:22:23-05	\N
235079016 	SOLIS-C	2017-12-26 10:14:00-05	\N
235079322 	TALES	2016-02-07 20:14:28-05	\N
235079444 	SHAKE N BAKE TBD	2019-01-24 21:06:30-05	\N
235080015 	SEVEN PACIFIC	2014-02-11 08:30:29-05	\N
235080023 	BLUE WHALE	2012-03-01 19:08:54-05	\N
235080246 	WINDCAT24	2017-03-06 05:31:46-05	\N
235080260 	GROVE	2018-06-26 18:06:51-04	\N
235080274 	STENA BRITANNICA	2014-05-30 11:57:05-04	\N
235080287 	TMS BITTERN	2013-09-23 18:53:25-04	\N
235080408 	FALCON SPIRIT	2018-01-15 01:59:19-05	\N
235080606 	RNLI LIFEBOAT E-08	2014-02-06 21:20:12-05	\N
235080649 	WILLING LAD	2018-02-20 23:03:28-05	\N
235080668 	EQUINOX	2016-08-28 19:28:07-04	\N
235080729 	WINDCAT23	2015-08-01 16:33:41-04	\N
235080906 	CMA CGM LYRA	2015-07-19 04:00:17-04	\N
235080934 	CLAN SOLACE	2014-04-02 21:01:51-04	\N
235081055 	FELICITY	2015-09-09 16:52:25-04	\N
235081302 	DAWN STRIDER	2018-07-03 21:27:05-04	\N
235081535 	ADASTRA OF RYE	2019-02-01 16:02:48-05	\N
235081695 	OPUS ONE	2015-11-24 09:41:33-05	\N
235081888 	CMA CGM MAGELLAN	2012-06-13 16:55:41-04	\N
235081973 	JOTTY	2017-08-15 16:42:11-04	\N
235082004 	VOS ENDURANCE	2013-03-24 22:23:57-04	\N
235082771 	EMERALD DAWN BCK303	2013-06-25 19:43:52-04	\N
235083195 	SEAHERALD	2019-02-02 00:26:14-05	\N
235083344 	WINDCAT 25	2012-11-15 20:34:38-05	\N
235083447 	TE AROHA	2014-11-17 09:32:37-05	\N
235083501 	STOLT PELICAN	2018-01-05 22:55:16-05	\N
235083892 	FINLAGGAN	2017-10-10 15:00:59-04	\N
235084022 	WHITHAVEN	2013-02-09 03:29:28-05	\N
235084182 	CPO MALAYSIA	2016-10-22 21:03:56-04	\N
235084424 	SEVEN FALCON	2012-04-16 18:23:44-04	\N
235084466 	VOS DOROTHEA	2013-06-24 18:21:45-04	\N
235084537 	FRYSLAN	2015-09-15 11:46:23-04	\N
235084702 	WINDCAT 26	2015-11-27 11:52:21-05	\N
235084806 	MTS VICTORY	2017-11-01 00:49:16-04	\N
235085354 	STELLA MARIS	2018-06-03 13:22:07-04	\N
235085499 	ICENICOURAGE	2015-08-02 01:56:58-04	\N
235085696 	KEW	2017-07-21 23:14:41-04	\N
235085697 	BARNES	2012-11-24 22:31:13-05	\N
235085775 	SCOTSMAN	2012-09-11 00:18:11-04	\N
235085801 	SKUA	2014-06-29 13:05:27-04	\N
235085866 	BLANCA	2014-04-17 16:58:42-04	\N
235085999 	KIMBERLIE	2013-10-12 21:25:14-04	\N
235086068 	WINDCAT27	2012-12-07 04:59:29-05	\N
235086213 	WINDCAT 101	2014-10-13 15:29:08-04	\N
235086445 	YAMAS	2014-06-22 10:57:13-04	\N
235086696 	TUPPENCE	2014-10-21 02:16:06-04	\N
235086878 	GAILLION	2013-09-09 07:05:25-04	\N
235087208 	CARHIE ANNE	2015-04-06 19:56:58-04	\N
235087214 	BODIL KNUTSEN	2013-06-09 02:43:33-04	\N
235087256 	STOLT KINGFISHER	2017-08-22 18:47:19-04	\N
235087391 	KABOODLE	2017-03-14 13:59:58-04	\N
235087406 	MFV ROBIN OF LADRAM	2017-10-19 14:27:26-04	\N
235087462 	CIMSOC	2013-04-21 19:40:58-04	\N
235087611 	ARGYLL FLYER	2018-09-26 02:02:23-04	\N
235087893 	PURA VIDA	2012-04-10 03:45:38-04	\N
235087975 	ARTEMIS	2014-08-02 19:20:44-04	\N
235087977 	TESORO	2015-03-15 18:44:12-04	\N
235088194 	CWIND ATHENIA	2013-04-10 10:34:54-04	\N
235088195 	CWIND ALLIANCE	2015-10-14 00:58:05-04	\N
235088423 	PL.ST.CHRISTOPHER	2017-03-19 16:13:52-04	\N
235088564 	X CHIOS	2013-02-14 02:35:06-05	\N
235088685 	AC-RELIANCE	2016-09-25 20:21:40-04	\N
235088807 	MARGARET OF LADRAM	2016-01-26 07:35:13-05	\N
235089032 	VOS VALIANT	2015-05-18 22:03:39-04	\N
235089046 	STOLT REDSHANK	2018-10-01 05:58:57-04	\N
235089132 	CONWY PLATFORM	2016-06-24 21:57:53-04	\N
235089188 	PRINCESS ROYAL	2014-10-13 20:57:49-04	\N
235089284 	STOLT SANDPIPER	2013-07-07 07:08:21-04	\N
235089286 	THAMES GUARDIAN	2013-02-16 18:03:50-05	\N
235089384 	TEMPTRESS	2016-03-13 18:53:38-04	\N
235089435 	STENA SUPERFAST VII	2012-03-10 08:13:57-05	\N
235089436 	STENA SUPERFAST VIII	2019-01-27 20:05:49-05	\N
235089472 	SMEATON ARRAY	2012-10-10 15:24:44-04	\N
235089525 	ACOOL TURABI	2016-03-24 21:09:01-04	\N
235089665 	ISLA-S  DS	2015-03-27 23:39:07-04	\N
235089839 	YEOMAN	2014-06-29 17:30:02-04	\N
235089841 	IRISHMAN	2018-07-18 09:49:18-04	\N
235089912 	VECTIS OSPREY	2014-06-10 10:08:32-04	\N
235089913 	VECTIS HARRIER	2017-07-15 11:58:42-04	\N
235089934 	EMILY KOSAN	2014-07-17 22:23:24-04	\N
235090098 	ASSOL	2018-03-21 02:34:39-04	\N
235090134 	CELTIC STAR	2014-10-11 17:53:56-04	\N
235090183 	SEATRUCK POWER	2017-11-13 19:16:24-05	\N
235090189 	MFV ANGEL EMIEL	2012-01-25 22:03:08-05	\N
235090202 	AFON ALAW	2016-02-05 00:34:14-05	\N
235090245 	MTS VULCAN 2	2017-03-25 07:39:22-04	\N
235090347 	MTSL FALCON	2014-03-29 10:13:18-04	\N
235090402 	NORTHERN RIVER	2019-02-08 09:52:53-05	\N
235090537 	TIMBERLAND	2013-09-06 21:41:05-04	\N
235090598 	BLUE TERN	2018-09-21 17:53:47-04	\N
235090599 	VOE EARL	2012-07-03 22:59:02-04	\N
235090741 	WINDCAT 28	2018-11-25 10:42:34-05	\N
235090769 	ESTUARY ELAN	2016-11-15 02:55:58-05	\N
235090771 	JUBILEE PRIDE	2014-02-01 12:59:52-05	\N
235090838 	ICENI DEFIANT	2015-04-26 08:09:10-04	\N
235090843 	MCS SIROCCO	2015-06-30 13:25:11-04	\N
235091111 	SEATRUCK PERFORMANCE	2015-01-21 00:25:16-05	\N
235091146 	SWS ESSEX	2014-12-10 09:41:30-05	\N
235091363 	BERGE BLANC	2012-01-22 05:06:28-05	\N
235091371 	MARINECO DIGNITY	2013-08-03 07:41:34-04	\N
235091541 	MARTINE P	2016-02-01 02:08:06-05	\N
235091819 	GEMMI II	2018-02-21 08:08:55-05	\N
235091843 	ALWIL	2012-07-12 17:28:23-04	\N
235092091 	CHANTELLE	2016-10-19 18:31:31-04	\N
235092103 	MCS PAMPERO	2012-03-23 22:21:45-04	\N
235092453 	SEATRUCK PRECISION	2016-11-13 05:39:07-05	\N
235092573 	SY ROSBEG	2017-07-02 05:15:01-04	\N
235092583 	MARINECO THUNDERBIRD	2016-11-20 16:36:56-05	\N
235092785 	OFFSHORE WEST HINDER	2018-12-02 06:10:32-05	\N
235092964 	LOUISE KNUTSEN	2012-07-22 00:34:49-04	\N
235092996 	STATESMAN	2012-11-23 07:13:43-05	\N
235093112 	ETA BETA	2018-06-14 05:47:58-04	\N
235093128 	PROTEGE	2014-09-22 05:55:05-04	\N
235093129 	SOIREE	2015-06-10 18:59:33-04	\N
235093299 	DOROTHEA SCHULTE	2016-02-10 06:37:29-05	\N
235093585 	SKIP N BOU	2015-07-20 23:25:57-04	\N
235093721 	3 MONTS	2018-09-28 11:05:52-04	\N
235093794 	VELSHEDA	2018-11-22 00:45:52-05	\N
235093824 	HARMONY	2014-07-07 04:17:33-04	\N
235094155 	M/Y SILVIE VI	2015-08-22 09:52:34-04	\N
235094268 	HIGHLAND GUARDIAN	2016-04-25 11:22:31-04	\N
235094271 	HIGHLAND KNIGHT	2012-07-20 00:46:00-04	\N
235094449 	HAPPY PELICAN	2013-10-14 00:49:51-04	\N
235094496 	ADMIRAL P	2017-07-25 04:22:24-04	\N
235094533 	MORPHEUS+OF+LONDON	2014-09-18 05:45:26-04	\N
235094715 	CEMLYN BAY	2017-08-06 13:52:23-04	\N
235094779 	PASHA NERO	2017-10-04 16:20:28-04	\N
235095007 	TWISTED	2013-12-24 03:08:51-05	\N
235095326 	WILDEST DREAM	2016-01-23 23:47:16-05	\N
235095403 	AFON CEFNI	2015-12-08 09:30:50-05	\N
235095634 	CORDELIA-K INS-151	2012-04-19 03:38:57-04	\N
235095774 	NJORD KITTIWAKE	2018-12-18 15:45:53-05	\N
235095775 	NJORD CURLEW	2018-05-07 14:44:58-04	\N
235095776 	NJORD LAPWING	2015-07-22 17:38:51-04	\N
235095778 	NJORD PUFFIN	2014-04-02 18:40:30-04	\N
235095808 	SEACAT VIGILANT	2016-09-23 17:09:38-04	\N
235095836 	VECTIS ISLE	2016-06-24 00:57:38-04	\N
235095972 	STOLT SANDERLING	2015-04-13 21:12:09-04	\N
235095979 	HAPPY PENGUIN	2015-06-07 03:50:40-04	\N
235096000 	FAIR LADY	2013-02-08 06:51:40-05	\N
235096094 	GEERTRUIDA	2014-06-11 20:08:54-04	\N
235096263 	HAYLEY B	2016-07-19 10:44:00-04	\N
235096265 	LOMAX	2014-06-16 16:58:17-04	\N
235096374 	MCS BLUE NORTHER	2015-04-21 07:26:32-04	\N
235096381 	SEADREAM OF SARK	2012-02-08 21:04:29-05	\N
235096432 	BRISTOLIAN	2013-02-21 17:39:19-05	\N
235096501 	MCS BOREAS	2017-11-14 20:44:18-05	\N
235096561 	SOLUS A CHUAIN	2018-04-29 09:00:58-04	\N
235096619 	OFFSHORE WENDUINE	2014-11-23 04:34:42-05	\N
235096859 	STOLT GREENSHANK	2014-12-18 09:11:42-05	\N
235096891 	CLIPPER RANGER	2013-02-16 10:41:56-05	\N
235096892 	ARROW	2017-11-25 02:46:13-05	\N
235096987 	F.V.SAPPHIRE 2 PZ115	2012-06-27 00:23:23-04	\N
235097013 	F/V STELISSA	2017-02-20 22:41:27-05	\N
235097105 	CARRICKFERGUS	2017-07-22 09:36:10-04	\N
235097249 	S/Y TWILIGHT	2013-11-04 04:27:25-05	\N
235097283 	MERSEY SPIRIT	2019-01-14 09:43:33-05	\N
235097317 	VOS FAITHFUL	2012-08-16 16:12:04-04	\N
235097407 	WINDCAT 31	2017-07-27 05:47:31-04	\N
235097409 	TOURTERELLE	2016-01-18 10:56:30-05	\N
235097516 	YANDE	2017-09-24 12:40:40-04	\N
235097622 	SHAKTI	2013-03-04 01:31:58-05	\N
235097649 	F/V CHARLES EDWARD	2016-01-22 10:56:46-05	\N
235097772 	LAETITIA DELTA	2013-11-09 15:21:27-05	\N
235097896 	HARBOUR FERRY	2016-03-06 22:54:51-05	\N
235098053 	SPECIALITY	2018-08-01 12:40:10-04	\N
235098058 	SENIORITY	2018-09-22 14:37:24-04	\N
235098152 	CARIAD	2012-11-23 19:02:23-05	\N
235098384 	TIA ELIZABETH TTL 14	2013-04-16 08:38:40-04	\N
235098532 	MIC DROP	2016-04-23 01:28:04-04	\N
235098651 	SEA FOX	2017-01-01 03:12:15-05	\N
235098655 	DYNA R	2012-10-28 06:20:54-04	\N
235098656 	MONTROSE MARINE II	2017-09-21 10:35:23-04	\N
235098671 	OCEAN PARADISE	2017-08-12 22:46:20-04	\N
235098744 	MERIT	2017-09-12 22:31:03-04	\N
235098837 	JIBJAB	2012-01-16 19:16:36-05	\N
235098861 	ANEMOS	2013-03-16 08:08:45-04	\N
235098878 	HABANA	2016-01-30 02:50:57-05	\N
235099056 	PORTH EILIAN	2016-01-28 07:20:13-05	\N
235099078 	SCIMITAR	2015-06-16 21:20:57-04	\N
235099244 	JOY OF LADRAM	2012-10-06 23:36:28-04	\N
235100575 	ICENI VICTORY	2014-08-05 08:12:24-04	\N
235100655 	SONAS	2013-02-14 11:44:29-05	\N
235100957 	GPS AVENGER	2018-12-05 09:04:11-05	\N
235101000 	BRITANNIA V	2013-12-14 22:50:16-05	\N
235101062 	SOUND OF SEIL	2018-03-25 21:47:08-04	\N
235101063 	SOUND OF SOAY	2016-09-08 15:53:30-04	\N
235101158 	TRININGA	2018-11-09 15:29:58-05	\N
235101329 	MASTERMAN	2018-12-22 04:42:15-05	\N
235101365 	SD NETLEY	2012-06-21 01:13:38-04	\N
235101401 	PHYLIS	2015-01-01 11:31:28-05	\N
235101544 	MEGABITE	2016-09-15 23:40:52-04	\N
235101881 	WINDCAT 34	2017-08-09 14:03:20-04	\N
235101907 	PARADISE BAY	2015-02-20 01:04:50-05	\N
235101912 	BORA	2013-05-16 07:21:45-04	\N
235102027 	SURE STAR	2016-10-06 01:14:26-04	\N
235102028 	SURE SWIFT	2014-10-13 09:04:31-04	\N
235102029 	STENA BALTICA	2018-05-01 19:29:28-04	\N
235102035 	VOS LUCINDA	2018-10-12 21:29:01-04	\N
235102224 	STENA HIBERNIA	2012-11-20 22:06:51-05	\N
235102528 	SEACAT VOLUNTEER	2013-03-04 15:05:15-05	\N
235102561 	HILDA KNUTSEN	2012-09-06 21:52:06-04	\N
235102583 	TORILL KNUTSEN	2017-04-03 10:12:00-04	\N
235102628 	SC FALCON	2014-01-22 13:08:06-05	\N
235102665 	AQUARIUS	2018-03-14 08:32:36-04	\N
235102689 	MILL BAY	2018-07-30 23:48:40-04	\N
235102712 	TROMS CAPELLA	2013-08-30 19:53:48-04	\N
235102797 	ZONGRO	2013-11-15 01:19:52-05	\N
235102932 	VOS SAMPSON	2018-10-26 15:24:39-04	\N
235102965 	BEAUMARIS BAY	2012-03-07 21:19:39-05	\N
235102971 	YORKSHIREMAN	2013-10-11 11:35:53-04	\N
235103023 	VOS GLORY	2012-01-25 23:27:31-05	\N
235103057 	INGRID KNUTSEN	2019-01-31 17:39:55-05	\N
235103125 	PRINCESS JASMINE	2016-02-01 05:28:55-05	\N
235103165 	LONDON TITAN	2018-06-10 07:10:34-04	\N
235103213 	MTS VANQUISH	2014-10-04 09:11:39-04	\N
235103214 	VOS TRIFALDI	2016-07-05 20:14:35-04	\N
235103216 	VOS SNOWBALL	2013-10-18 03:04:47-04	\N
235103217 	VOS NAPOLEON	2017-04-09 00:12:44-04	\N
235103265 	NJORD ALPHA	2012-04-12 20:51:29-04	\N
235103287 	HA LONG BAY	2015-05-31 20:54:05-04	\N
235103385 	OFFSHORE WIELINGEN	2012-01-22 14:27:23-05	\N
235103397 	PH1100 WIRON 5	2012-12-21 01:32:55-05	\N
235103427 	RIPTIDE H10	2015-09-18 13:42:26-04	\N
235103429 	NJORD SKUA	2015-07-31 05:17:57-04	\N
235103431 	NJORD SNIPE	2018-11-08 08:41:36-05	\N
235103465 	WINDCAT 35	2013-10-26 17:17:09-04	\N
235103467 	ANDROMEDA	2015-08-08 20:10:18-04	\N
235103482 	S/Y MOOD MAGIC	2017-09-09 01:47:35-04	\N
235103589 	ISIS	2014-04-07 19:32:25-04	\N
235103595 	MMS SUPREME	2012-05-31 14:26:18-04	\N
235103644 	LASS O DOUNE BM-181	2014-04-12 03:19:51-04	\N
235103697 	SVITZER LONDON	2012-05-29 22:53:35-04	\N
235103708 	QUANTUM	2018-12-20 04:18:30-05	\N
235103718 	FAENOL	2013-11-16 09:14:32-05	\N
235103844 	SEACAT RANGER	2015-10-08 18:08:14-04	\N
235103938 	ANMAD	2016-12-14 21:11:09-05	\N
235104018 	GEMINI	2018-12-13 10:21:06-05	\N
235104485 	EYECATCHER	2014-10-18 18:24:18-04	\N
235104516 	TWIN AXE	2014-02-04 11:01:47-05	\N
235104651 	HAYKEN	2013-04-21 11:06:53-04	\N
235104739 	STOLT AUK	2018-12-28 00:24:33-05	\N
235104964 	LEANNE P	2017-07-07 12:30:41-04	\N
235105282 	RIX LION	2012-07-19 04:18:27-04	\N
235105315 	OCEAN WARRIOR	2012-01-28 15:18:47-05	\N
235105354 	LUISE	2012-07-27 11:42:50-04	\N
235105427 	LITTLE BERT	2013-05-29 01:36:13-04	\N
235105625 	WILCO-B	2018-12-27 05:14:51-05	\N
235105737 	GEMINI	2016-03-26 15:08:50-04	\N
235105752 	ESSENCE	2019-01-29 07:10:20-05	\N
235105835 	SACRE-COEUR	2015-10-18 11:13:46-04	\N
235106049 	HAVILAH	2018-02-19 08:14:16-05	\N
235106171 	SPIRIT OF GALATEA	2012-09-25 20:15:06-04	\N
235106254 	SNOW TIGER II	2013-05-27 04:27:08-04	\N
235106308 	SENTINEL RANGER	2014-09-22 05:16:34-04	\N
235106484 	SCOT TRADER	2018-12-18 18:07:30-05	\N
235107311 	JAROCHIM	2016-11-09 01:18:37-05	\N
235107332 	MEWO NAVIGATOR	2017-12-01 22:08:35-05	\N
235107401 	WINDCAT 36	2015-02-10 19:33:15-05	\N
235107615 	SILVER CLOUD	2013-01-01 01:53:34-05	\N
235107648 	MCS TAKU CPP	2018-02-08 16:17:56-05	\N
235107713 	POCO LOCO	2016-06-09 03:32:21-04	\N
235107825 	BLUE MARLIN IV	2015-11-26 11:37:42-05	\N
235108003 	AQUALUNA	2018-04-05 16:17:11-04	\N
235108057 	ICENI VENTURE	2014-07-02 02:45:41-04	\N
235108059 	ICENI VENGEANCE	2015-05-28 02:44:44-04	\N
235108227 	ULTRA LION	2016-04-13 08:03:29-04	\N
235108267 	SVITZER ESTON	2015-11-08 01:31:12-05	\N
235108268 	SVITZER BARGATE	2017-05-28 21:02:40-04	\N
235108274 	DEBS DELIGHT	2013-01-18 09:20:04-05	\N
235108315 	SUPERFAST X	2018-01-31 19:44:53-05	\N
235108381 	CMA CGM KERGUELEN	2016-09-30 06:01:14-04	\N
235108405 	CELTIC WARRIOR	2014-04-09 06:06:40-04	\N
235108422 	HAPPY DAZE	2015-07-01 06:47:30-04	\N
235108425 	GPS CERVIA	2016-03-29 23:27:44-04	\N
235108438 	SIRIUS	2017-11-17 07:25:39-05	\N
235108458 	BIBBY ATHENA	2016-05-08 03:08:35-04	\N
235108471 	BAYESIAN	2012-09-16 15:03:57-04	\N
235108494 	NJORD MAGNI	2014-04-19 08:04:33-04	\N
235108514 	NEXUS VICTORIA	2018-11-28 09:07:48-05	\N
235108532 	BRITISH REGARD	2017-11-09 08:20:22-05	\N
235108582 	AQUILA	2019-02-22 04:18:11-05	\N
235108602 	TROMS MIRA	2015-09-22 06:29:56-04	\N
235108619 	BW CARINA	2012-09-12 21:15:50-04	\N
235108711 	SEACAT COURAGEOUS	2019-02-08 01:42:43-05	\N
235108712 	CASPER	2019-02-20 21:59:40-05	\N
235108878 	WINDCAT 37	2016-04-30 12:59:03-04	\N
235108934 	GRAMPIAN DELIVERANCE	2015-10-14 19:48:08-04	\N
235108959 	SEVEN ARCTIC	2012-08-02 23:54:20-04	\N
235109046 	CWIND PHANTOM	2015-04-02 03:18:57-04	\N
235109058 	ICENI CONQUEST	2012-10-30 02:58:22-04	\N
235109077 	MARATHON	2013-12-24 11:19:30-05	\N
235109129 	HARBOUR SPIRIT	2014-08-23 19:26:32-04	\N
235109172 	GRACE	2013-05-22 06:26:48-04	\N
235109181 	LADY LARUS OF BRAYE	2015-12-03 13:55:24-05	\N
235109238 	X5	2017-12-26 21:29:00-05	\N
235109339 	RFA TIDEFORCE	2015-03-06 06:14:01-05	\N
235109502 	SEVERN PROVIDER	2015-05-20 22:18:56-04	\N
235109514 	BONACCORD	2012-01-17 00:42:41-05	\N
235109538 	STENA IMPERIAL	2014-12-13 00:29:11-05	\N
235109552 	LUNDY SENTINEL	2017-05-04 18:52:00-04	\N
235109554 	FORTIES SENTINEL	2012-03-12 11:26:35-04	\N
235109584 	VAELIS	2015-01-06 05:00:04-05	\N
235109621 	SC ELAN	2016-01-09 10:28:27-05	\N
235109648 	HENDRIX	2018-06-06 10:04:06-04	\N
235109665 	CMACGM GEORG FORSTER	2013-04-12 06:16:09-04	\N
235110094 	G AND T	2017-07-22 11:58:51-04	\N
235110202 	BONNIE BREEZE	2017-05-19 22:46:40-04	\N
235110382 	WINDFALL OF WESSEX	2018-01-14 12:08:12-05	\N
235110416 	JOE BANANAS	2017-03-16 19:55:34-04	\N
235110453 	M/Y IRIMARI	2017-07-03 12:08:04-04	\N
235110501 	GREDOS	2018-12-10 23:46:53-05	\N
235110509 	BERGE HAKODATE	2017-09-03 20:47:20-04	\N
235110548 	JULIA	2015-05-30 21:48:57-04	\N
235110567 	ORCADIA II	2015-04-17 12:59:44-04	\N
235110657 	GRAMPIAN DEVOTION	2015-05-24 13:53:29-04	\N
235110913 	CWIND ARTIMUS	2014-07-21 01:56:39-04	\N
235111195 	WINDCAT 38	2012-04-12 05:56:20-04	\N
235111197 	RHOSNEIGR BAY	2017-05-08 07:01:25-04	\N
235111246 	CMACGM VASCO DE GAMA	2017-01-30 01:53:11-05	\N
235111279 	FOUR FORTY	2018-02-26 22:12:37-05	\N
235111319 	MISCHIEF	2015-06-28 14:52:14-04	\N
235111359 	VAILA	2017-06-06 16:07:24-04	\N
235111365 	CMA CGM ST. LAURENT	2017-09-13 04:30:49-04	\N
235111506 	THEA	2014-03-14 21:29:11-04	\N
235113087 	MERCHANTMAN	2014-10-10 14:03:12-04	\N
235113125 	SVITZER KENT	2017-08-04 10:26:56-04	\N
235113128 	SVITZER DEBEN	2012-02-03 06:58:25-05	\N
235113351 	DAKOTA	2017-10-26 02:17:36-04	\N
235113374 	CMS WARRIOR	2014-10-26 00:50:03-04	\N
235113406 	HUSH	2015-01-08 10:24:59-05	\N
235113439 	CHRISTEL STAR H56	2013-07-04 11:29:38-04	\N
235113602 	UBATUBA	2018-03-16 16:05:38-04	\N
235113663 	EASTERN VANQUISH	2012-04-19 07:29:38-04	\N
235113664 	EASTERN VIRAGE	2012-08-19 00:12:00-04	\N
235113676 	NSL EXCALIBUR	2017-12-01 02:21:34-05	\N
235113724 	MFV LA CREOLE II	2015-03-18 22:33:44-04	\N
235113739 	MMA RESPONDER	2012-05-01 06:04:30-04	\N
235113761 	BRITISH CIRRUS	2013-12-29 22:40:38-05	\N
235113766 	BRITISH SEAFARER	2017-11-14 03:51:03-05	\N
235113768 	BRITISH CAPTAIN	2013-11-04 21:16:28-05	\N
235113769 	BRITISH OFFICER	2016-04-10 15:11:23-04	\N
235113904 	RIX LEOPARD	2017-02-19 17:33:23-05	\N
235113908 	INFINITY AND BEYOND	2015-07-12 12:13:36-04	\N
235113944 	FULL CIRCLE	2018-10-03 04:07:24-04	\N
235114033 	CMA CGM B FRANKLIN	2013-11-07 12:47:33-05	\N
235114095 	JENNYANYDOTS	2016-06-28 17:51:06-04	\N
235114118 	MMS HUMBER ENGINEER	2015-10-07 16:33:27-04	\N
235114368 	TRITON	2015-09-24 10:35:45-04	\N
235114376 	WINDCAT 39	2015-12-08 11:06:18-05	\N
235114568 	TEMPEST	2017-06-20 23:41:55-04	\N
235114576 	TORNADO	2013-03-07 06:25:46-05	\N
235114598 	MAPLIN	2016-07-07 10:15:17-04	\N
235114648 	WILLIAM OF LADRAM	2018-05-07 15:40:47-04	\N
235114667 	ATLANTIC SAIL	2014-02-08 21:12:01-05	\N
235114691 	BOOTLEGGER 2	2015-08-06 23:26:10-04	\N
235114752 	PICA PICA	2017-05-26 09:20:50-04	\N
235114799 	BERGE ANNUPURI	2012-05-01 07:42:51-04	\N
235114982 	LADY CLAIRE	2016-10-31 14:54:41-04	\N
235115192 	PUFFIN	2015-10-08 07:46:55-04	\N
235115225 	BARRACUDA	2013-02-24 22:15:14-05	\N
235115261 	AFON LAS	2018-07-27 09:59:09-04	\N
235115424 	SOLENT MISTRESS	2013-03-30 15:01:32-04	\N
235115463 	BOMBADIL II	2013-04-07 07:09:55-04	\N
235115554 	MISS CONDUCT	2013-09-05 00:55:56-04	\N
235116011 	FORTH WARRIOR	2018-07-23 12:09:13-04	\N
235116014 	GAJA	2013-04-15 23:57:12-04	\N
235116052 	ATLANTIC SEA	2013-03-25 23:38:28-04	\N
235116174 	DEEP BLUE	2019-01-21 09:25:34-05	\N
235116177 	NAUTILIDAE	2018-05-15 22:55:13-04	\N
235116332 	GREY FALCON	2018-07-23 05:05:26-04	\N
235116489 	LIGHTNING	2013-04-15 17:29:04-04	\N
235116496 	NIKITA B	2015-01-03 21:14:05-05	\N
235116538 	SCPS ALEXIA	2013-04-06 13:26:25-04	\N
235116611 	RISKY BUSINESS	2013-02-20 01:59:58-05	\N
235116796 	ZOZO	2018-06-30 01:53:24-04	\N
235116828 	SC AMBER	2019-02-15 23:20:14-05	\N
235116834 	TYPHOON TOW	2014-08-21 06:59:21-04	\N
235116851 	VDC MAMMUT	2013-04-01 07:47:08-04	\N
235116921 	SEACAT FREEDOM	2018-07-04 13:30:06-04	\N
235117143 	LIBRA OMEGA	2017-04-04 17:12:02-04	\N
235117189 	SCPS ANDREA	2013-07-23 19:30:36-04	\N
235117192 	SCPS AMANDA	2018-05-18 10:20:50-04	\N
235117502 	CALEDONIA SPIRIT	2016-01-04 02:51:19-05	\N
235117615 	ATLANTIC SKY	2018-02-28 06:30:58-05	\N
235117618 	MY GRACE OF PENZANCE	2018-09-28 13:51:41-04	\N
235117683 	M/Y STALCA	2014-12-29 07:04:40-05	\N
235117803 	CALMAR	2016-11-07 17:32:08-05	\N
235117808 	NEW HAMPSHIRE	2014-05-14 02:04:43-04	\N
235117898 	LADY KATHLEEN	2015-01-07 07:35:08-05	\N
235117904 	PORTLAND SENTINEL	2018-07-05 13:51:51-04	\N
235117926 	RED JET 6	2015-03-04 09:59:52-05	\N
235117937 	DALBY OUSE	2012-03-22 14:46:13-04	\N
235117963 	MARINER SENTINEL	2016-01-14 12:09:31-05	\N
235117964 	LOTTE	2015-03-22 22:42:34-04	\N
235118075 	HURRICANE TOW	2013-05-25 10:06:50-04	\N
235118343 	TOUTE SWEET	2014-03-29 23:20:37-04	\N
235118399 	CHICKADEE	2012-03-16 07:09:04-04	\N
235118568 	AURORA	2015-10-13 17:40:28-04	\N
235118697 	SD TEMPEST	2013-11-06 22:23:38-05	\N
235134000 	PUTFORD TRADER	2015-12-12 00:54:33-05	\N
235155000 	SHALIMAR  II	2012-10-03 15:59:02-04	\N
235192000 	HAPPY BEE	2013-06-11 09:02:32-04	\N
235234000 	PRINCE MADOG	2014-09-18 07:52:02-04	\N
235307000 	MORITZ SCHULTE	2013-03-15 17:45:44-04	\N
235394000 	MY TEXAS	2012-10-08 02:36:00-04	\N
235431000 	PUTFORD PROVIDER	2016-03-02 12:57:00-05	\N
235449000 	HAMNAVOE	2014-09-03 10:15:21-04	\N
235453000 	PUTFORD PROTECTOR	2016-09-16 13:41:05-04	\N
235475000 	PUTFORD ENTERPRISE	2018-10-23 02:44:02-04	\N
235491000 	RFA WAVE KNIGHT	2016-12-06 05:52:06-05	\N
235509000 	TANJA KOSAN	2018-04-23 03:12:49-04	\N
235548000 	LADY FELICITY	2016-10-22 21:50:39-04	\N
235603000 	EVER ETHIC	2012-12-20 08:56:52-05	\N
235631000 	MASTER EXPRESS	2015-07-11 01:07:50-04	\N
235639000 	HIGHLAND  EAGLE	2018-04-03 09:04:29-04	\N
235665000 	IS A ROSE	2013-04-12 02:31:36-04	\N
235677000 	MY NANOOK	2018-03-12 02:34:42-04	\N
235746000 	ANTARCTIC II	2014-01-02 09:59:34-05	\N
235849000 	ENERGY COMMANDER	2018-11-01 03:53:07-04	\N
235901069 	OCEAN VENTURE	2012-09-30 14:23:22-04	\N
235909616 	CARAT	2019-02-01 20:07:51-05	\N
236002000 	ST.PAULI	2016-07-08 20:47:48-04	\N
236038000 	BALTIC CARRIER	2015-08-06 01:09:23-04	\N
236039000 	BALTIC SKIPPER	2017-05-15 17:53:23-04	\N
236052000 	LADY ROSE	2019-02-16 00:34:38-05	\N
236072000 	AKIM	2013-10-19 14:38:32-04	\N
236076000 	TUBINGEN	2017-07-13 03:54:32-04	\N
236107000 	FRANK	2015-05-05 07:52:38-04	\N
236111618 	MONZA EXPRESS	2016-07-30 12:28:12-04	\N
236111629 	NEPTUN 10	2018-12-17 05:54:57-05	\N
236111757 	M/T PALLAS	2012-08-13 12:13:25-04	\N
236111768 	HALKI	2014-05-18 00:28:02-04	\N
236111791 	KEY BREEZE	2018-12-01 17:01:26-05	\N
236111827 	LS EVANNE	2016-08-01 00:57:35-04	\N
236111849 	SOUND HORIZON	2013-07-08 19:55:37-04	\N
236111851 	SANCO SWIFT	2016-07-14 03:31:29-04	\N
236111881 	PAGLIA	2012-03-26 18:31:53-04	\N
236111902 	SANCO SWORD	2016-07-27 00:24:24-04	\N
236111906 	FIONA	2018-06-06 04:04:28-04	\N
236111909 	TAM	2017-07-19 23:16:13-04	\N
236111925 	SOUND SOLUTION	2019-02-23 06:00:33-05	\N
236111943 	OPTIMAR	2018-01-13 12:46:15-05	\N
236111951 	BOTHNIA	2013-02-28 23:11:49-05	\N
236111978 	RUMBA	2012-11-05 10:02:44-05	\N
236111979 	FUGRO HELMERT	2016-06-05 21:20:02-04	\N
236112022 	VISION	2012-10-23 23:44:25-04	\N
236112059 	ATLANTIC TWIN	2018-04-18 07:48:10-04	\N
236112126 	LADY HAYAT	2015-09-11 01:19:08-04	\N
236112257 	GIAOLA-LU	2013-05-30 15:24:46-04	\N
236112259 	GITA 3	2018-03-06 20:45:28-05	\N
236112344 	FAMOUS FOUR	2015-05-10 10:52:25-04	\N
236112432 	ROSITA	2017-12-20 18:20:07-05	\N
236125000 	SAXUM	2018-04-05 00:46:14-04	\N
236146000 	SONORO	2015-05-03 18:19:30-04	\N
236150000 	POLYALAND	2018-03-04 01:10:32-05	\N
236165000 	HEINRICH	2013-09-24 07:46:44-04	\N
236166000 	PRIDE	2012-06-02 03:17:42-04	\N
236180000 	PINTA	2018-11-12 13:28:04-05	\N
236184000 	STEN IDUN	2017-03-16 10:46:19-04	\N
236195000 	BALTIC MERCHANT	2015-08-10 21:12:07-04	\N
236202000 	STENHEIM	2015-06-18 02:46:23-04	\N
236213000 	WILLY	2015-02-07 12:52:24-05	\N
236222000 	STENBERG	2012-01-15 04:03:29-05	\N
236262000 	NORDEROOG	2012-07-26 19:10:02-04	\N
236263000 	CLAUS	2015-10-25 09:00:36-04	\N
236277000 	DELFIN	2014-04-17 16:30:49-04	\N
236306000 	SONILAND	2015-01-05 08:50:03-05	\N
236307000 	MILADY	2012-09-07 19:06:49-04	\N
236309000 	GSP QUEEN	2015-11-27 16:14:42-05	\N
236313000 	STEN MOSTER	2013-03-12 23:03:31-04	\N
236329000 	LS CONCORDE	2013-11-09 17:46:59-05	\N
236333000 	HOOGE	2015-05-02 06:31:18-04	\N
236342000 	KEY MARIN	2014-06-10 08:20:43-04	\N
236354000 	RICHELIEU	2015-09-14 02:55:29-04	\N
236359000 	ESHIPS BARRACUDA	2014-09-17 05:45:28-04	\N
236364000 	LS EVA	2012-04-26 20:12:21-04	\N
236385000 	KEY BORA	2012-06-23 01:02:56-04	\N
236399000 	SARNIA LIBERTY	2017-06-06 00:08:37-04	\N
236401000 	SARNIA CHERIE	2013-08-19 00:22:33-04	\N
236403000 	FUGRO GAUSS	2018-11-03 09:34:37-04	\N
236407000 	STEN ARNOLD	2016-07-11 03:12:05-04	\N
236435000 	CLOUD 9	2012-01-29 00:24:18-05	\N
236445000 	DEE FISHER	2016-03-17 09:45:20-04	\N
236446000 	KEY BAY	2017-12-03 04:29:18-05	\N
236452000 	EEMS EXE	2012-02-13 01:49:05-05	\N
236453000 	EEMS-DART	2014-01-30 01:32:31-05	\N
236465000 	WYBELSUM	2016-12-09 02:40:47-05	\N
236471000 	ARA ATLANTIS	2015-01-29 20:01:38-05	\N
236476000 	LS ANNE	2018-03-25 01:46:12-04	\N
236490000 	DINA TRADER	2016-05-08 21:42:20-04	\N
236507000 	LS JAMIE	2014-12-22 12:00:32-05	\N
236509000 	MITTELPLATE	2013-09-26 04:27:34-04	\N
236514000 	STEN SKAGEN	2014-12-12 23:39:59-05	\N
236519000 	SEAMAR SPLENDID	2013-07-30 02:34:49-04	\N
236521000 	DINA MERKUR	2015-10-10 20:59:00-04	\N
236522000 	STEN FJELL	2014-04-27 05:48:16-04	\N
236538000 	SANCO SPIRIT	2012-06-13 02:30:26-04	\N
236553000 	BONACIEUX	2015-01-05 19:06:57-05	\N
236561000 	VISNES	2018-12-23 01:09:54-05	\N
236567000 	ESHIPS SHAMAL	2016-02-07 13:46:04-05	\N
236592000 	ANNA	2013-09-14 13:11:53-04	\N
236594000 	IVER BEAUTY	2014-01-28 09:45:06-05	\N
236597000 	AASLI	2016-09-01 05:35:19-04	\N
236603000 	NEPTUN 11	2017-12-05 16:57:58-05	\N
236607000 	LAST TYCOON	2017-09-27 22:00:15-04	\N
236609000 	ISTRIAN EXPRESS	2014-06-05 19:42:39-04	\N
236611000 	CALAMAR	2013-03-18 03:47:12-04	\N
236622000 	CONSTANCE	2012-06-13 01:57:54-04	\N
236629000 	IVER ACTION	2014-03-18 13:47:53-04	\N
236630000 	IVER ACCORD	2012-04-11 08:36:38-04	\N
236638000 	ANAFI	2013-12-24 04:42:17-05	\N
236644000 	SYLVIA	2012-02-09 03:07:44-05	\N
236646000 	ORAKAI	2013-06-01 20:44:45-04	\N
236647000 	ORALYNN	2017-03-23 10:53:00-04	\N
236655000 	AASTUN	2015-07-08 06:57:20-04	\N
236656000 	AASFJORD	2013-12-08 05:00:34-05	\N
236662000 	IVER ABILITY	2012-05-19 13:17:28-04	\N
236663000 	HAPPY HOUR	2017-04-22 18:06:25-04	\N
236668000 	KEY WEST	2015-03-03 13:21:48-05	\N
236669000 	KEY NORTH	2014-06-08 18:49:16-04	\N
236670000 	ARA ANTWERPEN	2012-02-06 20:40:14-05	\N
236673000 	TRITON	2017-03-06 22:25:23-05	\N
236685000 	BOW DIAMOND	2014-07-25 11:18:49-04	\N
236691000 	ARA LIVERPOOL	2018-08-04 21:39:46-04	\N
236696000 	HELENA	2016-05-09 15:32:06-04	\N
236700000 	CONESTE	2015-02-04 10:26:07-05	\N
236702000 	SELASSE	2014-10-25 21:32:44-04	\N
236709000 	SEASTAR TITAN	2013-04-12 14:14:14-04	\N
236711000 	AASVIK	2014-01-15 09:45:56-05	\N
236722000 	ORATUULIA	2018-11-09 17:14:11-05	\N
236723000 	SEASTAR VENTURE	2018-11-16 15:35:02-05	\N
237000001 	IGNATIOS XVII	2013-08-26 00:12:06-04	\N
237008100 	POSIDON HELLAS	2015-11-10 02:40:28-05	\N
237015200 	NISSOS KALYMNOS	2015-12-16 14:04:43-05	\N
237026300 	ARTEMIS	2016-10-13 13:54:59-04	\N
237032000 	KRITI  II	2014-09-27 10:16:54-04	\N
237039500 	DELOSEXPRESS	2018-09-19 03:04:35-04	\N
237042500 	AGIA MARINA	2017-08-20 02:30:25-04	\N
237066000 	EXPRESS SKIATHOS	2015-01-24 20:49:53-05	\N
237087500 	IRINI	2012-05-27 19:05:11-04	\N
237095000 	EXPRESS PEGASUS	2015-10-24 16:28:40-04	\N
237096700 	AEGINA II	2016-04-16 12:23:20-04	\N
237110600 	CARMEN SERENA	2015-06-25 21:52:41-04	\N
237111800 	IRINI K	2012-05-18 13:52:39-04	\N
237141000 	MICHALIS	2015-08-20 20:50:23-04	\N
237230000 	STROFADES	2015-03-11 17:46:56-04	\N
237266100 	L.L.	2015-02-15 12:59:38-05	\N
237294700 	TELAMON	2016-09-25 23:25:33-04	\N
237327000 	SEKAVIN	2016-02-03 08:28:05-05	\N
237391300 	DORMIN	2014-06-30 07:05:01-04	\N
237472200 	SALCA	2015-11-27 21:13:29-05	\N
237515700 	ASTARTI	2014-01-05 21:33:06-05	\N
237526000 	PANAGIOTA 2	2014-01-14 12:07:50-05	\N
237574100 	SOUDA II	2014-06-28 00:07:39-04	\N
237644000 	PLATAMON	2013-05-27 03:25:05-04	\N
237677000 	MINERVA ALEXANDRA	2016-03-27 08:01:14-04	\N
237710400 	PILOT BOAT PY55	2018-04-02 21:41:56-04	\N
237746200 	THALES OF MILETUS	2013-01-18 23:17:26-05	\N
237746400 	THEOMITOR	2015-11-02 23:52:08-05	\N
237810700 	LET IT BE	2012-01-15 23:30:58-05	\N
237816200 	IOANNIS THIRESIA	2018-09-19 07:23:47-04	\N
237818200 	FANEROMENI	2014-10-10 16:43:36-04	\N
237963600 	KARINA	2017-05-23 00:54:22-04	\N
237966000 	PANORAMA	2017-10-18 06:21:21-04	\N
238023000 	AP ARGOSY	2019-01-20 18:28:54-05	\N
238031040 	SAMSARA	2015-01-25 07:29:54-05	\N
238072940 	FENIKS	2013-10-26 10:02:06-04	\N
238199000 	CITY OF DUBROVNIK	2018-04-08 09:05:25-04	\N
238233000 	DONAT	2017-07-21 12:47:11-04	\N
238249000 	ZAGREB	2013-09-14 00:54:21-04	\N
238257000 	KASTAV	2013-09-24 23:32:53-04	\N
238265000 	VERIGE	2014-11-18 10:15:42-05	\N
238297000 	VERUDA	2015-02-19 00:30:56-05	\N
238311000 	PUNTA	2017-02-15 14:39:56-05	\N
238430040 	PARIS	2013-10-06 00:38:42-04	\N
238897610 	GIRA	2013-02-17 02:42:36-05	\N
238900840 	TURETA	2017-12-25 03:29:43-05	\N
238905840 	ANTONI	2016-10-01 13:53:29-04	\N
238975610 	SISOL	2016-10-27 13:05:47-04	\N
239011300 	ANNA	2016-09-13 08:32:53-04	\N
239054100 	S/Y AFRODITI	2016-01-10 15:11:33-05	\N
239076600 	ANNA II	2018-12-28 15:45:11-05	\N
239098000 	AG. NIKOLAOS	2018-10-31 14:16:38-04	\N
239279500 	KOSTAS DIMAKIS	2016-08-28 01:34:05-04	\N
239281900 	MARING	2015-04-16 01:15:57-04	\N
239299000 	GALILEO	2015-12-23 21:27:11-05	\N
239308000 	IONIS	2018-08-02 12:33:45-04	\N
239310300 	JJB HORIZON	2014-08-09 01:00:22-04	\N
239322900 	BOSANOVA	2017-04-09 07:14:31-04	\N
239383000 	PANAGIA GRIDIOTISSAI	2017-06-19 12:35:15-04	\N
239386000 	NISSOS KEFALONIA	2014-02-10 21:23:34-05	\N
239401600 	LIBE	2013-09-16 18:17:46-04	\N
239433300 	M/S IRAKLIS L	2016-06-04 18:04:16-04	\N
239470100 	SUNDAY	2013-12-19 07:01:23-05	\N
239512000 	GEORGIOS L	2019-01-31 14:52:33-05	\N
239550200 	AEGEAN ORION	2012-07-26 03:32:38-04	\N
239670000 	CARMEN FONTANA	2018-01-04 15:31:04-05	\N
239672000 	BLUE GALAXY	2012-09-05 19:18:05-04	\N
239673700 	LIMIN PRINOS	2016-07-21 13:04:52-04	\N
239717600 	NEARCHOS	2017-10-08 04:30:02-04	\N
239735200 	AMELIA	2015-04-17 04:31:45-04	\N
239754600 	MERCY	2018-01-25 13:01:02-05	\N
239784800 	NAVASOL	2012-10-20 18:53:13-04	\N
239882000 	KARAPIPERIS 18	2018-11-30 09:34:26-05	\N
239920700 	MARIE	2012-12-02 16:24:19-05	\N
239923000 	BLUE STAR NAXOS	2012-12-06 11:28:37-05	\N
239924000 	BLUE STAR PAROS	2015-01-05 00:39:12-05	\N
239925700 	ANASSA M	2014-05-16 17:32:02-04	\N
239934200 	SEA LINK 3	2016-02-25 06:56:42-05	\N
239935100 	ENERGEAN WAVE	2013-08-28 00:01:30-04	\N
239951600 	HYDRA VIII	2017-08-10 12:37:25-04	\N
239953000 	LPG_MELINA	2017-02-07 08:06:57-05	\N
239955800 	SUNSET AMORGOS	2015-04-08 16:25:11-04	\N
239956000 	ALEXANDRA	2015-08-01 15:26:11-04	\N
239961400 	EQUINOX	2012-11-25 09:45:24-05	\N
239962000 	MAKRONISSOS	2018-10-17 22:53:28-04	\N
239968500 	AINA	2016-09-05 19:15:22-04	\N
239968800 	APOLLON	2015-03-20 00:41:47-04	\N
239981000 	AQUA JEWEL	2014-02-18 02:23:57-05	\N
239982500 	DALOLI	2015-01-28 07:37:21-05	\N
239985600 	IOANNIS-SOPHIA K	2013-12-23 14:27:38-05	\N
239989000 	AEGEAN FREEDOM	2018-04-17 00:39:35-04	\N
239995400 	KYRIARCHOS IV	2018-04-21 15:03:37-04	\N
239998500 	VERNICOS OCEANOS	2018-10-30 08:22:49-04	\N
239998600 	ACCORD	2016-08-01 05:15:47-04	\N
240000901 	M/Y LIBRA Y	2013-10-18 00:40:53-04	\N
240013300 	SUN ANEMOS	2014-10-13 04:04:44-04	\N
240025700 	CHRISTOS XL	2013-03-13 03:24:23-04	\N
240035100 	SUNSET MILOS	2015-05-02 21:13:13-04	\N
240040300 	CHARLIE	2017-07-18 22:04:16-04	\N
240043800 	ARCHON MICHAIL	2018-10-18 09:38:42-04	\N
240045800 	PATHOS	2018-06-18 06:05:05-04	\N
240050200 	MY OFFICE	2016-10-19 23:21:38-04	\N
240059300 	M/Y ACIONNA	2017-03-09 01:26:48-05	\N
240069000 	ELKA ARISTOTLE	2018-01-13 21:22:11-05	\N
240070200 	SOLSTICE	2017-06-14 17:23:17-04	\N
240085300 	VALIUM 62	2014-04-27 16:48:23-04	\N
240085600 	SOPHIA	2016-09-08 04:11:02-04	\N
240091500 	ANNABELLA	2014-12-15 07:39:30-05	\N
240111800 	M/Y BILLA	2012-04-13 02:12:20-04	\N
240126000 	ASTRO PERSEUS	2012-02-29 18:55:47-05	\N
240127500 	ASTARTE	2013-12-24 22:26:45-05	\N
240132000 	SERRA	2014-08-08 11:07:00-04	\N
240133000 	APOLLONIA	2017-01-10 14:54:46-05	\N
240138600 	ALCYONE	2016-06-18 03:16:20-04	\N
240150000 	AGIOS DIMITRIOS	2014-06-27 12:53:05-04	\N
240150400 	BABALU	2017-05-07 05:37:41-04	\N
240158000 	ALONISSOS	2014-02-21 19:56:01-05	\N
240165000 	ELIZABETH I.A.	2017-03-22 08:44:45-04	\N
240176000 	MINERVA ZOE	2012-11-23 12:10:31-05	\N
240192000 	PANAGIA SKIADENI	2015-07-04 15:10:35-04	\N
240244000 	DELTA PIONEER	2016-09-07 01:18:27-04	\N
240245000 	AEGEAN DIGNITY	2017-10-13 03:03:53-04	\N
240284000 	ARCHANGELOS GABRIEL	2019-01-06 12:58:34-05	\N
240285000 	EVIAPETROL I	2016-12-28 11:10:04-05	\N
240290000 	DELTA VICTORY	2019-02-24 15:53:05-05	\N
240305000 	MT DELTA CAPTAIN	2015-08-16 23:05:31-04	\N
240307000 	DELTA SAILOR	2014-09-13 04:01:18-04	\N
240350000 	M.T DEEP BLUE	2015-12-15 19:37:58-05	\N
240381000 	PANDION	2017-09-02 10:53:18-04	\N
240383000 	DODEKANISOS PRIDE	2015-07-12 23:12:48-04	\N
240426000 	MARIA	2012-01-20 10:53:47-05	\N
240437000 	ARCHANGEL	2013-10-15 20:20:47-04	\N
240438000 	APILIOTIS	2017-12-07 14:28:38-05	\N
240444000 	DESPINA	2015-06-23 15:27:02-04	\N
240483000 	KINTARO	2018-11-24 11:45:26-05	\N
240486000 	SIMAISMA	2012-06-27 21:20:47-04	\N
240493000 	EVIAPETROL II	2017-11-09 01:38:31-05	\N
240510000 	EXPLORER	2017-08-06 02:47:51-04	\N
240521000 	THEOLOGOS P .	2017-02-09 05:35:25-05	\N
240531000 	PROTEAS	2016-10-25 12:52:02-04	\N
240547000 	PROMITHEAS	2017-08-28 09:08:22-04	\N
240556000 	CAP GUILLAUME	2015-11-07 21:29:03-05	\N
240559000 	SUNDAY	2017-02-27 11:37:06-05	\N
240605000 	BELLA STELLA	2018-09-19 08:02:26-04	\N
240612000 	IFESTOS 3	2017-02-05 02:35:03-05	\N
240630000 	AMETHYST	2014-09-13 20:17:27-04	\N
240645000 	GREAT LADY	2018-02-27 03:40:58-05	\N
240653000 	MINERVA DOXA	2014-01-11 22:32:28-05	\N
240657000 	AEGEAN NOBILITY	2018-11-02 12:48:05-04	\N
240672000 	NISSOS CHIOS	2014-12-02 00:20:16-05	\N
240680000 	ANTIKEROS	2014-02-25 13:16:18-05	\N
240688000 	ALEXANDRA G	2017-04-13 01:19:15-04	\N
240689000 	ECOKEEPER	2018-05-02 19:50:08-04	\N
240691000 	ASTREA	2015-06-21 00:06:54-04	\N
240713730 	AEGEAN VIII	2015-04-25 23:51:30-04	\N
240716000 	MINERVA JULIE	2018-08-12 22:10:16-04	\N
240728000 	MINERVA  VASO	2013-09-28 12:11:49-04	\N
240730000 	MINERVA VIRGO	2014-10-23 07:48:22-04	\N
240733000 	ALEXANDER 3	2016-02-05 14:47:34-05	\N
240821000 	DELTA IOS	2015-04-30 01:39:36-04	\N
240827000 	EKO 2	2019-01-03 16:27:27-05	\N
240833000 	ANASSA	2018-04-27 11:14:43-04	\N
240836000 	PHAETHON	2013-01-10 12:15:26-05	\N
240871000 	AEGEAN BREEZE I	2016-06-07 09:06:45-04	\N
240873000 	CHRISTOS XIV	2018-08-09 12:21:35-04	\N
240897000 	AEGEAN ACE	2018-01-28 14:03:10-05	\N
240901000 	TILOS	2012-11-19 11:38:43-05	\N
240913000 	EK0 3	2015-11-03 02:00:49-05	\N
240919000 	CHRISTOS XIII	2016-06-14 16:35:35-04	\N
240920000 	MARIA OLGA	2012-04-23 09:57:18-04	\N
240941000 	KRITI RUBY	2015-10-02 23:50:01-04	\N
240949000 	M\\T EVIAPETROL III	2017-05-02 07:44:23-04	\N
240963000 	AGIOS NIKOLAS	2018-10-26 11:42:28-04	\N
240967000 	DRAGON	2012-01-10 12:03:03-05	\N
240985000 	RHINO	2012-03-23 12:08:51-04	\N
240991000 	FOURNI	2017-08-14 09:28:47-04	\N
240995000 	NICOLAOS	2012-05-27 03:03:14-04	\N
240998000 	HECTOR	2012-09-23 09:21:11-04	\N
241011000 	CHRISTOS XXI	2014-04-03 16:46:03-04	\N
241012000 	CHRISTOS XX	2014-02-16 19:43:22-05	\N
241024000 	ONEIRO	2015-06-03 21:44:12-04	\N
241025000 	ERMIONI	2012-11-26 19:00:10-05	\N
241080000 	CAPTAIN MICHAEL	2014-01-17 06:13:43-05	\N
241081000 	ANCALLIA	2012-05-10 05:41:05-04	\N
241087000 	BLUE STAR DELOS	2016-09-16 01:21:25-04	\N
241090000 	MINERVA EMMA	2016-02-14 15:24:31-05	\N
241107000 	SYMI	2017-09-16 04:10:11-04	\N
241109000 	SOUDA	2013-04-30 14:22:11-04	\N
241109340 	MARIJE G	2015-01-16 23:48:25-05	\N
241115000 	KARPATHOS	2018-10-15 23:30:33-04	\N
241124000 	DORIC VALOUR	2013-11-24 08:12:17-05	\N
241125000 	CAPTAIN PETROS H	2013-09-29 11:26:11-04	\N
241126000 	AEGIS I	2014-03-05 00:22:28-05	\N
241159000 	BLUE STAR PATMOS	2017-03-16 23:02:38-04	\N
241183000 	DESERT OASIS	2014-03-24 01:11:58-04	\N
241208000 	ALPHA PROGRESS	2016-07-10 03:01:46-04	\N
241213000 	IPANEMAS	2015-09-09 23:10:29-04	\N
241231000 	KRITI SEA	2018-11-15 13:53:03-05	\N
241236000 	LADY MALOU	2012-05-20 09:24:54-04	\N
241251000 	EVINOS	2015-06-07 12:39:03-04	\N
241277000 	IONIC	2014-05-19 08:01:04-04	\N
241294000 	ATHINA M	2017-07-22 18:40:18-04	\N
241305000 	KEROS	2017-06-05 20:59:57-04	\N
241317000 	ATALANDI	2012-07-02 15:04:58-04	\N
241320000 	SERENITY	2015-11-19 12:04:53-05	\N
241324000 	ERATO	2019-01-05 15:53:43-05	\N
241326000 	SEA FALCON	2017-12-18 11:55:19-05	\N
241330000 	OLYMPIC LIGHT	2015-04-20 04:26:52-04	\N
241335000 	PIREAS	2014-10-06 06:18:00-04	\N
241336000 	CHIOS FREEDOM	2016-02-06 11:22:18-05	\N
241372000 	MINERVA TYCHI	2017-08-21 19:36:53-04	\N
241384000 	MILOS AT SEA	2013-06-27 21:45:18-04	\N
241385000 	NISSOS SCHINOUSSA	2014-07-23 01:15:40-04	\N
241397000 	VALIANT ENERGY	2016-10-17 08:18:43-04	\N
241401000 	OASIS	2013-06-24 17:47:27-04	\N
241410000 	KITHNOS	2014-01-08 04:32:45-05	\N
241422000 	DILIGENT WARRIOR	2015-10-23 03:59:03-04	\N
241423000 	GERANI	2012-10-30 15:44:02-04	\N
241429000 	ANANGEL VENTURE	2016-06-16 03:00:24-04	\N
241437000 	MARAN ARETE	2012-11-05 14:30:42-05	\N
241443000 	PANTOKRATOR	2013-05-14 06:08:54-04	\N
241449000 	SKYROS	2016-10-24 04:21:09-04	\N
241453000 	FAITHFUL WARRIOR	2018-08-29 19:58:28-04	\N
241477000 	PANAMA BLUE	2016-05-18 22:55:24-04	\N
241490000 	MARAN HERMIONE	2012-01-27 22:07:14-05	\N
241495000 	KAPETAN CHRISTOS	2015-12-05 08:20:57-05	\N
241497000 	SPEEDWAY	2016-08-21 16:11:54-04	\N
241499000 	PARVATI	2015-10-03 17:26:31-04	\N
241500000 	FOTINI Z	2015-10-16 21:58:07-04	\N
241509000 	CPTN KOSTAS	2017-09-27 11:19:48-04	\N
241511000 	IAPETOS	2014-08-14 14:44:41-04	\N
241513000 	CARPE DIEM	2018-11-14 20:00:47-05	\N
241519000 	MARAN AJAX	2013-10-02 01:00:30-04	\N
241526000 	KONSTANTINOS G	2012-07-15 01:40:06-04	\N
241530000 	NEAPOLIS	2017-11-17 03:53:57-05	\N
241571000 	VERNICOS SIFNOS	2018-06-14 17:54:29-04	\N
241588000 	CHRISTOS XLVI	2015-12-20 04:30:02-05	\N
241591000 	DIAGORAS	2014-01-17 21:43:47-05	\N
241597000 	VASILIKI	2016-12-15 17:38:37-05	\N
241605000 	SYROS	2012-09-06 06:27:54-04	\N
241607000 	ARGIRONISSOS	2015-12-23 02:59:27-05	\N
241611000 	KALIKRATIS	2016-02-28 03:31:48-05	\N
241616000 	ECOFRIEND	2015-02-19 16:47:02-05	\N
241617000 	MYKONOS PALACE	2015-12-09 21:19:48-05	\N
241618000 	SEA PANTHER	2015-06-15 13:46:50-04	\N
241623000 	MARAN ARCTURUS	2013-06-29 19:07:27-04	\N
241641000 	SEA HARMONY	2012-03-23 11:31:18-04	\N
241647000 	PAROS	2012-02-02 14:08:17-05	\N
241654000 	M/T APTERA	2012-10-11 14:24:27-04	\N
242228000 	LE RIF	2016-08-25 16:51:05-04	\N
242944000 	LAAYOUNE	2013-03-14 09:12:08-04	\N
243042488 	TOKAJ 2	2013-02-23 15:12:01-05	\N
243042659 	HENRI.	2017-09-16 01:02:22-04	\N
243070219 	BAROSS	2018-08-15 12:56:23-04	\N
243070804 	ELJO-D	2018-05-10 11:03:28-04	\N
243070815 	HERSO1	2017-11-11 14:54:37-05	\N
243990530 	EXCELSIOR	2017-09-07 11:02:55-04	\N
244001998 	FLAMINGO	2013-09-16 00:04:13-04	\N
244002000 	GITANA	2016-01-09 08:56:45-05	\N
244002007 	BRISANI	2016-12-17 07:58:09-05	\N
244002106 	LINA	2013-05-01 20:35:03-04	\N
244002136 	BALDER	2018-06-21 07:20:55-04	\N
244002152 	DISPONIBEL	2015-07-10 01:21:39-04	\N
244002228 	COLORADO	2018-04-25 03:13:46-04	\N
244002247 	DORUS	2016-01-03 01:52:17-05	\N
244003000 	LADY CHRISTINA	2016-10-31 16:59:40-04	\N
244005773 	ROBBE	2015-05-22 04:18:17-04	\N
244005823 	REVOLUTION	2014-12-28 13:46:30-05	\N
244005869 	STT EXCEPTIONAL	2017-05-23 20:03:33-04	\N
244005917 	PIZ AMALIA	2013-09-01 18:14:05-04	\N
244005982 	LUCKY STRIPPER	2018-07-30 11:06:34-04	\N
244006037 	MARTENS 5	2018-10-17 01:19:06-04	\N
244006435 	JAN 7	2015-11-28 16:38:01-05	\N
244007000 	TWISTER	2015-08-11 22:01:54-04	\N
244010000 	VARNEBANK	2017-06-26 02:22:33-04	\N
244010004 	LACOMBLE	2015-10-11 09:49:25-04	\N
244010030 	DESPERADO	2018-08-01 10:26:26-04	\N
244010031 	VITESSE	2016-08-08 23:57:25-04	\N
244010042 	TURQUOISE	2012-05-12 15:41:33-04	\N
244010069 	ZANDLOPER	2014-11-04 10:31:36-05	\N
244010082 	AMBITIE	2015-04-23 09:29:03-04	\N
244010114 	LAUS DEO	2015-02-10 07:19:56-05	\N
244010131 	AMOUREUS	2014-09-26 00:32:56-04	\N
244010160 	JULIA	2014-05-04 00:47:39-04	\N
244010172 	ZORG EN VLIJT	2015-02-10 20:39:45-05	\N
244010182 	KAAT MOSSEL	2016-03-15 08:35:33-04	\N
244010183 	FREYR	2018-08-30 05:54:29-04	\N
244010190 	REINOD 1	2012-01-26 00:29:54-05	\N
244010219 	REINOD 6	2012-07-17 00:11:05-04	\N
244010253 	VEERHAVEN VII	2012-03-09 00:10:24-05	\N
244010258 	DOLFIJN	2015-06-20 07:34:33-04	\N
244010269 	CHALLENGER	2015-09-28 18:02:33-04	\N
244010283 	RAAF	2016-08-12 13:44:52-04	\N
244010311 	MAGNIFIQUE II	2018-09-08 08:46:33-04	\N
244010328 	ANNA VAN ORANJE	2012-07-10 15:44:47-04	\N
244010334 	LINQUENDA	2013-05-02 05:35:18-04	\N
244010349 	RIVER QUEEN	2017-11-08 23:25:28-05	\N
244010352 	MARTENS 10	2015-01-07 05:56:26-05	\N
244010358 	GEERTJE H	2014-03-05 14:20:49-05	\N
244010374 	IRON LADY	2012-12-08 10:38:50-05	\N
244010377 	TWIXX	2018-01-03 21:50:54-05	\N
244010398 	DRIE GEZUSTERS	2012-09-04 21:57:02-04	\N
244010437 	NIJVERHEID	2014-12-25 23:50:14-05	\N
244010489 	RAPITARD	2013-05-05 20:43:29-04	\N
244010511 	SOMBRA	2014-02-06 04:44:57-05	\N
244010542 	VENTO	2018-12-28 12:38:50-05	\N
244010568 	HEBO-CAT 11	2018-11-05 17:46:04-05	\N
244010573 	PIA	2015-11-20 02:51:41-05	\N
244010613 	MA LONDA/MA LONDA 2	2013-11-20 21:55:29-05	\N
244010615 	ETANCHE	2012-12-12 10:09:25-05	\N
244010644 	MANUS	2018-04-23 09:15:46-04	\N
244010655 	RIJNLAND 3	2012-06-17 21:44:30-04	\N
244010701 	TESSA	2016-12-30 05:53:32-05	\N
244010708 	BLUE WHALE	2012-11-06 09:44:45-05	\N
244010724 	SURVEYOR 2	2016-06-12 03:31:34-04	\N
244010731 	LORENTZ	2014-06-17 08:54:21-04	\N
244010770 	TEUNIS	2015-02-15 01:46:31-05	\N
244010773 	LEVANTE	2013-01-17 20:08:50-05	\N
244010774 	TRIVOR	2016-08-02 06:40:08-04	\N
244010797 	BUGSIER 5	2013-02-03 09:28:54-05	\N
244010803 	MARTENS 7	2014-01-15 15:13:56-05	\N
244010847 	OKIDOKI	2014-05-16 15:41:52-04	\N
244010879 	QUO VADIS	2013-05-09 15:11:54-04	\N
244010887 	SCHEURPLUS	2013-08-30 10:43:38-04	\N
244010890 	VAHALIS 2	2017-03-11 07:27:29-05	\N
244010898 	SPIEGELGRACHT	2012-02-20 06:12:24-05	\N
244010913 	ALPHEN	2012-09-03 09:13:41-04	\N
244010924 	REHOBOTH	2016-08-06 22:39:03-04	\N
244010950 	EXPECTO	2014-03-02 14:43:06-05	\N
244010955 	GALILEO	2012-07-18 23:42:11-04	\N
244010956 	P93	2014-12-02 18:03:29-05	\N
244010966 	VERTROUWEN	2016-07-09 08:57:53-04	\N
244011000 	VOLVOX OLYMPIA	2015-09-13 10:31:11-04	\N
244012000 	YE38 DRIE GEBROEDERS	2015-01-28 16:06:00-05	\N
244013000 	HENDRIK KARSSEN	2018-09-21 21:19:45-04	\N
244013009 	THUN EOS	2018-09-18 20:32:53-04	\N
244013045 	UWE JENS LORNSEN	2013-08-19 23:28:27-04	\N
244013079 	EMMA	2015-05-07 13:23:15-04	\N
244013090 	ZWALUW	2012-07-27 13:27:27-04	\N
244013097 	IT BEAKEN	2015-03-04 08:45:48-05	\N
244013109 	CASCADE	2012-10-22 13:50:58-04	\N
244013120 	IRRESISTIBLE	2013-12-05 10:11:05-05	\N
244013121 	TX65 BONA FIDE	2017-08-31 11:16:38-04	\N
244013126 	SUND	2017-09-10 21:50:19-04	\N
244013134 	CLASINA MARIA	2016-11-22 21:19:14-05	\N
244013148 	STAVRIA	2018-12-27 07:26:48-05	\N
244013181 	TESSRON	2013-06-23 10:36:42-04	\N
244013189 	FOX	2013-06-21 00:35:45-04	\N
244013192 	ANCOR	2013-01-07 02:11:18-05	\N
244013200 	VARIATIE	2018-07-22 23:09:45-04	\N
244013202 	REHOBOTH	2012-01-09 03:11:06-05	\N
244013210 	LUCIDA (PILOTS)	2014-07-18 05:46:53-04	\N
244013228 	BLUEFISH	2018-05-21 23:38:09-04	\N
244013532 	BRUUZER EXPERIENCE	2012-09-29 23:53:38-04	\N
244013558 	WAL-NOOD 1	2017-08-18 04:47:25-04	\N
244013585 	GEEST VAN HELENA	2016-10-30 20:33:20-04	\N
244013586 	PIERRE CUYPER	2015-04-13 19:42:28-04	\N
244013587 	ENTERPRISE	2015-02-04 04:31:58-05	\N
244013589 	NAVEX	2012-10-31 21:04:59-04	\N
244013605 	OHSOSTILL	2014-02-08 13:52:48-05	\N
244013634 	PELGRIM	2013-08-26 23:48:19-04	\N
244013643 	MARIA	2013-11-26 10:30:44-05	\N
244013663 	VROUWE CORNELIA	2013-02-09 22:59:28-05	\N
244013718 	ALIE-JAN	2013-09-24 05:06:05-04	\N
244013793 	BELIER	2013-08-20 03:30:11-04	\N
244014719 	METAMORFOSE	2014-05-21 13:54:59-04	\N
244016927 	IKAA	2014-02-21 19:38:28-05	\N
244016980 	MARE	2013-01-02 11:56:56-05	\N
244017000 	FRISIAN LADY	2012-11-20 14:02:19-05	\N
244020000 	THUN EVOLVE	2017-05-15 04:07:09-04	\N
244020019 	WADDENZEE	2012-03-18 00:52:24-04	\N
244020020 	NOORDSTER	2017-07-01 08:37:19-04	\N
244020025 	MINSENEROOG	2014-07-15 05:58:38-04	\N
244020033 	POOLSTER	2018-12-20 09:49:34-05	\N
244020045 	CARINO	2018-10-05 13:54:09-04	\N
244020048 	NUNALIK	2012-03-09 09:05:03-05	\N
244020072 	VLIJ	2016-08-09 14:13:09-04	\N
244020076 	INSULINDE	2014-03-14 21:50:46-04	\N
244020081 	DURK	2015-06-16 20:49:00-04	\N
244020093 	ALEMAR	2017-09-17 17:53:50-04	\N
244020112 	CAPELLA	2012-02-02 14:00:38-05	\N
244020139 	KELVIN	2013-04-04 02:40:54-04	\N
244020144 	VALENCIA	2012-02-04 22:12:49-05	\N
244020160 	VONDEL	2012-01-13 21:17:38-05	\N
244020177 	NORN	2019-02-25 00:49:51-05	\N
244020207 	UNION XII	2018-09-19 15:04:39-04	\N
244020210 	JAMES HAYLETT	2016-05-06 19:07:56-04	\N
244020244 	ROMIBRA	2014-04-27 13:33:14-04	\N
244020258 	DELTA	2013-03-15 23:55:04-04	\N
244020271 	NORALEIN	2018-03-12 05:36:11-04	\N
244020285 	Q4	2014-11-14 09:40:20-05	\N
244020352 	SCH 63 QUO VADIS	2016-02-29 16:45:32-05	\N
244020353 	WINDSHIFT	2017-05-28 22:36:05-04	\N
244020362 	PASCAL	2012-05-30 21:14:40-04	\N
244020365 	NICKELINE	2017-10-15 20:03:23-04	\N
244020401 	D.G. HARMSEN	2016-05-17 15:27:41-04	\N
244020409 	PASTEUR	2016-12-08 07:33:17-05	\N
244020435 	LADY ASTRID	2013-08-13 05:23:09-04	\N
244020440 	GIOVANNI R-DAM	2013-09-22 14:47:47-04	\N
244020442 	DIXBAY	2012-04-06 10:49:24-04	\N
244020463 	MARKSTROOM	2016-03-21 11:15:02-04	\N
244020472 	REGULUS	2013-12-25 06:37:41-05	\N
244020482 	FRIENDSHIP	2013-01-16 10:35:31-05	\N
244020488 	HARTELSTROOM	2014-07-14 08:30:51-04	\N
244020518 	VEERLE	2018-01-17 12:14:44-05	\N
244020521 	ONDERNEMING	2013-07-25 02:26:04-04	\N
244020530 	PALADIN	2012-05-13 02:04:46-04	\N
244020532 	TIMSHEL	2018-11-26 08:26:10-05	\N
244020543 	LIQUIDOS	2014-03-14 16:14:38-04	\N
244020550 	ZEEZEILER	2018-10-31 20:26:51-04	\N
244020558 	CONATUS	2018-07-27 07:06:13-04	\N
244020560 	QUINTA	2016-08-19 04:29:08-04	\N
244020589 	NOORTSTROOM	2014-07-17 23:29:08-04	\N
244020615 	DAAN	2015-11-03 18:28:20-05	\N
244020670 	WAYANA	2012-03-14 01:02:05-04	\N
244020684 	INTERMEZZO	2014-02-23 20:04:42-05	\N
244020707 	FUERTE	2016-04-23 23:54:44-04	\N
244020721 	SYNTHESE 2	2017-09-21 12:31:59-04	\N
244020761 	DONATA	2017-07-22 18:43:37-04	\N
244020774 	HAMSTER	2017-06-13 14:58:03-04	\N
244020814 	NAUTICA	2017-02-07 19:36:37-05	\N
244020865 	BLUE-OCEAN	2018-07-05 11:11:41-04	\N
244020876 	VANCOUVER	2018-05-03 14:15:20-04	\N
244020891 	CORRY DIJKSTRA V ELK	2016-09-24 13:39:18-04	\N
244020916 	REINOD 15	2014-03-24 00:58:59-04	\N
244020919 	AQUA MYRA	2018-11-18 00:49:08-05	\N
244020943 	WESTSTELLINGWERF	2012-12-12 11:13:58-05	\N
244021583 	MIKKY MAY	2015-06-13 14:00:09-04	\N
244022503 	SENDO LINER	2014-10-16 19:27:30-04	\N
244023736 	AQUA CRYSTAL	2016-07-23 04:47:02-04	\N
244024000 	CAROLINE ESSBERGER	2017-10-11 20:11:08-04	\N
244024769 	BRANDARIS	2017-02-05 01:40:46-05	\N
244024786 	AQUA JADE	2014-12-27 13:03:46-05	\N
244024788 	ELISABETH	2016-09-05 06:48:24-04	\N
244024794 	LEAL	2016-04-26 16:27:31-04	\N
244024797 	VAGANT	2012-05-10 02:11:14-04	\N
244024829 	DORIS	2016-04-06 02:52:44-04	\N
244025000 	HNLMS MAKKUM	2015-11-21 05:19:25-05	\N
244025735 	AMANTE	2017-03-15 18:52:19-04	\N
244026086 	LE PAPILLON	2016-06-18 08:22:18-04	\N
244026204 	POOLSTER	2015-04-05 06:42:21-04	\N
244027000 	AMMON	2012-11-14 11:33:28-05	\N
244030023 	HEBO CAT 5	2017-12-15 20:15:09-05	\N
244030035 	DOKTER WAGEMAKER	2015-03-23 04:05:49-04	\N
244030069 	P85	2012-08-02 01:47:19-04	\N
244030091 	ENDURANCE	2015-07-23 17:31:44-04	\N
244030117 	KRVE 86	2018-12-01 11:03:22-05	\N
244030123 	TX 51	2018-10-13 19:14:49-04	\N
244030134 	JAN VAN DER HEYDE 4	2015-05-11 13:59:12-04	\N
244030159 	LILY	2015-01-24 19:19:00-05	\N
244030161 	TJERCK HIDDES	2012-05-07 08:58:15-04	\N
244030175 	NESCIO	2015-02-14 07:21:17-05	\N
244030181 	VOS STONE	2012-05-28 02:14:09-04	\N
244030187 	HAVENSCHAP1	2013-01-11 17:04:20-05	\N
244030190 	VAERWEL	2012-04-05 17:30:09-04	\N
244030198 	IVERNIA	2012-10-15 00:34:22-04	\N
244030218 	ELAN	2016-01-06 21:02:29-05	\N
244030247 	MOSHULU	2018-01-08 22:52:10-05	\N
244030262 	NALASPA	2015-02-28 01:14:51-05	\N
244030275 	DEO FAVENTE	2018-05-09 06:58:44-04	\N
244030299 	MERCATOR	2014-08-07 14:40:32-04	\N
244030320 	VERONICA	2014-02-08 17:00:18-05	\N
244030384 	KW32	2015-12-21 10:20:08-05	\N
244030387 	KW33	2014-05-13 18:45:16-04	\N
244030388 	PRIDE OF MOTHER SEA	2012-11-14 04:12:46-05	\N
244030401 	NIALA	2014-09-15 19:40:47-04	\N
244030421 	VERANDERING	2017-12-14 14:30:13-05	\N
244030425 	JODILIAN	2012-02-10 01:39:57-05	\N
244030516 	SENTO	2019-01-21 19:58:30-05	\N
244030522 	MULTRATUG 33	2016-08-27 05:10:03-04	\N
244030549 	AZOLLA	2016-11-03 15:59:02-04	\N
244030557 	JOSHUA	2013-04-19 17:27:03-04	\N
244030575 	PRESTO	2012-05-20 07:52:29-04	\N
244030587 	HOOP OP ZEGEN	2014-01-02 12:09:00-05	\N
244030593 	STENA FORERUNNER	2015-04-14 05:28:08-04	\N
244030629 	ZILTBORG	2013-10-19 08:22:34-04	\N
244030633 	NEWFORD	2014-03-09 20:29:48-04	\N
244030634 	RACHEL	2016-07-23 12:40:12-04	\N
244030641 	TRAMP	2018-09-15 17:26:52-04	\N
244030666 	ELISABETH	2017-12-07 03:10:29-05	\N
244030670 	ALLIANTIE	2012-08-21 16:24:17-04	\N
244030678 	IJVEER 61	2012-07-01 06:05:02-04	\N
244030699 	VICE VERSA	2018-12-04 22:30:40-05	\N
244030715 	SIRIUS	2016-07-19 10:32:53-04	\N
244030722 	WL-25 ANTJE	2013-10-11 04:50:17-04	\N
244030778 	ARDJUNA II	2012-05-31 07:47:32-04	\N
244030810 	INVOTIS 9	2017-09-13 18:38:37-04	\N
244030839 	ANTILOPE	2016-04-02 18:09:37-04	\N
244030857 	SYNTHESE 10	2013-03-09 06:42:00-05	\N
244030868 	HESTIA	2017-08-31 06:42:04-04	\N
244030940 	WITTE DE WITH	2015-04-11 11:47:20-04	\N
244031000 	ZZ-4 CHRISTINA	2013-01-30 19:03:40-05	\N
244032000 	ZZ10 DE 4 GEBROEDERS	2015-09-06 06:52:57-04	\N
244043000 	OCTANS	2016-12-03 23:27:01-05	\N
244043281 	FENNA	2015-03-18 15:55:44-04	\N
244045000 	HEBO-CAT 15	2016-09-08 00:08:18-04	\N
244047000 	MULTRASALVOR 5	2017-11-10 22:41:56-05	\N
244048159 	WEG WEZE	2017-01-02 14:17:15-05	\N
244049000 	SCH10 DRIEGEBROEDERS	2018-06-06 00:30:00-04	\N
244049025 	ALTER VISION II	2015-08-31 23:44:42-04	\N
244049087 	BARENTSZZEE	2014-01-15 12:46:05-05	\N
244049165 	ZEEAREND	2016-03-21 15:34:36-04	\N
244050034 	POOLSTER	2017-12-23 10:58:26-05	\N
244050054 	MY DREAM	2018-02-01 10:07:58-05	\N
244050082 	CENTURION	2013-08-27 15:40:14-04	\N
244050197 	SVITZER TYPHOON	2018-04-21 19:14:14-04	\N
244050199 	SVITZER TITAN	2016-12-19 04:43:19-05	\N
244050205 	LANSINGH	2014-12-03 05:19:01-05	\N
244050206 	PRIVILEGE	2015-09-07 05:11:03-04	\N
244050207 	HALDIS	2014-12-19 08:28:27-05	\N
244050235 	ROMA	2016-09-02 15:23:48-04	\N
244050309 	P99	2013-08-27 23:40:02-04	\N
244050318 	ZWERVER 3	2017-11-25 17:20:06-05	\N
244050325 	BETA CURA	2016-07-29 11:18:54-04	\N
244050345 	KAS	2018-11-28 07:14:30-05	\N
244050370 	ANTARES	2015-08-26 14:04:41-04	\N
244050411 	INDIGO 2	2018-10-16 03:34:13-04	\N
244050465 	MARU	2013-03-26 06:08:48-04	\N
244050469 	RPA12	2017-05-04 20:20:41-04	\N
244050486 	JAN VAN GENT	2017-01-26 17:13:05-05	\N
244050521 	MEREL	2016-03-18 04:05:35-04	\N
244050638 	GRINDELWALD	2018-06-25 14:54:00-04	\N
244050658 	NOORDZEE	2014-11-24 20:25:47-05	\N
244050674 	HD48 DEINING	2014-07-18 03:57:25-04	\N
244050675 	ZEELEEUW	2015-12-16 10:16:28-05	\N
244050677 	VIKING	2015-07-17 03:19:31-04	\N
244050680 	ARNEPLUS	2014-11-06 08:41:38-05	\N
244050728 	LOTUS	2016-11-30 08:46:02-05	\N
244050773 	JOHANNA	2012-02-10 08:11:39-05	\N
244050784 	ITHAKA	2015-10-11 23:17:02-04	\N
244050812 	FORTWACHTER	2018-12-19 10:43:54-05	\N
244050844 	ARKLOW VANGUARD	2015-09-16 06:13:10-04	\N
244050860 	BOLDER	2013-07-19 01:13:45-04	\N
244050878 	RWS 44	2019-01-17 22:09:48-05	\N
244050913 	WILLY	2015-02-02 08:15:32-05	\N
244050914 	FADAM 1	2018-10-06 12:18:22-04	\N
244050915 	FADAM II	2013-10-22 03:45:57-04	\N
244050969 	GROTE STERN	2015-07-10 17:40:20-04	\N
244050974 	PHOENIX	2013-02-23 02:08:05-05	\N
244051000 	SIRIUS	2014-07-01 05:16:36-04	\N
244051095 	SWIND	2014-09-02 15:54:32-04	\N
244051108 	MEA VOTA	2013-03-21 13:47:05-04	\N
244051183 	SCHOLLEVAAR	2015-09-29 11:32:36-04	\N
244051212 	AURORA	2015-06-18 21:57:14-04	\N
244051268 	KLAZINA	2015-11-16 11:54:35-05	\N
244051290 	CATHARINA	2017-01-18 03:04:19-05	\N
244052000 	WR27 VISAREND	2015-01-24 19:07:48-05	\N
244052316 	AMBULANT	2013-01-14 22:53:13-05	\N
244053000 	YE20 SEMPERCONFIDENS	2018-02-15 22:05:47-05	\N
244054000 	SANDETTIE	2018-11-25 16:58:23-05	\N
244057001 	ROYALMOON	2014-04-04 08:02:02-04	\N
244057029 	ROMA	2013-02-22 02:57:54-05	\N
244057098 	LUNA	2012-06-30 01:32:12-04	\N
244058130 	MARIETJE	2012-03-22 22:47:40-04	\N
244058149 	HANNE	2018-09-08 06:49:32-04	\N
244058266 	CROIX DU SUD	2016-10-26 18:11:17-04	\N
244058896 	WALKABOUT	2012-11-19 04:11:46-05	\N
244059000 	LURO	2017-02-05 18:57:02-05	\N
244059044 	ALFA VERDE	2013-03-19 08:55:31-04	\N
244059206 	SOBRINO	2017-03-20 16:34:14-04	\N
244059346 	TESSA	2019-01-12 22:57:22-05	\N
244059975 	VELA	2014-06-02 13:18:02-04	\N
244060000 	UK57 HERMINA	2012-08-07 04:48:18-04	\N
244060004 	WEERGALOOS	2017-06-01 06:08:08-04	\N
244060053 	TOP-NOTCH	2017-10-01 12:01:22-04	\N
244060097 	LANGENORT	2013-02-10 04:24:41-05	\N
244060102 	PONT SLUISKIL	2014-11-02 12:03:54-05	\N
244060118 	IJVEER 62	2016-03-11 14:09:09-05	\N
244060125 	BRITT	2014-12-23 03:42:30-05	\N
244060189 	DIAMOND	2015-01-03 14:33:08-05	\N
244060192 	ELLEN	2018-08-21 04:43:38-04	\N
244060209 	AQUA EMERALD	2015-02-04 20:49:29-05	\N
244060223 	THREE POINT 4	2014-02-12 21:54:32-05	\N
244060254 	PRINCESS	2017-12-19 08:26:20-05	\N
244060298 	SOMTRANS XVII	2014-05-09 16:10:35-04	\N
244060306 	ZAGRI 1	2015-12-18 23:38:46-05	\N
244060319 	USHUAIA	2013-08-16 00:16:59-04	\N
244060337 	RENA	2014-12-31 21:13:08-05	\N
244060368 	SODRA ENDE	2017-09-03 18:24:25-04	\N
244060379 	KAPRIFOLIA	2017-07-20 00:33:26-04	\N
244060389 	SALVATOR	2015-03-02 09:44:20-05	\N
244060400 	PARCIVAL	2013-07-09 15:47:28-04	\N
244060443 	MORGAN	2014-10-28 09:45:04-04	\N
244060545 	NIKY	2014-10-01 14:22:13-04	\N
244060607 	VERWISSELING	2014-04-25 07:07:30-04	\N
244060613 	GORDITA	2015-04-29 04:47:50-04	\N
244060628 	FOREIGN OFFICE	2017-08-23 05:06:46-04	\N
244060664 	CECYLIA	2013-04-22 08:45:02-04	\N
244060668 	ELLY VERSCHOOR	2013-10-04 12:06:17-04	\N
244060677 	ADAGIO	2017-01-12 12:36:36-05	\N
244060715 	MAI-W	2015-02-07 11:22:30-05	\N
244060720 	CAPE HORN	2018-04-05 21:35:56-04	\N
244060730 	TZAR	2017-05-20 08:17:41-04	\N
244060752 	GAMBLE	2016-01-08 12:58:53-05	\N
244060760 	PA3 / TRITON	2015-06-05 18:44:30-04	\N
244060767 	DAMINA-K	2015-04-04 12:38:36-04	\N
244060787 	RIVER DREAM	2015-11-19 11:30:49-05	\N
244060788 	LYDIA	2015-02-09 08:55:38-05	\N
244060802 	SYMPHONY PROVIDER	2017-11-20 19:57:28-05	\N
244060806 	FRANCISCA	2012-09-25 09:51:18-04	\N
244060808 	BELLE VIE	2017-06-11 08:04:42-04	\N
244060815 	RPA24	2017-12-18 23:47:02-05	\N
244060826 	DELTATRANS	2014-11-26 07:05:55-05	\N
244060828 	FIDENTE	2018-10-20 02:52:19-04	\N
244060838 	ANIMO	2016-06-10 03:18:49-04	\N
244060875 	STC ALBATROS	2013-03-04 11:40:57-05	\N
244060879 	RPA20	2012-09-26 22:20:26-04	\N
244060885 	IDA	2012-08-07 18:50:50-04	\N
244060910 	SMIT WAALHAVEN 5	2015-10-27 00:19:01-04	\N
244060924 	FIXUT MARIS	2013-12-23 10:09:15-05	\N
244060997 	COR. 13:13	2018-06-09 13:56:29-04	\N
244061000 	HEIN	2014-08-27 06:58:51-04	\N
244061093 	YLKE II	2016-05-14 19:31:43-04	\N
244061146 	WINDFALL	2017-07-17 04:13:38-04	\N
244061208 	BURMESTER 100	2016-02-14 21:35:32-05	\N
244062000 	TH7 ADRIANA MARIA	2012-02-02 21:12:34-05	\N
244063000 	LECKO	2018-04-09 00:53:42-04	\N
244069365 	EERSTE ZORG	2014-03-22 19:03:57-04	\N
244070038 	QUO-VADIS	2016-08-08 02:30:46-04	\N
244070111 	SCALD	2016-04-15 12:14:30-04	\N
244070112 	NEVADA	2013-07-09 16:14:01-04	\N
244070127 	REALITY	2015-12-24 19:57:39-05	\N
244070134 	AGNES	2018-07-06 03:09:08-04	\N
244070156 	RPA03	2013-06-17 04:55:29-04	\N
244070177 	DRIFT	2015-12-06 08:39:30-05	\N
244070188 	SCAPA	2014-03-03 02:24:15-05	\N
244070221 	JACKSON 5	2017-11-02 11:33:34-04	\N
244070240 	RIKA2	2017-05-31 01:11:15-04	\N
244070253 	STAD SCHOONHOVEN	2014-04-01 08:29:47-04	\N
244070288 	RPA13	2016-10-02 23:57:42-04	\N
244070386 	OPHIR	2015-07-11 07:00:55-04	\N
244070396 	CARBON	2017-06-10 02:15:15-04	\N
244070415 	DOLPHIN	2017-06-11 01:25:30-04	\N
244070433 	HERTOGJAN	2012-08-28 18:03:50-04	\N
244070458 	ROOS	2016-09-23 13:57:21-04	\N
244070846 	JURA	2013-11-22 13:49:39-05	\N
244070898 	PANERAI	2013-06-01 09:05:50-04	\N
244070903 	RPA14	2017-01-22 22:05:54-05	\N
244070991 	COMIENZO	2015-04-11 13:17:13-04	\N
244073000 	CITO	2017-01-25 02:46:55-05	\N
244075000 	ARM-14	2017-06-14 14:14:16-04	\N
244075486 	ANKICA	2013-08-02 07:06:43-04	\N
244075531 	HERIK 33	2015-11-21 16:59:47-05	\N
244076547 	POUWEL S	2017-09-10 03:28:21-04	\N
244076567 	ERASMUS	2015-04-29 13:04:47-04	\N
244076589 	SEMPER SPERA	2017-12-03 00:52:13-05	\N
244076625 	LADY C	2012-03-04 00:29:59-05	\N
244076650 	MEKONG	2015-06-17 04:11:59-04	\N
244077000 	WR82 GERDIA	2017-03-10 04:51:02-05	\N
244077576 	LICENTIA	2017-04-30 22:30:58-04	\N
244077643 	HAYLEY	2015-01-15 20:16:15-05	\N
244078721 	VARIATIE	2012-01-25 07:51:57-05	\N
244078754 	STERN	2015-03-27 14:16:15-04	\N
244078819 	POOLSTER	2015-07-24 06:54:39-04	\N
244083000 	TX27 NOVA CURA	2017-02-14 14:09:39-05	\N
244085000 	DUTCH SPIRIT	2014-01-23 23:24:09-05	\N
244087000 	GOUWE	2016-11-23 13:19:45-05	\N
244087095 	LEILA	2012-10-26 06:26:20-04	\N
244089000 	THUN GALAXY	2017-10-21 08:46:20-04	\N
244090014 	BOUNTY	2013-03-11 20:20:55-04	\N
244090050 	OSTREA	2018-03-01 05:28:04-05	\N
244090097 	CORAL ENERGICE	2017-08-17 20:33:00-04	\N
244090107 	EN AVANT 30	2013-04-06 05:01:31-04	\N
244090147 	WESTFLINGHE	2012-07-25 02:51:36-04	\N
244090164 	AQUA DOMUS	2018-05-09 06:15:33-04	\N
244090205 	VALERIE STRUIS	2012-08-15 22:02:57-04	\N
244090344 	AHOY TITAN	2016-07-16 17:51:22-04	\N
244090345 	SCHONE MARE	2018-05-24 16:29:08-04	\N
244090348 	AHOY PORTUNUS	2016-07-26 19:45:02-04	\N
244090404 	PRINS 6	2016-05-31 19:14:50-04	\N
244090453 	TARA 2	2013-04-21 22:31:59-04	\N
244090464 	LIANE	2012-02-16 14:59:08-05	\N
244090582 	BELLA-JANE	2019-01-23 13:40:25-05	\N
244090593 	SHALOM	2015-10-19 19:23:40-04	\N
244090691 	AGUILA	2017-12-18 11:46:00-05	\N
244090716 	ZWERFCAT	2016-02-28 06:34:29-05	\N
244090781 	ACTA AURIGA	2017-11-10 21:48:00-05	\N
244090784 	MARIE	2014-09-01 08:40:54-04	\N
244090796 	VLIELAND	2014-08-10 14:28:00-04	\N
244090800 	MALTA CEMENT	2014-10-10 20:22:02-04	\N
244090901 	RPA2	2015-01-03 08:12:48-05	\N
244090920 	ODV 1	2018-11-23 17:58:27-05	\N
244090935 	ADRIAAN YE-77	2015-10-26 03:34:33-04	\N
244090957 	APSARA	2017-04-15 06:24:15-04	\N
244090965 	KW2 ASTRID	2018-12-10 09:18:26-05	\N
244090997 	INNOVATION	2014-05-14 07:59:38-04	\N
244091000 	NOORDERLICHT	2018-02-14 17:10:03-05	\N
244093000 	NORDIC DIANA	2014-01-25 13:29:08-05	\N
244096000 	DRAIT	2017-12-19 03:22:43-05	\N
244097000 	LCU L-9528	2013-12-08 03:32:46-05	\N
244100001 	CORNELIS SR	2015-01-11 18:10:36-05	\N
244100042 	MARYBA	2012-11-06 19:27:42-05	\N
244100055 	RPA11	2016-04-23 12:03:47-04	\N
244100057 	CURACAO	2013-10-11 02:39:28-04	\N
244100063 	RPA01	2013-06-20 23:17:42-04	\N
244100160 	JANNETTE	2018-09-19 06:45:00-04	\N
244100187 	AQUILA	2012-12-20 06:52:29-05	\N
244100193 	JASBEER	2014-04-22 05:47:47-04	\N
244100213 	THALASSA	2016-07-06 03:50:13-04	\N
244100223 	MARAJO	2014-01-09 19:41:55-05	\N
244100224 	CATHARINE W	2018-12-11 07:18:52-05	\N
244100272 	RENOVATIE	2014-04-30 22:46:07-04	\N
244100345 	PE2505	2018-11-28 19:42:27-05	\N
244100377 	LA BELLE FLEUR	2016-09-26 01:35:56-04	\N
244100389 	WIDESTARS III	2013-07-28 03:04:57-04	\N
244100446 	WALLILABOU	2014-08-18 05:06:48-04	\N
244100457 	ZILT	2012-08-03 05:56:50-04	\N
244100478 	BELLE	2012-12-05 11:38:37-05	\N
244100511 	WITTE OLIFANT	2018-06-10 11:45:33-04	\N
244100621 	QUO VADIS	2012-08-16 20:35:47-04	\N
244100663 	ELBRICH	2015-02-27 06:58:30-05	\N
244100714 	DE VROUWE CHRISTINA	2017-08-26 03:22:21-04	\N
244100716 	NOTRE VIE 2	2016-11-15 01:39:38-05	\N
244100731 	THALES	2013-07-30 12:05:28-04	\N
244100796 	LUCTOR ET EMERGO	2014-12-13 09:32:36-05	\N
244100814 	GRADA	2015-04-20 01:38:11-04	\N
244100829 	TX21 PIETER VAN ARIS	2016-05-08 19:24:45-04	\N
244100837 	SHADOW	2012-04-30 02:06:05-04	\N
244100875 	VADASZ	2017-08-10 14:39:25-04	\N
244100879 	EQUITY	2014-02-22 06:54:55-05	\N
244100907 	INNOVATIE	2017-02-24 22:42:01-05	\N
244100932 	KOPEREN STER	2013-12-05 14:09:23-05	\N
244100955 	INVOTIS II	2016-06-14 04:25:27-04	\N
244100961 	ROLF MONI	2017-02-20 18:40:31-05	\N
244100974 	THE ESCAPE	2012-06-06 07:26:36-04	\N
244101000 	SUSAN	2014-08-09 19:44:01-04	\N
244104000 	MAERSK PENANG	2019-01-18 06:44:17-05	\N
244110011 	TENAX	2015-10-12 19:20:37-04	\N
244110015 	GIPSY	2015-03-06 16:00:41-05	\N
244110083 	MOEKE ZORN	2015-07-17 08:40:35-04	\N
244110172 	MIRYANA	2017-10-16 09:35:33-04	\N
244110236 	QUEEN	2018-12-19 13:55:56-05	\N
244110268 	LINDOS	2013-07-14 21:08:25-04	\N
244110333 	INA	2013-09-15 22:31:17-04	\N
244110350 	LA REINE	2015-01-09 20:59:24-05	\N
244110352 	COMPASS	2015-10-29 08:52:53-04	\N
244110374 	WILLEM JOHANNES	2014-01-18 00:46:26-05	\N
244110390 	A2B INDEPENDENT	2013-10-31 10:02:16-04	\N
244110414 	BIT ECO	2014-03-10 20:00:20-04	\N
244110417 	GEERTRUIDA M	2012-01-09 04:53:21-05	\N
244110436 	RIEPEL	2017-02-13 23:25:53-05	\N
244110466 	SIR JOHN	2013-01-15 10:04:48-05	\N
244110512 	ESMEE	2017-05-19 20:24:56-04	\N
244110518 	TERRA	2014-09-05 06:28:40-04	\N
244110544 	CYPRUS CEMENT	2017-12-23 17:24:57-05	\N
244110562 	SEAPOINT	2018-03-18 20:52:09-04	\N
244110563 	ANDANTE	2014-12-15 00:00:43-05	\N
244110578 	ANJA	2013-07-15 23:24:33-04	\N
244110640 	ECODELTA	2018-01-05 18:00:50-05	\N
244110652 	COLUMBUS	2018-09-17 06:00:21-04	\N
244110658 	MARLEEN	2018-10-04 08:23:00-04	\N
244110692 	MATTHINGE	2017-01-29 16:39:46-05	\N
244110703 	LIBELLE	2012-06-19 11:07:51-04	\N
244110723 	SENATOR	2012-05-09 04:44:49-04	\N
244110831 	ZWAANTJE	2012-08-22 11:40:29-04	\N
244110847 	ZWALUW	2015-09-10 11:14:25-04	\N
244110860 	AMSTEL SMARAGD	2016-02-06 13:54:37-05	\N
244110861 	AMSTEL AQUAMARIJN	2014-11-03 12:02:06-05	\N
244110863 	AMSTEL SAFFIER	2013-01-13 02:00:39-05	\N
244110864 	AMSTEL JADE	2012-09-02 13:35:32-04	\N
244110865 	AMSTEL DIAMANT	2016-09-19 10:17:47-04	\N
244110926 	NOORDERZON	2016-10-19 00:37:08-04	\N
244110946 	SUNDOWNER	2012-08-29 00:37:16-04	\N
244116000 	REIMERSWAAL	2015-04-09 14:52:40-04	\N
244124000 	AVATAR	2017-08-22 15:20:07-04	\N
244126000 	PRINSENDAM	2013-05-13 06:22:45-04	\N
244129540 	VEERDIENST 3	2012-01-13 17:17:36-05	\N
244129541 	FLORIAN	2012-03-13 15:38:30-04	\N
244130041 	SUNBEAR	2012-06-03 04:08:22-04	\N
244130042 	ELISABETH	2015-07-04 17:40:31-04	\N
244130063 	UNION	2015-07-08 12:33:14-04	\N
244130065 	ARKLOW VENTURE	2016-09-01 12:57:32-04	\N
244130093 	VIJAYA	2013-02-10 04:45:49-05	\N
244130106 	TAKE FIVE	2014-07-04 09:34:39-04	\N
244130124 	ESMERALDA	2017-04-16 13:24:15-04	\N
244130216 	FRANCIJNTJE	2015-06-23 00:26:19-04	\N
244130258 	AMBITIOUS	2013-02-26 10:19:01-05	\N
244130285 	AMICITIA	2016-09-20 02:06:35-04	\N
244130310 	INITIUM	2016-03-17 06:33:28-04	\N
244130327 	JUTTER	2012-05-19 12:08:07-04	\N
244130332 	TULLA	2016-09-05 01:11:28-04	\N
244130359 	SB13	2017-11-30 04:44:48-05	\N
244130389 	PEVAJA	2019-01-03 07:08:16-05	\N
244130412 	RT BORKUM	2013-03-07 00:04:31-05	\N
244130452 	KRVE 8	2014-09-07 14:53:25-04	\N
244130458 	SALU	2013-05-24 09:02:58-04	\N
244130491 	LIBBEN	2012-01-15 07:22:11-05	\N
244130505 	AVENGER	2013-03-20 18:22:25-04	\N
244130533 	SPINDRIFT	2012-06-04 01:58:31-04	\N
244130562 	PETRA	2014-01-29 07:09:27-05	\N
244130572 	SIDER ULRIKEN	2013-12-03 10:53:46-05	\N
244130577 	SIROCCO	2016-10-27 01:06:41-04	\N
244130604 	KATHY	2013-01-29 14:37:03-05	\N
244130608 	VIBE	2012-08-31 02:22:36-04	\N
244130609 	MS. AGATHA	2014-01-10 07:43:47-05	\N
244130613 	MAARTJE	2015-09-21 17:16:03-04	\N
244130635 	TEMPORE	2013-05-20 15:43:44-04	\N
244130655 	PRINSLANDER	2013-08-08 12:00:58-04	\N
244130689 	BORE SEA	2013-05-21 16:42:54-04	\N
244130693 	KIMBERLY	2013-09-03 11:22:30-04	\N
244130717 	MARINUS G	2014-11-16 14:33:02-05	\N
244130745 	IN-AXXI	2016-08-27 18:46:29-04	\N
244130755 	SNEKKE	2015-03-19 20:01:07-04	\N
244130927 	ZILVERSTAD	2013-01-29 00:23:41-05	\N
244130939 	ORCA	2013-01-07 23:59:46-05	\N
244130941 	NAUTICTRANS	2014-01-23 05:47:40-05	\N
244130992 	UK161 HENDRIK BRANDS	2013-06-07 05:11:28-04	\N
244137000 	SEAHORSE	2014-08-17 04:48:01-04	\N
244137297 	SINUS	2012-02-06 01:47:52-05	\N
244137307 	MATAMORE	2014-09-14 15:08:38-04	\N
244137310 	INITIA	2013-01-15 15:51:32-05	\N
244137325 	BELIZE	2013-05-16 08:50:36-04	\N
244137355 	FROGGY	2018-12-20 23:45:37-05	\N
244138328 	HOLLANDIA	2019-02-03 12:34:53-05	\N
244138386 	SKAGEN	2019-01-17 16:09:03-05	\N
244138435 	SESTON II	2015-11-08 09:02:28-05	\N
244138526 	DE SWEAGEN	2017-09-12 08:34:02-04	\N
244139462 	EILEAN II	2016-05-10 16:51:46-04	\N
244139567 	FENIKS	2013-01-30 00:22:22-05	\N
244139568 	GAMELA	2016-08-05 10:31:34-04	\N
244140030 	RIVER DANCE	2018-08-30 18:34:56-04	\N
244140033 	MARGARETHA	2015-12-25 04:51:46-05	\N
244140042 	UK46 WILLEKE	2017-09-25 05:30:53-04	\N
244140114 	LUNA (PILOTS)	2018-01-11 16:14:55-05	\N
244140178 	BLUE SPIRIT	2012-08-10 02:21:34-04	\N
244140237 	LEONORA	2013-02-04 06:12:29-05	\N
244140332 	VRYBURG 3	2012-09-10 19:52:06-04	\N
244140343 	UK272 ADRIAANTJE	2014-02-13 20:49:55-05	\N
244140350 	LAMMECHIEN	2016-10-27 21:23:00-04	\N
244140377 	CREUSEN-1	2017-02-02 22:58:49-05	\N
244140388 	IRELAND	2016-11-05 20:02:10-04	\N
244140389 	GOUWENAAR 2	2016-08-13 08:27:11-04	\N
244140444 	NOORDKAAP	2014-03-09 03:25:36-04	\N
244140453 	JOHANNA JACOBA	2017-08-05 18:57:09-04	\N
244140463 	AVONTUUR	2016-03-04 18:49:03-05	\N
244140468 	GREENLAND	2014-06-25 22:03:26-04	\N
244140481 	BELLE HISTOIRE	2018-08-04 17:41:54-04	\N
244140491 	BUCKET	2018-09-08 15:53:35-04	\N
244140534 	ZEF	2016-01-20 07:29:19-05	\N
244140580 	NIEUW STATENDAM	2013-01-30 13:03:27-05	\N
244140588 	HERMAN S	2016-05-09 08:00:00-04	\N
244140653 	ALBATROS	2018-05-18 20:24:20-04	\N
244140704 	BIG SLOOP	2018-01-29 09:38:24-05	\N
244140713 	UMOYA	2017-03-31 01:19:58-04	\N
244140719 	HELGA	2015-03-20 17:21:00-04	\N
244140725 	BONHEURE	2015-08-07 07:04:37-04	\N
244140748 	VETH PROPULSION 1	2015-06-09 19:03:04-04	\N
244140757 	TROMSO	2018-04-29 03:46:57-04	\N
244140758 	DANUBE	2014-08-01 17:59:26-04	\N
244140807 	LA QUATRA	2018-07-26 05:12:22-04	\N
244140819 	MELBA	2014-12-16 11:47:20-05	\N
244140824 	AMS 1	2018-04-29 14:54:11-04	\N
244140842 	ZAANPRINSES	2014-07-18 05:24:58-04	\N
244140868 	OFFLINE	2015-05-23 08:41:42-04	\N
244140886 	SINJOOR	2015-11-21 09:32:47-05	\N
244140900 	MON-REVE	2013-11-07 06:56:08-05	\N
244140928 	BATAVIA	2016-02-09 13:10:37-05	\N
244140937 	JAGUAR2	2012-12-22 02:20:36-05	\N
244140957 	DEO FAVENTE	2018-08-06 02:16:55-04	\N
244140958 	STRIJD	2018-08-06 07:35:36-04	\N
244140973 	KRAICHGAU 3	2016-02-26 11:38:00-05	\N
244144000 	AERANDIR	2013-08-02 18:10:56-04	\N
244146142 	JOHANNA	2014-02-22 13:56:00-05	\N
244148000 	DELFSHAVEN	2016-09-13 03:55:13-04	\N
244149000 	DANZIGERGRACHT	2015-04-29 20:25:59-04	\N
244150000 	LADY NOLA	2013-04-18 14:15:28-04	\N
244150030 	DCS DISCOVERY	2013-11-18 07:42:40-05	\N
244150059 	CHARROMA	2015-08-15 07:20:31-04	\N
244150086 	MONIKA	2014-01-03 01:58:03-05	\N
244150102 	MULTRATUG 7	2016-12-19 16:21:45-05	\N
244150137 	SOFIE	2015-06-10 13:30:22-04	\N
244150147 	MARKER WADDEN II	2013-07-07 19:57:13-04	\N
244150173 	ONTMOETING	2017-12-02 16:41:27-05	\N
244150209 	SAMARY	2012-03-14 07:11:14-04	\N
244150247 	HARMONIE	2013-11-07 22:19:48-05	\N
244150276 	WESTERN ROCK	2012-07-03 20:35:27-04	\N
244150284 	DE KOLK	2017-03-03 07:08:17-05	\N
244150340 	RPA8	2014-02-06 15:26:33-05	\N
244150366 	ZUIDWESTER	2017-12-04 10:07:21-05	\N
244150372 	DRAKKAR UK136	2012-03-06 03:42:51-05	\N
244150380 	GSNED17	2017-02-18 09:17:57-05	\N
244150401 	DEN ONZEN	2014-09-04 08:14:45-04	\N
244150429 	GRIFFIOEN	2016-11-18 08:06:39-05	\N
244150430 	KVB ORFEO / ORFEO II	2019-02-23 18:42:36-05	\N
244150437 	ORANJE	2014-06-04 23:56:58-04	\N
244150458 	WATERMAN	2015-11-05 06:02:55-05	\N
244150488 	KASTEELBORG	2015-05-08 17:06:25-04	\N
244150499 	MIDDELBURG	2017-03-16 02:26:11-04	\N
244150516 	SYMPHONY SPACE	2012-01-08 21:40:25-05	\N
244150528 	WABO 5	2013-06-19 21:13:00-04	\N
244150553 	LENA	2013-03-25 04:53:29-04	\N
244150566 	LYNX	2014-08-26 13:31:45-04	\N
244150567 	PHOENIX	2016-10-25 12:15:36-04	\N
244150659 	MERCATOR	2014-08-31 21:24:28-04	\N
244150672 	MAGNIFIQUE III	2018-10-10 02:05:39-04	\N
244150719 	RIVER QUEEN	2017-12-08 10:26:57-05	\N
244150720 	TEISTERBANT	2015-06-04 03:37:45-04	\N
244150724 	US WILLE	2013-10-14 04:09:45-04	\N
244150800 	LA BELLE VIE	2013-12-14 18:19:22-05	\N
244150813 	A2B SPIRIT	2018-10-30 04:25:32-04	\N
244150827 	IGUAZU	2014-08-19 21:36:02-04	\N
244150837 	DEMI-J	2017-08-31 00:09:52-04	\N
244150922 	ODVEER	2018-03-14 17:36:22-04	\N
244150932 	GOEDE HOOP YE41	2018-11-19 01:19:30-05	\N
244150949 	OXANA	2014-05-03 11:17:19-04	\N
244153000 	DUTCH PIONEER	2014-01-24 16:40:01-05	\N
244153120 	ISABELLE	2013-09-19 06:41:20-04	\N
244153421 	STELLA POLARIS	2016-08-15 18:52:10-04	\N
244153545 	AMS60 BERNISSE	2016-04-16 15:54:19-04	\N
244153584 	OMEGA	2015-04-17 18:03:33-04	\N
244156041 	DIRKJE	2017-12-11 03:58:03-05	\N
244159000 	HNLMS ROTTERDAM	2013-03-08 10:03:02-05	\N
244164854 	BRANDWEER GOES	2017-12-05 20:00:56-05	\N
244167000 	MERCUUR	2018-06-15 19:59:26-04	\N
244169000 	PR MAXIMA	2017-06-12 03:18:50-04	\N
244170038 	FRIESLAND	2013-02-13 18:59:26-05	\N
244170067 	ONUS	2016-11-04 01:32:40-04	\N
244170080 	VOS PATRIOT	2016-11-15 16:51:08-05	\N
244170087 	SEA SPIRIT	2013-01-13 18:40:18-05	\N
244170089 	ZEEHOND	2018-06-14 11:14:39-04	\N
244170146 	WR12 EMMA	2012-12-10 16:18:47-05	\N
244170242 	OLD DUTCH	2012-01-12 20:58:15-05	\N
244170260 	LOTES	2015-04-02 17:13:30-04	\N
244170263 	SOVEREIGN	2013-03-13 01:35:02-04	\N
244170283 	SEAZIP FIX	2019-01-07 16:28:14-05	\N
244170334 	GRIETJE	2017-03-13 23:31:06-04	\N
244170371 	BARCO AZUL	2013-01-16 05:02:16-05	\N
244170377 	VEERPONT DE WOUDE	2014-10-31 13:00:38-04	\N
244170408 	DRIE GEBROEDERS	2016-04-20 11:12:02-04	\N
244170427 	ARAMIS	2012-11-23 21:34:51-05	\N
244170431 	FELICITAS	2012-12-21 10:41:36-05	\N
244170452 	LOUISA MARIA	2018-01-24 23:12:32-05	\N
244170476 	JACOMIEN	2016-01-04 18:11:18-05	\N
244170504 	NORA B	2014-04-18 08:17:09-04	\N
244170514 	PELIKAAN	2018-06-05 09:05:54-04	\N
244170522 	PETER	2014-08-03 19:02:28-04	\N
244170576 	EEMDIJK	2017-11-13 06:22:24-05	\N
244170593 	ST JEAN BOSCO	2014-07-04 15:30:39-04	\N
244170642 	THE EMPEROR	2017-03-04 17:12:56-05	\N
244170652 	DE HOOP	2016-11-17 17:27:27-05	\N
244170676 	LE GRAND SIGNE	2017-07-15 09:01:11-04	\N
244170678 	GOUDEN LEEUW	2014-06-23 19:58:57-04	\N
244170690 	ARKLOW VILLA	2016-04-09 18:29:39-04	\N
244170695 	DANABLU	2016-10-05 02:59:09-04	\N
244170716 	IJSVOGEL	2019-01-30 14:15:09-05	\N
244170720 	LAGA	2016-05-03 00:34:56-04	\N
244170724 	STREKKER	2012-09-26 01:27:36-04	\N
244170750 	A2B AMBITION	2012-02-13 09:15:40-05	\N
244170753 	BARONES	2017-12-28 19:38:59-05	\N
244170779 	AMULET	2017-07-15 21:20:28-04	\N
244170818 	SKELLIG	2013-01-11 19:52:51-05	\N
244170833 	NP 519	2013-09-23 21:30:20-04	\N
244170843 	MERWESTROOM	2015-09-03 14:07:24-04	\N
244170850 	GABBER	2016-12-11 15:22:17-05	\N
244170864 	ZWERVER	2018-07-02 07:44:42-04	\N
244170872 	NESSERSLUIS	2018-09-04 17:11:51-04	\N
244170943 	RIVAL	2012-09-24 20:22:44-04	\N
244170977 	LAVORANDO	2018-11-07 06:28:13-05	\N
244170981 	CALYBER	2016-06-12 02:06:25-04	\N
244176000 	HATHOR	2013-04-26 03:46:08-04	\N
244179000 	CINDY VLI-25	2012-01-04 12:45:28-05	\N
244180000 	FREYA	2018-12-31 20:06:45-05	\N
244180023 	NAUTICA	2019-02-16 12:57:32-05	\N
244180037 	CLIEN	2012-06-12 22:33:25-04	\N
244180091 	AVANTI-D	2015-11-23 12:06:08-05	\N
244180105 	WERKENDAM	2015-11-17 03:57:33-05	\N
244180132 	DE WASSENDE MAAN	2017-06-10 19:35:06-04	\N
244180197 	ANNETTE ESSBERGER	2013-05-13 23:52:58-04	\N
244180237 	ANDA	2013-01-02 15:34:24-05	\N
244180240 	DC ORISANT	2013-02-15 19:05:53-05	\N
244180242 	DYLAN	2017-11-15 10:26:54-05	\N
244180280 	DE ROTTERDAMMER	2015-02-24 08:07:46-05	\N
244180283 	HD16 COURAGE	2017-06-05 15:27:13-04	\N
244180300 	TALE QUALE	2013-10-22 20:06:51-04	\N
244180366 	ANNA	2013-04-06 06:14:53-04	\N
244180389 	AQUILA	2016-09-17 11:39:36-04	\N
244180393 	SOLLANGE	2013-07-14 02:34:49-04	\N
244180471 	NAVIA	2015-04-10 11:51:02-04	\N
244180520 	GALGENPLAAT	2013-03-25 21:57:57-04	\N
244180526 	FN DIVING 4	2017-09-13 15:02:26-04	\N
244180556 	BATAVIA VOC	2014-07-16 13:16:29-04	\N
244180624 	VLIELAND	2014-02-16 14:38:12-05	\N
244180626 	WAALPLUS	2017-01-15 21:57:11-05	\N
244180642 	ZEEWOLF	2018-09-10 16:27:30-04	\N
244180739 	VERTIGO	2015-01-02 14:00:44-05	\N
244180881 	IJVEER 63	2016-11-25 18:23:02-05	\N
244180951 	LAMAYDAY	2016-05-24 23:32:06-04	\N
244180952 	WATERWOLF	2017-03-03 20:26:38-05	\N
244180985 	DE HOOP 11	2012-09-17 19:25:49-04	\N
244181438 	PROGRESSO	2014-12-13 19:16:18-05	\N
244182415 	NOOITGEDACHT	2012-09-30 14:19:57-04	\N
244182422 	INDEPENDENT	2018-08-31 20:41:22-04	\N
244182448 	SUCCES	2015-08-18 23:35:33-04	\N
244183000 	LCU L9529	2018-07-22 02:00:39-04	\N
244186000 	P6	2014-01-26 15:24:19-05	\N
244189000 	IRIS	2017-07-04 22:30:30-04	\N
244190013 	SKUA	2017-10-18 01:55:52-04	\N
244190023 	WYTVLIET	2012-12-12 11:49:19-05	\N
244190087 	MAYFLOWER	2016-11-08 07:32:07-05	\N
244190124 	LOBELIA	2012-11-15 03:05:26-05	\N
244190129 	WADDENSTROOM	2018-05-24 21:55:44-04	\N
244190131 	Q10-A PLATFORM	2015-01-13 02:33:59-05	\N
244190171 	HENRIQUE	2018-09-18 21:29:52-04	\N
244190184 	PEARL MOON	2016-03-26 04:09:00-04	\N
244190188 	ANNA	2015-03-12 16:57:07-04	\N
244190192 	BOU4	2017-04-20 06:55:25-04	\N
244197000 	HD4 HENDRIK PETRONEL	2013-08-27 19:10:53-04	\N
244198000 	TINA	2013-08-29 04:39:50-04	\N
244207000 	HENDRIKA BARTELDS	2018-04-11 08:43:56-04	\N
244209000 	SWALINGE	2013-12-22 15:08:22-05	\N
244210086 	DANCING QUEEN	2014-01-27 18:02:49-05	\N
244210090 	BETELGEUSE	2014-07-09 14:41:22-04	\N
244210221 	ALIZE	2013-06-06 16:42:54-04	\N
244210297 	GIPSY	2013-10-24 21:30:49-04	\N
244210547 	VOLHARDING	2017-03-03 12:59:08-05	\N
244210833 	WESTERGOUW	2013-06-22 11:43:23-04	\N
244210901 	DEUN	2017-09-17 11:37:29-04	\N
244213000 	WR291 ESTHER JENKE	2017-09-20 00:08:02-04	\N
244215000 	HEGEMANN 2	2017-07-14 15:44:36-04	\N
244216000 	SD JACOBA	2019-01-03 10:34:54-05	\N
244218000 	RIMINI	2012-06-24 04:17:59-04	\N
244220021 	BREEON	2015-11-22 07:42:06-05	\N
244221000 	ARM22 KLAAS ADRIANA	2018-06-11 03:26:19-04	\N
244224000 	WAALBORG	2016-07-05 23:40:46-04	\N
244225000 	BRU-5	2017-06-02 07:47:59-04	\N
244228000 	YE161 DINGENIS MARIA	2014-09-27 18:43:36-04	\N
244232000 	IB 909	2013-11-14 10:26:10-05	\N
244234288 	OD-14	2016-01-17 07:22:21-05	\N
244234396 	ELJA	2015-11-17 06:34:52-05	\N
244237000 	ZEEMANSHOOP	2017-07-06 04:06:52-04	\N
244237634 	HEDIR	2017-07-26 00:44:59-04	\N
244238000 	ESSENCE	2016-07-05 07:02:22-04	\N
244239000 	EEMS SKY	2018-11-09 14:49:33-05	\N
244245000 	VLI-27	2012-05-03 20:13:00-04	\N
244246000 	HENDRIKA MARGARETHA	2014-02-24 16:26:33-05	\N
244250000 	ZZ-9 VERTROUWEN	2017-04-17 05:32:40-04	\N
244250193 	TERRA NOVA	2016-02-25 09:05:13-05	\N
244250196 	STEADY	2019-02-06 10:27:56-05	\N
244250233 	FIDUCIE	2014-05-31 21:01:31-04	\N
244250294 	AVONTUUR	2014-12-08 15:10:56-05	\N
244250440 	HAKUNAMA	2015-12-07 00:56:24-05	\N
244250450 	REBECCA	2014-09-24 15:10:23-04	\N
244250595 	DOLFIJN	2014-06-02 12:29:53-04	\N
244250601 	JOHANN STRAUSS	2017-07-04 22:41:18-04	\N
244250602 	WA MOZART	2017-09-21 07:33:45-04	\N
244250603 	CHARLES-GOUNOD	2017-09-09 14:57:09-04	\N
244250604 	BEETHOVEN	2019-01-21 19:45:28-05	\N
244250606 	DR.ALBERT SCHWEITZER	2017-10-01 04:22:43-04	\N
244250617 	PASSAAT	2014-08-07 14:04:33-04	\N
244250653 	SAVANNA	2015-12-28 19:59:15-05	\N
244250702 	SCHROOTBARON	2016-10-30 14:25:47-04	\N
244250730 	BYZANTIUM	2013-06-26 09:38:52-04	\N
244250731 	FLYING DUTCHMAN	2017-03-13 03:29:56-04	\N
244250732 	LIDO	2018-10-20 11:46:14-04	\N
244250733 	CITY OF AMSTERDAM	2014-09-03 00:27:38-04	\N
244250734 	HORIZON	2016-04-29 17:13:18-04	\N
244250763 	JOLLING	2016-04-21 01:02:58-04	\N
244250844 	VENTJAGER	2013-07-08 20:00:41-04	\N
244250872 	BRANTA	2016-07-05 14:06:28-04	\N
244255000 	ESCAPE	2013-09-02 22:21:50-04	\N
244256000 	YE55 ARNOUTMAGDALENA	2015-12-26 07:35:00-05	\N
244260494 	HILDA 4	2012-10-22 16:35:37-04	\N
244260498 	PRINSESALEXIA	2016-03-27 22:08:52-04	\N
244260857 	RIO GRANDE	2014-01-21 15:27:28-05	\N
244263000 	TX22 QUO VADIS	2013-05-25 06:58:46-04	\N
244267000 	STELLA VIRGO	2016-03-17 02:40:11-04	\N
244269000 	INTERBALLAST III	2017-08-08 12:05:54-04	\N
244270061 	ACACIA	2012-11-10 23:29:12-05	\N
244270100 	YAGIS	2017-04-04 09:57:07-04	\N
244270283 	DOGGERSBANK	2014-01-22 14:35:22-05	\N
244270389 	DE HUIZER	2018-04-11 11:29:00-04	\N
244270394 	STERN	2016-07-16 08:48:45-04	\N
244270747 	SY INUKSHUK	2016-02-14 03:36:24-05	\N
244270908 	IJZEREN KRAAK	2017-11-06 17:44:47-05	\N
244271000 	BEAUMOTION	2014-04-07 05:26:02-04	\N
244273000 	NARWAL	2017-03-26 02:37:36-04	\N
244274000 	SIROCCO	2016-01-18 13:59:36-05	\N
244277000 	HA41 ANTJE	2014-12-16 02:46:03-05	\N
244284000 	STROOM	2016-11-28 02:36:36-05	\N
244286000 	KW5 LEENDERT DE MOL	2012-11-19 12:59:29-05	\N
244287000 	APOLLO PILOTS	2015-08-20 22:09:26-04	\N
244290000 	ABEKO SERVER 2	2017-10-07 04:40:49-04	\N
244290020 	HD BORBOLETTA	2016-10-16 05:29:44-04	\N
244290152 	HARJA	2012-10-31 22:12:38-04	\N
244292000 	DCS ADVENTURER	2013-11-09 11:21:10-05	\N
244296000 	NOORD NEDERLAND	2014-03-31 18:33:02-04	\N
244297000 	LAGANBORG	2018-11-22 21:19:08-05	\N
244298000 	MAERSK KALMAR	2014-09-02 10:26:39-04	\N
244309000 	SCH6 ALIDA	2018-09-03 03:49:17-04	\N
244313877 	PIZ ALBANA	2014-02-04 04:37:33-05	\N
244314912 	SOCANDES	2018-06-20 12:51:43-04	\N
244315000 	SOMERSET	2017-08-28 15:21:42-04	\N
244317074 	ZOSTERA	2018-08-20 17:07:59-04	\N
244317116 	SARA ROSE	2013-03-06 02:58:45-05	\N
244326000 	CATHARINA 6	2016-03-08 04:47:08-05	\N
244329000 	JUERGEN K	2014-04-04 12:28:02-04	\N
244339000 	SPIRIT	2015-10-06 02:19:28-04	\N
244340000 	WESERBORG	2019-01-28 03:25:41-05	\N
244346000 	BELUGA ROTTERDAM	2017-11-04 22:33:33-04	\N
244348000 	P 48	2016-01-27 09:01:23-05	\N
244353000 	ROTTERDAM	2017-11-02 22:00:25-04	\N
244357000 	ENDURANCE	2018-04-04 10:41:56-04	\N
244366000 	BEAUMAIDEN	2013-02-26 07:53:41-05	\N
244368000 	YE-19 JOHANNA-K	2018-10-14 22:54:59-04	\N
244376000 	VLIELAND	2015-10-23 13:54:36-04	\N
244381000 	UK2 ADRIAANTJE	2012-12-19 22:04:31-05	\N
244383007 	KYRA	2018-12-08 12:38:12-05	\N
244383021 	BUTSKOP	2017-08-23 04:27:09-04	\N
244387000 	PRIDE OF BRUGES	2016-05-12 22:07:21-04	\N
244389000 	AMBASSADEUR	2016-11-03 13:09:55-04	\N
244391000 	MAESLANT	2012-05-27 22:27:05-04	\N
244391037 	ZWERVER	2014-04-29 06:01:04-04	\N
244391191 	BLUE SPIRIT	2016-09-04 15:16:52-04	\N
244399000 	UK149 STELLA MARIS	2012-10-29 20:57:33-04	\N
244402000 	H&S PRUDENCE	2018-04-22 18:45:25-04	\N
244413000 	ARIE VISSER	2013-10-19 11:19:08-04	\N
244427000 	ELISABETH CHRISTINA	2016-10-02 07:40:13-04	\N
244430000 	MNO ZEEZAND	2018-03-07 05:58:46-05	\N
244447000 	L9527	2017-01-25 09:28:09-05	\N
244454000 	ARCA	2015-11-07 22:46:41-05	\N
244468000 	SEA BRAVO	2015-09-28 13:23:26-04	\N
244469000 	TRITON	2014-06-18 04:36:14-04	\N
244470000 	GO-38 DE VERTROUWEN	2015-01-02 00:41:10-05	\N
244472000 	HNLMS URK	2012-08-07 21:01:20-04	\N
244476000 	SCELVERINGHE	2014-03-14 00:54:40-04	\N
244485000 	GRUNO 5	2013-03-29 20:04:48-04	\N
244486000 	LUCTOR	2013-12-04 13:56:44-05	\N
244496000 	J R TOLKIEN	2012-05-10 20:22:28-04	\N
244500000 	SOLLIDEE	2016-09-06 18:53:06-04	\N
244513000 	STENA TRANSIT	2019-02-22 03:02:45-05	\N
244516000 	HARDER	2013-10-07 10:10:03-04	\N
244519000 	GENCA	2014-07-05 20:28:29-04	\N
244521000 	HAM 316	2019-01-25 21:28:06-05	\N
244522000 	HNLMS HOLLAND	2014-07-27 19:54:17-04	\N
244528000 	ESTRELLA	2019-02-12 05:11:05-05	\N
244530000 	COASTALWATER	2016-06-26 22:00:18-04	\N
244532000 	ELBE	2018-05-02 21:02:13-04	\N
244536000 	BEVER	2013-12-16 06:39:59-05	\N
244538000 	ARCTIC SUNRISE	2013-05-20 15:53:56-04	\N
244542000 	SIERRA KING	2016-05-27 19:35:30-04	\N
244543000 	EENDRACHT	2015-08-25 06:19:56-04	\N
244554000 	ANKIE	2016-04-16 22:20:17-04	\N
244558000 	SWARTEBANK	2012-08-21 03:37:03-04	\N
244562000 	JEANETTE	2016-07-06 05:11:31-04	\N
244572000 	HA4 TINA	2014-02-26 05:25:18-05	\N
244573000 	BEAUMONDE	2013-06-13 20:01:30-04	\N
244573135 	TRANQUILLO	2016-03-27 00:07:46-04	\N
244574000 	PR.WILLEM ALEXANDER	2013-06-01 00:37:23-04	\N
244575000 	MAASBORG	2017-12-07 20:37:42-05	\N
244579000 	NIEUWE DIEP	2017-04-21 20:16:20-04	\N
244580000 	ASHLEY	2018-07-14 18:11:25-04	\N
244585000 	LUCIANA	2014-09-09 17:07:26-04	\N
244590000 	BALTICBORG	2012-08-16 08:22:32-04	\N
244592000 	WR10 JOHAN PRINS	2017-01-03 06:02:05-05	\N
244596000 	MARE FRISIUM	2014-07-12 22:04:21-04	\N
244597000 	ENFORCER	2013-10-01 19:31:04-04	\N
244602000 	STORTEMELK	2013-02-07 04:46:10-05	\N
244603000 	FAIRPLAY 24	2015-03-23 03:51:50-04	\N
244605000 	UK146 ALBERT	2018-11-15 10:54:15-05	\N
244610000 	HA62 WILLEM TJITSCHE	2017-05-09 06:11:20-04	\N
244615000 	BEAUMAGIC	2016-11-26 10:14:23-05	\N
244615045 	MARIAROSA	2014-05-08 05:24:05-04	\N
244615048 	POLARIS	2013-09-16 10:37:27-04	\N
244615067 	DEI GRATIA	2017-06-20 22:12:56-04	\N
244615094 	KOSTRA 1	2014-10-19 16:17:07-04	\N
244615099 	WINDBRUID	2017-10-02 20:15:34-04	\N
244615102 	ENGELINA	2014-10-18 15:54:33-04	\N
244615120 	NOORDZEE	2017-08-03 19:32:03-04	\N
244615146 	THORANG-LA	2012-01-04 11:09:21-05	\N
244615153 	WADDENZEE	2016-01-11 16:01:46-05	\N
244615184 	VECHTBORG	2018-09-19 06:59:29-04	\N
244615188 	TYPHOON	2012-10-05 13:06:11-04	\N
244615227 	KP2	2015-02-01 09:11:16-05	\N
244615232 	KP7	2012-02-16 22:32:10-05	\N
244615266 	KP12	2019-02-19 09:15:44-05	\N
244615272 	JONCKVROUW	2017-01-01 23:00:16-05	\N
244615283 	PANNENKOEKENBOOT II	2014-05-08 03:26:22-04	\N
244615334 	EYE-SEA	2013-04-28 16:19:52-04	\N
244615338 	KP 17	2015-11-09 19:45:21-05	\N
244615343 	FOUR FUN	2019-01-15 03:22:31-05	\N
244615346 	FIAT VOLUNTAS	2013-09-19 10:46:39-04	\N
244615370 	PIERETTE	2018-03-11 07:56:37-04	\N
244615429 	JANNELIEN	2017-05-27 06:09:27-04	\N
244615460 	EUROPA	2012-09-06 21:43:40-04	\N
244615506 	ZUID-HOLLAND ZUID	2013-12-13 04:44:16-05	\N
244615508 	JOLLY ROGER	2016-04-29 03:23:30-04	\N
244615521 	JOHANNES-J	2018-04-13 13:57:58-04	\N
244615524 	EVELINE	2017-12-12 17:53:26-05	\N
244615529 	BELERION II	2015-01-01 19:38:32-05	\N
244615542 	BONTEKOE 2	2013-07-21 13:13:28-04	\N
244615546 	LANTANA	2014-08-04 14:34:37-04	\N
244615560 	STEENWIJK1	2012-04-10 15:47:52-04	\N
244615594 	FLORIDA	2012-10-13 16:20:06-04	\N
244615676 	YUCATAN	2016-05-11 09:20:32-04	\N
244615682 	BEAUFORT	2014-04-02 09:46:48-04	\N
244615698 	ZUIDERZEE	2017-12-26 01:00:24-05	\N
244615738 	DOLFIJN	2013-03-13 04:58:08-04	\N
244615748 	INVOTIS III	2016-09-30 08:35:20-04	\N
244615749 	ELISE	2012-12-13 22:03:21-05	\N
244615771 	BEANTRA	2014-11-12 15:42:25-05	\N
244615779 	TIGER	2014-11-20 12:04:49-05	\N
244615808 	P87	2013-11-16 04:32:26-05	\N
244615809 	P97	2015-05-11 12:40:27-04	\N
244615814 	MARINA DE EEMHOF	2013-12-23 07:27:42-05	\N
244615886 	VEERMAN	2015-07-11 18:55:42-04	\N
244615897 	MACOMA	2012-03-28 15:46:06-04	\N
244615906 	HAAI	2014-08-06 23:55:17-04	\N
244615911 	BRICKHOUSE	2012-06-10 03:18:53-04	\N
244615912 	FRANS VAN MIERIS	2012-03-27 17:17:23-04	\N
244615956 	ZILT	2018-08-30 11:38:53-04	\N
244615976 	ANITA	2014-06-19 09:02:36-04	\N
244615990 	HA24 ALEA IACTA EST	2017-12-08 10:31:17-05	\N
244615996 	KEES	2015-03-26 22:02:27-04	\N
244616000 	FAIRPLAY III	2016-12-29 20:20:55-05	\N
244617000 	STROOMBANK	2015-10-16 22:26:34-04	\N
244619000 	FAIRPLAY 21	2018-04-29 01:44:28-04	\N
244620012 	KP1	2014-12-28 06:52:58-05	\N
244620039 	TEAMWORK	2016-01-20 05:13:43-05	\N
244620043 	ARMIRA	2016-01-12 16:47:54-05	\N
244620087 	PROCYON	2015-01-15 18:28:05-05	\N
244620096 	BLUEPASSION	2017-05-17 10:31:42-04	\N
244620108 	PREFERENCE	2017-09-02 18:11:04-04	\N
244620114 	GEEGEE GROOT G	2012-01-12 08:23:15-05	\N
244620136 	BO ALIE	2014-07-30 00:38:10-04	\N
244620184 	GORINCHEM X	2012-07-09 00:58:04-04	\N
244620196 	VOLTERRA	2017-01-19 10:42:30-05	\N
244620207 	SARON	2013-02-08 10:48:47-05	\N
244620209 	RWS 21	2017-01-17 09:26:14-05	\N
244620235 	FAMILY	2018-09-12 03:43:42-04	\N
244620268 	NOVALIS	2016-07-10 22:51:34-04	\N
244620284 	ZENITH	2017-03-20 00:22:07-04	\N
244620291 	RAM	2016-10-11 10:48:10-04	\N
244620292 	ANTOINETTE R	2019-02-24 03:23:42-05	\N
244620320 	VAGEBOND	2018-01-31 09:35:46-05	\N
244620321 	PEALKO	2015-04-16 01:19:02-04	\N
244620352 	PRIMERA	2012-11-15 03:52:30-05	\N
244620380 	OCTOPUS	2017-02-26 19:52:54-05	\N
244620396 	LUCIA	2014-10-24 22:20:48-04	\N
244620414 	KVB SYLVANA	2015-07-30 03:38:27-04	\N
244620417 	PROFILER	2015-04-19 18:12:16-04	\N
244620425 	MONICA ELISE	2014-08-27 02:47:03-04	\N
244620441 	TRITON	2014-02-08 13:02:27-05	\N
244620446 	MIRA	2014-04-16 09:19:42-04	\N
244620454 	ZEEFAKKEL	2014-02-28 10:11:25-05	\N
244620511 	MERCURIUS	2013-01-22 08:33:57-05	\N
244620519 	VADOWESA	2012-11-29 12:53:53-05	\N
244620542 	INVOTIS IV	2016-12-15 03:43:46-05	\N
244620614 	RFD-2	2013-11-02 14:34:46-04	\N
244620619 	MERGUS	2012-09-14 00:35:00-04	\N
244620630 	BALANCE	2016-04-24 03:15:17-04	\N
244620640 	VECTOR	2014-05-03 13:50:27-04	\N
244620662 	COMBINATION	2018-11-28 21:37:34-05	\N
244620665 	VECTORIUS	2014-04-10 01:31:12-04	\N
244620670 	THREANT	2018-10-04 21:50:10-04	\N
244620677 	AMICE	2016-07-17 19:22:36-04	\N
244620698 	VIGILA	2017-09-24 07:19:26-04	\N
244620701 	ADDIO	2014-03-31 10:40:08-04	\N
244620704 	LUTIN	2016-08-04 17:13:05-04	\N
244620712 	MARILENKA	2017-10-04 00:33:58-04	\N
244620737 	STAATSMAN	2014-02-19 14:58:31-05	\N
244620781 	TEMPTATION	2018-01-05 04:05:18-05	\N
244620790 	JUST4US	2013-06-18 00:13:02-04	\N
244620834 	MARTENS 9	2015-01-27 20:42:39-05	\N
244620837 	MARTENS 8	2014-07-07 01:46:58-04	\N
244620839 	NOVUM	2014-04-05 00:15:38-04	\N
244620841 	COMMANDER	2014-01-06 06:32:33-05	\N
244620842 	JABO	2015-04-21 21:01:26-04	\N
244620846 	HEROS	2017-03-25 17:12:08-04	\N
244620848 	LINDOS	2015-08-10 12:56:15-04	\N
244620849 	TETRUMA 3	2015-04-26 18:29:19-04	\N
244620855 	HD-2	2012-04-15 08:50:48-04	\N
244620856 	TREWES	2014-04-07 14:01:00-04	\N
244620859 	FACTOFOUR	2017-01-13 21:00:53-05	\N
244620862 	WHITE WITCH IN BLUE	2012-02-05 09:03:28-05	\N
244620869 	ALPHA 3	2012-03-20 07:26:53-04	\N
244620876 	ORANJE NASSAU 2	2018-11-08 06:37:23-05	\N
244620886 	WIJNANDA	2017-09-28 07:11:45-04	\N
244620887 	DE VRIJHEID	2014-10-09 08:37:06-04	\N
244620889 	GERARD ALBERT	2013-08-07 08:58:09-04	\N
244620890 	WATERPOORT	2018-09-01 13:21:20-04	\N
244620898 	ELAN	2016-08-19 22:12:32-04	\N
244620901 	DEANNE-W	2015-10-07 05:24:59-04	\N
244620905 	RWS 22	2015-09-26 06:48:01-04	\N
244620909 	SITTARD	2016-04-26 00:58:48-04	\N
244620920 	RAPIDE	2015-04-07 22:49:58-04	\N
244620934 	EXPERIENCE	2012-08-30 19:52:52-04	\N
244620937 	VERITAS	2019-01-16 04:18:51-05	\N
244620940 	VOGUE	2018-01-30 22:30:48-05	\N
244620945 	VEERHAVEN VIII	2017-05-11 04:02:20-04	\N
244620946 	VEERHAVEN IX	2016-04-20 15:54:22-04	\N
244620947 	VEERHAVEN X	2017-02-06 20:14:05-05	\N
244620953 	MARIE LOUISE	2017-06-07 11:50:39-04	\N
244620958 	NOORDENWIND	2015-07-29 14:49:32-04	\N
244620959 	VECTURA	2017-03-26 11:24:32-04	\N
244620962 	SALUTE	2014-05-08 21:17:22-04	\N
244620963 	FACTOTUM	2014-07-22 05:42:25-04	\N
244620964 	ENSEMBLE	2018-03-15 20:43:56-04	\N
244620965 	MSC MAAS	2014-05-14 13:52:08-04	\N
244620966 	CARPE DIEM	2018-07-31 08:03:46-04	\N
244620968 	BENJA	2014-02-21 20:09:03-05	\N
244620972 	COTRANS 8	2018-01-14 21:17:21-05	\N
244620973 	COTRANS 9	2017-05-06 12:58:39-04	\N
244620974 	COTRANS 10	2012-04-12 16:22:32-04	\N
244620979 	MARJAN	2013-10-21 15:42:45-04	\N
244620980 	GIESSENBURG	2019-01-01 09:59:15-05	\N
244620984 	CHAPERON	2012-04-04 07:13:53-04	\N
244620986 	ZEELANDIA	2016-04-17 04:14:33-04	\N
244620991 	PRINSENGRACHT	2014-09-05 18:36:24-04	\N
244620992 	SCHIPPERSGRACHT	2012-05-09 21:08:48-04	\N
244620993 	PROGRES	2012-02-07 17:35:28-05	\N
244620994 	POLARIS	2015-11-12 07:32:56-05	\N
244621000 	LADY CARINA	2016-01-27 13:26:49-05	\N
244622000 	MATADOR	2014-02-07 10:39:02-05	\N
244624000 	JANENTITIAVISSER	2013-01-19 06:09:02-05	\N
244630003 	PERGO	2016-01-11 12:42:26-05	\N
244630015 	REGGESTROOM	2012-02-20 06:39:21-05	\N
244630026 	HANNA	2017-08-08 00:59:58-04	\N
244630027 	MARTENS 4	2018-04-17 04:39:57-04	\N
244630032 	TITANIA	2018-10-24 21:08:50-04	\N
244630033 	TYPHOON	2019-02-21 13:55:27-05	\N
244630035 	AQUA-MYRA	2018-07-27 08:44:38-04	\N
244630036 	CAAN	2015-08-29 09:48:55-04	\N
244630037 	LIBERTAS	2015-08-16 18:02:54-04	\N
244630038 	DURICHA	2015-03-27 01:01:40-04	\N
244630043 	PERFORMANCE	2013-05-10 16:36:22-04	\N
244630051 	CLIMAX	2017-02-02 12:35:01-05	\N
244630064 	HA40 SIMONA	2013-12-19 22:24:22-05	\N
244630075 	ARQUERO	2014-01-01 12:06:31-05	\N
244630082 	PIETEKOPPE	2018-08-25 03:38:14-04	\N
244630087 	ZAANSTAD II	2017-07-29 15:06:24-04	\N
244630096 	ADELAAR	2017-09-09 03:30:33-04	\N
244630100 	HOLLANDS DIEP	2013-09-09 10:33:30-04	\N
244630113 	SVITZER MALLAIG	2012-04-27 18:48:07-04	\N
244630115 	SOLUTION	2014-03-12 12:41:56-04	\N
244630117 	TOMMY	2014-10-28 19:03:57-04	\N
244630120 	FOXY	2017-03-14 23:21:18-04	\N
244630128 	MEANDER	2012-11-08 19:49:11-05	\N
244630131 	SIERRA	2014-10-17 17:38:21-04	\N
244630147 	IMMACULATA	2014-06-26 00:50:21-04	\N
244630148 	ZWAANTJE9	2016-10-15 09:10:34-04	\N
244630150 	DUC IN ALTUM	2017-01-14 12:21:49-05	\N
244630154 	ZWARTEWATER	2017-02-13 14:35:33-05	\N
244630159 	NOORDWESTHOEK 1	2018-12-11 08:09:18-05	\N
244630162 	DILIGENTIA	2013-10-23 18:22:08-04	\N
244630173 	JOHANNA-M	2013-04-21 02:14:35-04	\N
244630178 	ALLEGONDA	2015-02-04 16:03:59-05	\N
244630179 	ISELMAR	2018-03-08 04:16:53-05	\N
244630183 	JERO D	2016-09-08 03:02:55-04	\N
244630184 	BERGHEM 1	2019-02-11 21:36:51-05	\N
244630402 	MARGRETA	2015-05-29 21:24:33-04	\N
244630415 	LADY ALIDA	2012-03-28 03:19:26-04	\N
244630427 	ATLANTIS	2015-11-27 15:52:43-05	\N
244630428 	NO LIMIT	2017-03-13 13:40:16-04	\N
244630431 	VIDI	2018-11-03 08:11:56-04	\N
244630436 	REMBRANDT VAN RIJN	2012-01-08 03:30:53-05	\N
244630439 	INVOTIS V	2012-03-25 01:12:17-04	\N
244630496 	FAMKE	2017-03-27 21:56:42-04	\N
244630534 	ALABAMA	2012-03-04 07:45:02-05	\N
244630536 	ZILVERMEEUW 2	2017-05-13 06:15:03-04	\N
244630541 	ROELANDA	2012-12-14 04:43:40-05	\N
244630581 	AB ALIO	2013-02-22 13:16:12-05	\N
244630585 	ARASHI   <	2013-05-10 04:05:37-04	\N
244630605 	SERANO	2015-10-15 11:37:25-04	\N
244630606 	MARIA D	2016-12-18 05:20:39-05	\N
244630630 	UK56 JOHANNA MARIA	2016-04-15 14:04:41-04	\N
244630644 	ISA	2018-09-16 19:40:06-04	\N
244630651 	VEENINGEN	2012-03-25 20:46:53-04	\N
244630657 	VIKING KARVE	2016-01-30 19:45:33-05	\N
244630658 	BOBO	2015-07-12 16:17:46-04	\N
244630665 	VIOLENTO	2018-04-01 12:33:03-04	\N
244630683 	GOVERT-SR	2012-05-23 06:19:35-04	\N
244630685 	MARITIEM	2015-08-26 18:25:19-04	\N
244630690 	DE VERWONDERING	2015-01-12 10:52:45-05	\N
244630697 	SARINA	2018-04-18 03:45:35-04	\N
244630701 	AURORA	2015-05-31 05:27:58-04	\N
244630706 	LOTUS	2016-01-16 04:32:10-05	\N
244630709 	TAKA TUKA	2012-10-01 21:34:30-04	\N
244630710 	AVANTI	2017-08-22 09:48:20-04	\N
244630713 	BINGER	2012-01-16 19:42:15-05	\N
244630717 	KVB ESPERANTO 3 EN4	2016-11-15 18:21:28-05	\N
244630718 	JORDY  M	2017-05-10 02:51:03-04	\N
244630720 	BACCARAT	2015-10-26 18:45:20-04	\N
244630745 	VRIJHEID	2015-04-14 11:52:18-04	\N
244630748 	CALISTO	2016-04-05 07:22:07-04	\N
244630750 	KRVE 58	2017-09-14 22:24:14-04	\N
244630764 	MONTANARA	2016-11-25 09:23:21-05	\N
244630786 	PLATFORM P11-E	2014-05-30 03:11:55-04	\N
244630797 	NJORD	2013-09-22 22:10:49-04	\N
244630814 	HOUSTON	2014-07-01 23:09:41-04	\N
244630816 	CHALLENGE	2015-08-09 11:30:21-04	\N
244630829 	PRIDE OF FAIAL	2017-01-17 23:48:53-05	\N
244630858 	EMRI	2016-10-13 15:54:10-04	\N
244630877 	ANANJA	2014-09-29 23:16:01-04	\N
244630882 	HENDRIK-D	2014-10-04 20:34:32-04	\N
244630916 	NAVITAS	2015-01-11 15:38:41-05	\N
244630945 	MORDOMIA	2015-01-26 01:13:42-05	\N
244630974 	BLUE CRUISE	2012-07-15 03:46:33-04	\N
244630980 	TRIMAX	2012-03-09 03:24:22-05	\N
244630985 	VITANOVA	2013-03-29 06:42:23-04	\N
244633000 	WR109BOUKJEELISABETH	2016-09-16 10:50:50-04	\N
244634000 	UK16 ORION	2015-09-18 07:22:23-04	\N
244640240 	MARIA	2018-11-15 02:26:48-05	\N
244642000 	DONAU	2013-09-09 16:55:17-04	\N
244645890 	DELIVERY	2012-08-14 08:42:38-04	\N
244646000 	WR54 CORNELIS NAN	2012-04-05 09:31:53-04	\N
244647000 	JOHANNA JOSEPHINE	2015-09-05 06:24:37-04	\N
244650012 	ADRIE-S	2012-01-15 08:17:36-05	\N
244650033 	A 850 SOEMBA	2018-10-04 03:47:24-04	\N
244650089 	UNDINE 4	2017-04-05 20:06:28-04	\N
244650090 	FALCON	2017-03-29 20:58:10-04	\N
244650102 	GULF MAX	2016-11-13 22:02:11-05	\N
244650105 	FIDES	2017-09-15 16:03:59-04	\N
244650106 	DENVER	2016-01-31 07:37:52-05	\N
244650118 	DANKBAARHEID	2012-01-24 04:45:24-05	\N
244650123 	DENONZEN	2017-10-04 04:50:09-04	\N
244650129 	INVOTIS	2017-06-03 20:22:19-04	\N
244650132 	SPECHT	2016-04-26 04:53:38-04	\N
244650140 	DESIRE	2016-08-01 08:40:21-04	\N
244650142 	NOORDERKROON	2019-01-04 14:10:02-05	\N
244650144 	PHILIPSKERCKE	2012-01-03 17:43:46-05	\N
244650162 	ANNE	2012-02-17 17:42:06-05	\N
244650173 	BO	2017-03-27 16:14:14-04	\N
244650180 	RES NOVA	2014-11-24 07:19:23-05	\N
244650228 	QUADRANS 1	2014-10-29 16:23:02-04	\N
244650255 	PRINSES MIA	2018-09-23 12:20:38-04	\N
244650262 	NOS REVES	2016-08-02 01:55:35-04	\N
244650269 	GYRINUS	2017-06-01 06:34:10-04	\N
244650275 	ODIZ	2017-06-22 13:11:13-04	\N
244650280 	AALSCHOLVER	2017-04-28 06:18:31-04	\N
244650283 	BORITE	2014-05-26 07:48:18-04	\N
244650291 	MILAGRO	2012-11-04 11:56:04-05	\N
244650312 	AMAZONE	2015-08-03 02:01:38-04	\N
244650315 	ORKA	2014-02-08 15:16:00-05	\N
244650317 	ZUIDVLIET	2016-05-16 09:09:04-04	\N
244650323 	SOUTH CAROLINA	2016-01-14 09:48:35-05	\N
244650324 	NORTH CAROLINA	2017-06-13 07:21:41-04	\N
244650331 	TRADE NAVIGATOR	2017-11-15 07:15:34-05	\N
244650340 	AMANPURI	2012-07-14 22:13:50-04	\N
244650351 	PIETERMAN	2016-02-03 01:34:21-05	\N
244650367 	DRECHTSTEDEN 1	2015-04-01 12:37:10-04	\N
244650377 	SHANTY	2014-09-30 03:15:11-04	\N
244650381 	AHOY 16	2017-02-15 02:51:28-05	\N
244650397 	GAVIALIS	2013-02-14 12:46:02-05	\N
244650398 	RWS 88	2017-05-10 20:07:28-04	\N
244650424 	JANNA	2015-10-26 20:34:08-04	\N
244650433 	HOOP OP WELVAART	2015-04-08 08:30:21-04	\N
244650437 	A2B ENERGY	2012-07-22 04:02:32-04	\N
244650441 	AAGJE DEKEN	2014-05-17 08:18:43-04	\N
244650446 	WILJOPA	2018-06-17 23:41:34-04	\N
244650467 	FRIENDSHIP	2012-01-08 06:26:41-05	\N
244650475 	MARILENE	2012-05-26 11:23:27-04	\N
244650478 	MIRA VITA	2015-01-28 06:57:32-05	\N
244650483 	PA1/CASTOR	2013-03-05 16:25:44-05	\N
244650489 	DUANCIS	2012-09-16 22:09:15-04	\N
244650495 	JACOBUS	2013-11-14 11:51:29-05	\N
244650517 	SEAGULL	2014-10-19 17:18:24-04	\N
244650521 	ISIS	2016-01-28 21:55:59-05	\N
244650537 	MEJORA	2016-06-18 14:23:23-04	\N
244650545 	VICI	2018-04-29 12:30:47-04	\N
244650553 	AMISTADE	2017-12-28 07:21:41-05	\N
244650572 	LA VIDA	2014-11-02 00:11:38-04	\N
244650574 	DE HOOP	2013-01-23 18:42:11-05	\N
244650575 	NOOITGEDACHT	2016-10-10 12:49:12-04	\N
244650588 	CRIGEE	2017-10-04 10:00:52-04	\N
244650593 	MIDWAY	2013-07-23 23:15:26-04	\N
244650597 	KRVE 59	2013-04-27 01:56:39-04	\N
244650603 	RONNIE W	2014-10-27 15:02:56-04	\N
244650607 	QUADRANS 2	2015-10-25 21:47:59-04	\N
244650611 	VOERENDAAL	2013-11-25 02:40:41-05	\N
244650618 	BRAKEL 2	2015-02-19 17:06:07-05	\N
244650623 	GANZESTAD	2019-02-06 02:07:50-05	\N
244650631 	CHOICE	2014-06-07 08:33:01-04	\N
244650632 	INVOTIS VIII	2013-08-19 21:06:20-04	\N
244650640 	SIJTJE	2013-02-17 21:45:51-05	\N
244650648 	SEAZIP 5	2013-06-09 03:37:03-04	\N
244650651 	VOYAGER	2012-11-21 18:21:00-05	\N
244650652 	SEAZIP 6	2016-03-23 03:20:14-04	\N
244650668 	WATERWEG	2013-12-11 16:14:37-05	\N
244650689 	OCTOPUS	2017-01-28 19:15:57-05	\N
244650690 	JEANINE	2012-09-27 22:27:58-04	\N
244650691 	THEODORA	2018-08-12 10:56:46-04	\N
244650699 	ASWINTHA	2013-11-27 14:40:12-05	\N
244650709 	SOMTRANS XV	2017-12-16 09:20:52-05	\N
244650710 	EENDRACHT II	2015-08-25 07:16:51-04	\N
244650721 	TALING	2014-12-23 23:17:50-05	\N
244650723 	ORCHILA	2016-08-30 02:09:27-04	\N
244650731 	ELMARE	2013-04-11 06:10:08-04	\N
244650739 	MOONLIGHT	2014-08-31 20:15:43-04	\N
244650746 	MAIN VIII	2016-02-29 13:50:30-05	\N
244650752 	ASTRA	2018-12-28 06:20:42-05	\N
244650769 	MAXCITING	2016-10-31 00:58:20-04	\N
244650777 	SOMTRANS XXII	2014-10-11 19:32:59-04	\N
244650780 	VALKYRIE	2013-08-06 20:36:13-04	\N
244650782 	EXPANDED	2014-11-29 08:05:10-05	\N
244650787 	ORTYGIA	2014-01-26 11:24:00-05	\N
244650790 	WESTFORD	2015-12-29 12:35:17-05	\N
244650794 	PHILOS	2013-02-07 02:59:42-05	\N
244650795 	WESTZEE	2013-08-27 07:53:17-04	\N
244650796 	MARIA	2018-11-04 08:05:45-05	\N
244650797 	GRADATIM	2012-05-18 09:46:22-04	\N
244650799 	WILLEM ANTONIE	2016-12-02 23:23:11-05	\N
244650800 	HALLEY	2015-07-03 22:37:20-04	\N
244650803 	ADRI	2014-09-13 17:53:57-04	\N
244650805 	YEMAYA	2014-11-07 23:07:09-05	\N
244650807 	CITRINE	2013-09-05 00:35:50-04	\N
244650812 	SYNTHESE 1	2018-09-28 07:20:13-04	\N
244650813 	SYNTHESE 11	2014-06-14 05:49:34-04	\N
244650814 	SWS NORFOLK	2017-12-16 08:32:23-05	\N
244650821 	USSUS	2013-02-12 20:31:19-05	\N
244650832 	PARADOX	2015-12-22 05:21:10-05	\N
244650834 	MERCATOR	2017-01-26 00:18:00-05	\N
244650835 	PACEAS	2015-08-28 10:13:22-04	\N
244650838 	DA VINCI	2019-02-15 20:47:39-05	\N
244650841 	OCTOPUS	2012-03-29 19:10:35-04	\N
244650845 	NOORDSTER II	2016-09-26 13:54:28-04	\N
244650847 	CAMARO	2014-11-23 19:26:14-05	\N
244650852 	ELIONIE	2017-07-09 05:56:07-04	\N
244650853 	ANTHONIE	2018-11-11 00:52:49-05	\N
244650854 	CARAMBA	2016-08-25 19:17:25-04	\N
244650855 	LIBELLE	2012-03-19 18:16:10-04	\N
244650860 	MATHIJS	2018-09-09 10:27:29-04	\N
244650864 	MARLEA	2015-04-15 06:11:37-04	\N
244650868 	STUDIUM	2012-07-10 19:52:58-04	\N
244650869 	GENIUS	2015-06-17 21:51:29-04	\N
244650871 	VIGILATE ET ORATE	2015-10-16 06:28:49-04	\N
244650874 	MAREA	2018-09-13 19:41:57-04	\N
244650877 	AUDENDA	2012-11-09 06:22:22-05	\N
244650878 	ELEONORA	2016-10-10 20:58:50-04	\N
244650879 	ABEL TASMAN	2012-12-29 04:53:33-05	\N
244650880 	ANACONDA	2018-10-28 01:33:16-04	\N
244650881 	CARONIA	2016-10-06 07:57:46-04	\N
244650883 	FENNY I	2015-09-15 09:31:25-04	\N
244650884 	TITAN	2017-02-11 12:14:50-05	\N
244650885 	VLB-2	2015-01-10 05:31:14-05	\N
244650887 	VLB-6	2018-10-27 18:53:36-04	\N
244650888 	VLB-1	2014-06-16 12:10:29-04	\N
244650889 	FORENSO	2016-01-01 07:10:45-05	\N
244650891 	BLACKLOCK	2015-11-03 03:13:25-05	\N
244650898 	CAPRICORNUS	2016-11-01 05:01:02-04	\N
244650900 	INDEPENDENT	2012-04-10 16:17:22-04	\N
244650902 	GERRIT JAN	2018-01-11 21:05:27-05	\N
244650903 	DESAFIO	2018-05-10 01:50:49-04	\N
244650905 	EVANTI	2015-11-04 05:11:38-05	\N
244650906 	PRO-RATA	2016-01-24 16:48:42-05	\N
244650909 	LEENDERTANGELINA	2014-09-15 09:34:59-04	\N
244650911 	CONTENTUS	2018-01-22 20:35:02-05	\N
244650912 	FRANCISCA	2017-02-13 03:20:44-05	\N
244650913 	ALLEGRIA	2014-08-10 08:51:50-04	\N
244650914 	_CHEYENNE	2018-08-29 00:17:07-04	\N
244650917 	CONDOR	2014-09-08 09:09:54-04	\N
244650919 	VRIJHEID	2014-03-31 17:37:17-04	\N
244650920 	KRABBEGEUL	2016-02-08 17:44:15-05	\N
244650923 	CAMARO IV	2017-03-07 20:15:00-05	\N
244650925 	BONANZA	2016-02-06 12:46:51-05	\N
244650936 	LA DOLCE VITA	2013-04-11 00:14:57-04	\N
244650940 	EROS	2013-08-01 09:09:01-04	\N
244650941 	LINSI	2012-03-28 23:20:52-04	\N
244650944 	LEANNE	2016-06-17 14:41:50-04	\N
244650947 	"KAMPERZAND"	2018-12-18 06:22:56-05	\N
244650953 	KRUIER	2015-07-14 19:47:21-04	\N
244650956 	ESPERANCE	2016-06-29 11:41:40-04	\N
244650960 	SOMTRANS XXV	2016-03-16 23:09:41-04	\N
244650962 	EENDRACHT	2018-06-13 04:08:02-04	\N
244650965 	ADELANTE	2018-02-27 19:45:05-05	\N
244650966 	JACOB GZN	2014-01-16 08:06:10-05	\N
244650969 	KADIMA	2016-04-07 14:46:41-04	\N
244650970 	SBH2	2012-02-26 10:53:00-05	\N
244650971 	ESTRELLA	2016-11-22 14:11:00-05	\N
244650975 	PRIMAIR	2016-06-16 07:49:43-04	\N
244650976 	RENATA	2018-06-04 02:04:38-04	\N
244650983 	HORIZON	2014-02-16 08:13:02-05	\N
244650985 	PRESTO	2012-08-30 06:11:34-04	\N
244650986 	DE ZONNEBLOEM	2012-04-27 03:28:59-04	\N
244650990 	AMAZONE	2015-08-05 07:33:43-04	\N
244650991 	CHELSEA B	2014-01-02 13:00:48-05	\N
244650992 	HYADE	2016-07-12 11:46:43-04	\N
244650993 	EENHOORN	2013-04-29 17:35:27-04	\N
244650995 	TURBULENT	2017-11-28 22:44:12-05	\N
244650996 	FIVEL	2018-09-14 02:36:02-04	\N
244652000 	SCHUITENGAT	2015-03-13 19:05:49-04	\N
244653000 	FREEDOM	2013-12-20 08:36:53-05	\N
244659000 	WR244 HENK JAN	2012-03-27 01:02:39-04	\N
244660001 	SOCIETAS	2013-05-14 05:29:55-04	\N
244660008 	AMARE	2016-03-11 21:06:45-05	\N
244660009 	FOSSA	2018-02-11 04:51:23-05	\N
244660011 	KEPLER	2012-08-07 13:02:38-04	\N
244660012 	LAMANTIJN	2016-06-16 17:42:37-04	\N
244660013 	MAR-GRETHE	2017-03-19 20:57:36-04	\N
244660014 	TIJDGEEST	2017-07-08 04:07:21-04	\N
244660015 	SAMARA	2012-07-15 15:09:49-04	\N
244660016 	MARIS	2013-02-20 08:07:16-05	\N
244660017 	LAETITIA	2018-01-07 02:44:28-05	\N
244660019 	AMIGO	2014-01-05 08:13:59-05	\N
244660022 	DIBRAD	2013-07-16 15:02:01-04	\N
244660032 	TRAVIATA	2018-03-04 01:42:49-05	\N
244660033 	TORRENT	2016-07-11 13:14:52-04	\N
244660035 	DEO GRATIAS	2015-02-05 14:48:58-05	\N
244660036 	DELOS	2012-07-09 14:40:23-04	\N
244660037 	BELICHA	2012-03-29 15:57:11-04	\N
244660038 	DEO-JUVANTE	2013-08-06 09:33:49-04	\N
244660046 	FIDUCIA	2017-10-18 20:22:52-04	\N
244660047 	SYNTHESE 4	2015-08-04 16:52:26-04	\N
244660048 	SYNTHESE 3	2018-10-29 00:41:44-04	\N
244660050 	SYNTHESE 9	2012-04-04 11:41:57-04	\N
244660051 	BLACK PEARL	2017-08-31 23:16:55-04	\N
244660052 	PROMOTION	2015-02-09 20:19:37-05	\N
244660054 	AVENTURA	2015-04-06 06:47:51-04	\N
244660061 	FATAMORGANA	2018-12-20 09:47:23-05	\N
244660063 	MARION	2012-02-04 00:39:58-05	\N
244660065 	ANDA	2015-02-01 00:45:01-05	\N
244660067 	SPEELMAN	2017-08-27 14:07:44-04	\N
244660071 	SINCERO	2018-01-02 11:47:29-05	\N
244660073 	AMIGOS	2017-06-09 16:09:04-04	\N
244660075 	DEFACTO	2016-06-26 09:10:57-04	\N
244660078 	HENRI MATISSE	2018-07-02 21:29:03-04	\N
244660081 	BO ELISE	2013-03-23 10:16:23-04	\N
244660082 	LIBURNA	2018-01-06 10:12:19-05	\N
244660085 	DIADEMAR	2017-02-03 05:58:25-05	\N
244660086 	KARBOUW	2017-12-05 07:57:15-05	\N
244660087 	DENZO	2015-05-18 17:53:58-04	\N
244660093 	BORA	2013-12-11 21:22:22-05	\N
244660094 	NITRICO 2	2013-11-26 20:00:35-05	\N
244660095 	PROSERPINA	2012-02-02 11:12:33-05	\N
244660096 	ISTAR	2012-04-11 20:48:39-04	\N
244660099 	SYNTHESE 14	2014-12-12 02:05:08-05	\N
244660100 	MURO	2018-05-05 14:16:23-04	\N
244660106 	AUDREY	2017-04-13 09:54:28-04	\N
244660108 	MUREEN	2013-11-19 10:23:33-05	\N
244660111 	VANTAGE	2013-08-22 05:37:59-04	\N
244660113 	BO	2016-11-09 01:56:36-05	\N
244660114 	VANQUISH	2012-02-11 13:48:51-05	\N
244660153 	RVE54	2015-01-08 17:29:52-05	\N
244660159 	ORANJE NASSAU	2012-06-10 10:08:23-04	\N
244660160 	RUBIS	2014-04-21 12:11:02-04	\N
244660161 	ANCOR	2016-06-08 15:31:22-04	\N
244660165 	ALLONS	2016-07-27 16:08:55-04	\N
244660166 	CONTO-MIO	2015-01-06 09:20:17-05	\N
244660168 	CON ZELO	2014-04-28 21:05:38-04	\N
244660172 	HERMANNA	2012-09-27 04:00:17-04	\N
244660175 	ONDERNEMING IV	2017-05-06 02:32:57-04	\N
244660177 	WIJKERZAND	2018-03-05 02:02:12-05	\N
244660178 	DIANTHO	2018-11-12 14:12:01-05	\N
244660179 	MPS ADRIANA	2015-07-17 22:10:23-04	\N
244660184 	AEGIR	2012-06-27 17:15:55-04	\N
244660186 	KENTERING	2018-05-21 05:38:58-04	\N
244660189 	MARJO-R	2014-08-17 11:41:13-04	\N
244660193 	CAMIEL	2015-07-20 02:16:48-04	\N
244660194 	SOWNENT	2017-10-09 06:07:42-04	\N
244660196 	JOHANNA V/D WEES	2013-06-24 08:41:44-04	\N
244660198 	HOLLARE	2014-07-14 19:01:10-04	\N
244660202 	KVB RES	2016-06-10 11:44:09-04	\N
244660204 	GEERTRUIDA V/D WEES	2018-12-02 10:53:30-05	\N
244660207 	BROEDERTROUW 14	2015-02-17 07:41:30-05	\N
244660212 	KLAZINA	2012-05-03 21:56:16-04	\N
244660213 	HENDRIK	2013-06-13 17:32:32-04	\N
244660215 	BROEDERTROUW 4	2018-10-30 18:34:02-04	\N
244660216 	BROEDERTROUW 2	2016-05-08 12:40:28-04	\N
244660218 	ADRIANA	2015-07-19 17:30:09-04	\N
244660220 	WEERT	2015-07-09 00:44:09-04	\N
244660221 	EEMSTEYN	2016-06-21 03:43:15-04	\N
244660222 	ZAGRI 3	2013-03-22 15:58:19-04	\N
244660223 	BAKESTEYN	2017-08-26 08:52:28-04	\N
244660224 	ZAGRI 15	2012-04-21 18:42:02-04	\N
244660225 	TAURUS	2013-10-18 03:40:40-04	\N
244660228 	SPIRIT OF FREEDOM	2015-01-19 12:46:28-05	\N
244660230 	RIVAL	2017-12-26 18:47:59-05	\N
244660231 	CARITAS KVB	2013-05-01 00:42:53-04	\N
244660232 	NEPTUNUS	2018-09-08 14:38:55-04	\N
244660233 	FIDELITAS	2013-12-04 23:34:34-05	\N
244660234 	BO DJOVANNY	2017-07-21 11:21:13-04	\N
244660235 	LEENDERT SR	2014-12-21 19:37:18-05	\N
244660237 	CHRISTIAAN P	2012-02-06 00:49:27-05	\N
244660240 	SERENITAS	2016-04-08 09:04:12-04	\N
244660242 	MILOU	2012-07-05 13:48:41-04	\N
244660245 	VIKING	2018-07-01 16:19:48-04	\N
244660249 	MAGRI	2012-09-29 21:01:32-04	\N
244660252 	AMPHIRO	2012-03-16 07:11:41-04	\N
244660254 	REALENGRACHT	2012-03-21 16:01:00-04	\N
244660255 	WESTLANDGRACHT	2017-03-26 06:57:18-04	\N
244660259 	ERASMUSGRACHT	2017-10-18 00:20:26-04	\N
244660261 	EGELANTIERSGRACHT	2016-03-30 00:05:50-04	\N
244660262 	VIJZELGRACHT	2015-02-07 21:29:20-05	\N
244660265 	LIJNBAANSGRACHT	2017-02-05 14:42:21-05	\N
244660272 	HENSIE	2018-10-07 00:03:08-04	\N
244660279 	LINDE	2013-03-07 03:54:36-05	\N
244660280 	TOEKOMST	2014-05-30 11:22:29-04	\N
244660287 	TERRA	2014-07-26 14:44:11-04	\N
244660290 	PIRAAT	2018-10-02 01:51:38-04	\N
244660293 	ELSINA	2014-02-21 11:45:50-05	\N
244660296 	ALIDA	2018-01-14 12:23:38-05	\N
244660297 	MEJANA	2018-03-16 09:25:14-04	\N
244660298 	ZEEZWALUW	2012-09-08 20:57:52-04	\N
244660299 	CONTENDER	2014-02-18 00:45:24-05	\N
244660300 	LODO	2015-05-10 10:46:25-04	\N
244660301 	CELSIUS	2013-02-19 19:46:55-05	\N
244660303 	MARJO R	2018-06-03 18:03:54-04	\N
244660305 	TOROS	2012-11-07 22:31:32-05	\N
244660306 	PROVIDENTIA	2012-04-19 08:58:09-04	\N
244660307 	COURAGE	2017-06-16 02:34:56-04	\N
244660309 	BESTEVAER	2015-08-16 04:14:44-04	\N
244660310 	TEUNTJE-S	2016-01-06 10:00:24-05	\N
244660312 	LEYLA	2014-05-10 01:37:06-04	\N
244660313 	FIGHTER	2017-03-01 03:07:43-05	\N
244660315 	SERFRA	2014-05-27 18:23:41-04	\N
244660317 	PETRAN	2015-01-18 17:21:06-05	\N
244660320 	CALANDO	2013-09-17 22:28:47-04	\N
244660323 	EXPLORER	2018-02-12 19:55:17-05	\N
244660328 	EXPERTA	2016-01-20 11:33:04-05	\N
244660329 	BANKERT	2016-01-24 18:23:24-05	\N
244660333 	KAREL DOORMAN	2013-02-08 23:42:17-05	\N
244660335 	CHRISTINA	2018-01-21 22:01:40-05	\N
244660336 	BARENDSZ	2015-01-02 00:24:24-05	\N
244660339 	VICTORY	2018-10-16 04:21:47-04	\N
244660341 	MARSHAL	2012-06-18 07:53:55-04	\N
244660344 	EINSTEIN	2017-09-13 01:42:45-04	\N
244660351 	MILLENNIUM	2017-02-03 05:23:47-05	\N
244660354 	MARIELLE	2012-11-02 00:25:23-04	\N
244660356 	TORONTO	2012-11-17 23:01:02-05	\N
244660361 	MILANO	2014-04-15 10:41:32-04	\N
244660366 	JOSON	2012-07-08 16:28:32-04	\N
244660374 	STAELDIEP	2014-08-18 05:30:52-04	\N
244660375 	BLANKENBURG	2017-09-11 12:15:54-04	\N
244660377 	KOERIER	2016-03-06 17:24:23-05	\N
244660379 	VIATOR	2016-03-14 20:33:48-04	\N
244660382 	JOHN	2013-05-13 15:17:55-04	\N
244660390 	LAHRINGEN	2013-10-14 23:12:18-04	\N
244660391 	SMART BARGE	2014-10-31 17:00:41-04	\N
244660392 	VON HUMBOLDT	2018-05-12 08:42:57-04	\N
244660393 	VINKEL	2014-10-09 01:46:51-04	\N
244660394 	DIEZE HOPPER	2013-05-07 16:30:38-04	\N
244660396 	HAVENBARON	2016-04-22 10:49:27-04	\N
244660400 	JAGER	2014-01-18 16:11:56-05	\N
244660401 	SERVUS	2015-01-12 18:47:49-05	\N
244660402 	ZIJPE	2016-05-28 02:35:23-04	\N
244660404 	MERCURY	2012-07-17 02:36:27-04	\N
244660406 	BERTUS JR.	2018-08-08 04:29:03-04	\N
244660408 	ROOS	2016-03-29 09:58:13-04	\N
244660412 	MA-BAKER	2017-05-23 06:04:39-04	\N
244660413 	BLIZZARD	2015-05-22 08:48:14-04	\N
244660414 	CYCLOON	2017-10-20 15:34:33-04	\N
244660415 	CHINOOK	2018-04-09 04:21:48-04	\N
244660416 	NORTE	2013-11-16 12:18:37-05	\N
244660418 	BRISE	2015-07-22 06:33:52-04	\N
244660419 	EMWATIS	2016-05-09 17:39:18-04	\N
244660420 	CHAMSIN	2013-05-10 07:34:11-04	\N
244660421 	BOERAN	2016-06-20 11:54:26-04	\N
244660422 	CHUBASCO	2015-01-20 12:31:49-05	\N
244660423 	EMBATA	2016-05-13 02:28:51-04	\N
244660425 	IDEAAL	2017-10-17 07:47:00-04	\N
244660432 	OTHELLO	2015-12-04 06:02:52-05	\N
244660434 	SERENDIEP	2013-02-25 23:22:47-05	\N
244660438 	SANNE	2018-04-06 17:16:22-04	\N
244660439 	DELTA HOPPER	2014-01-23 09:48:58-05	\N
244660441 	MERCUR	2016-12-02 07:46:47-05	\N
244660442 	TRANSPORTER	2018-11-12 20:38:06-05	\N
244660445 	ANDROMEDA	2016-02-27 19:04:41-05	\N
244660447 	UNION 2	2012-05-25 03:00:57-04	\N
244660449 	KILIYA	2014-09-08 22:44:16-04	\N
244660461 	SANITAS	2012-04-07 00:57:18-04	\N
244660463 	FORMOSA	2018-05-02 04:28:29-04	\N
244660468 	COLONIA	2013-08-11 22:01:00-04	\N
244660469 	AMBULANT	2017-09-24 10:55:31-04	\N
244660474 	CALABRIA	2018-07-20 10:52:07-04	\N
244660475 	RHODY	2017-11-13 10:37:53-05	\N
244660476 	CARPEDIEM	2015-11-22 16:08:41-05	\N
244660477 	CARPE NOCTEM	2012-09-12 15:17:04-04	\N
244660478 	CARPE AURORAM	2016-01-24 19:03:12-05	\N
244660479 	RAY OF SUNSHINE	2016-10-07 08:15:40-04	\N
244660480 	LEEUW	2016-07-05 03:59:53-04	\N
244660483 	HANS NICO	2015-02-27 08:40:40-05	\N
244660500 	KENORA	2012-02-26 15:11:14-05	\N
244660507 	KOOPHANDEL II	2015-03-21 18:14:31-04	\N
244660512 	NOSTRA NAVE	2015-12-01 01:26:50-05	\N
244660517 	ZILVERMEEUW 5	2019-01-10 00:34:47-05	\N
244660520 	ALDABRA	2018-07-17 08:38:44-04	\N
244660522 	NOORDENDIEP	2014-07-18 12:40:21-04	\N
244660524 	CATHARINAPLAAT	2015-03-19 00:47:00-04	\N
244660530 	ENJOY	2018-06-08 01:15:36-04	\N
244660531 	WILJO	2014-03-09 13:06:36-04	\N
244660532 	JOLINE	2012-11-19 21:11:43-05	\N
244660534 	EGBERTUS THIRZA-D	2012-03-14 00:47:31-04	\N
244660536 	INGONA	2018-12-03 16:59:28-05	\N
244660537 	LEDA	2014-01-02 11:13:47-05	\N
244660541 	TWEE GEBROEDERS	2016-09-18 08:09:50-04	\N
244660545 	UNIQUESHIP	2017-05-08 20:55:52-04	\N
244660548 	MEJONI	2018-04-16 02:55:31-04	\N
244660554 	TRAVERSEE	2014-02-02 18:42:23-05	\N
244660555 	DESTINY	2017-01-22 03:19:05-05	\N
244660556 	ALSACE	2017-09-08 23:51:02-04	\N
244660557 	RUDAN-D	2018-12-22 11:24:39-05	\N
244660559 	MTS IMPULS	2017-01-24 12:07:34-05	\N
244660562 	LOTUS	2018-03-17 22:18:00-04	\N
244660563 	DEO-FAVENTE	2018-04-02 17:33:39-04	\N
244660564 	COMPAGNON	2012-02-28 18:52:58-05	\N
244660565 	MEGAN	2013-01-27 14:50:03-05	\N
244660566 	LEKSTROOM I	2012-07-16 10:56:17-04	\N
244660567 	FEROX	2017-01-24 12:40:39-05	\N
244660568 	LEKSTROOM V	2015-11-29 01:01:30-05	\N
244660571 	ENDEAVOUR	2015-12-17 04:00:06-05	\N
244660572 	PA5/POLLUX	2016-01-17 19:48:37-05	\N
244660583 	AVENIR	2015-06-23 00:53:05-04	\N
244660584 	MISONDA	2013-09-16 21:28:21-04	\N
244660586 	ICHTHUS	2016-01-02 04:40:20-05	\N
244660587 	SPES SALUTIS	2012-11-23 08:21:23-05	\N
244660591 	CREDO	2018-06-28 10:35:48-04	\N
244660598 	MARPOL 14	2014-03-15 09:13:20-04	\N
244660600 	BONAVENTURA	2015-03-22 03:20:24-04	\N
244660601 	NAPOLEON	2016-07-30 04:45:07-04	\N
244660602 	FEROX	2016-03-10 15:30:42-05	\N
244660604 	RELAX	2012-07-15 13:05:39-04	\N
244660605 	COTRANS2	2013-10-19 08:42:57-04	\N
244660609 	MERLIJN	2014-02-23 14:33:05-05	\N
244660611 	RVE 3	2014-08-03 10:27:54-04	\N
244660613 	COTRANS 7	2014-06-30 17:05:06-04	\N
244660616 	EDELWEISS	2015-11-07 23:16:10-05	\N
244660617 	DURANCE	2012-08-17 07:48:52-04	\N
244660620 	ELGERIA	2013-11-24 21:14:31-05	\N
244660622 	RIVER	2018-07-29 02:59:52-04	\N
244660624 	JUDITH	2017-01-04 17:37:58-05	\N
244660627 	JADE	2012-06-02 14:45:14-04	\N
244660628 	TWO RIVERS	2015-02-23 04:12:21-05	\N
244660629 	DEJA	2013-03-06 02:07:24-05	\N
244660631 	KLADI	2013-12-27 11:09:22-05	\N
244660638 	VLAKE	2018-03-20 08:20:41-04	\N
244660639 	VLAARDINGEN	2016-07-10 16:54:20-04	\N
244660640 	RVE 56	2013-02-05 14:49:25-05	\N
244660644 	STOLT MAAS	2012-07-06 02:29:32-04	\N
244660646 	STOLT NECKAR	2016-01-03 17:21:33-05	\N
244660647 	STOLT MOSEL	2014-11-15 15:50:08-05	\N
244660650 	CON AMORE	2018-08-28 08:26:49-04	\N
244660652 	MONTIGNAC	2014-08-26 13:06:09-04	\N
244660653 	MAIN IX	2016-03-08 00:07:34-05	\N
244660655 	SOMTRANS XIV	2019-02-13 16:27:31-05	\N
244660656 	SOMTRANS  XIII	2015-01-13 17:22:43-05	\N
244660657 	SOMTRANS XII	2018-08-12 20:18:47-04	\N
244660659 	AEGIR	2014-07-09 17:51:07-04	\N
244660660 	ADDIO	2017-01-28 20:44:30-05	\N
244660663 	SIANTO	2016-04-18 12:51:00-04	\N
244660664 	OLEANDER	2017-10-25 04:30:40-04	\N
244660667 	KRANERWEERD	2014-12-03 00:39:24-05	\N
244660671 	STORMVOGEL	2018-01-23 01:33:26-05	\N
244660675 	SAMAR	2016-01-10 07:59:03-05	\N
244660681 	MOANA	2013-07-13 07:20:49-04	\N
244660682 	TRUON	2017-10-16 22:47:39-04	\N
244660690 	CALCIT 4	2017-04-04 15:07:24-04	\N
244660691 	CONSENSUS	2016-08-21 12:51:55-04	\N
244660692 	VERVANTI	2017-09-04 10:56:46-04	\N
244660693 	INDUCO	2014-10-21 10:55:54-04	\N
244660695 	FIDELITY	2012-10-24 00:19:48-04	\N
244660698 	SPES SALUTIS	2016-12-10 12:04:23-05	\N
244660699 	MASORA	2016-11-25 07:22:57-05	\N
244660700 	NEWTON	2014-06-06 18:02:25-04	\N
244660701 	VECTURA	2012-05-07 20:45:14-04	\N
244660703 	COLUMBIA	2015-02-02 14:35:50-05	\N
244660704 	CORENDIJCK	2014-08-25 13:42:09-04	\N
244660705 	DEVOTION	2013-12-29 22:46:27-05	\N
244660711 	TJERK HIDDE	2014-12-01 05:02:14-05	\N
244660713 	ANTONIE	2018-08-11 18:00:14-04	\N
244660715 	SERDON	2015-08-09 23:41:19-04	\N
244660718 	LINKO	2015-01-30 21:01:36-05	\N
244660720 	SOPHIA	2014-07-08 01:51:57-04	\N
244660722 	CORNELIS B	2017-11-05 02:47:05-05	\N
244660723 	ANROMA	2014-07-14 02:26:58-04	\N
244660725 	WILLEM SR	2012-11-27 10:25:29-05	\N
244660726 	FEBE	2016-06-11 01:05:09-04	\N
244660729 	ORION 4	2014-01-22 14:05:09-05	\N
244660735 	KOSTRA 3	2014-08-07 05:37:32-04	\N
244660738 	AART SR	2018-11-28 15:01:46-05	\N
244660742 	MIRAGE	2018-07-30 16:50:27-04	\N
244660745 	TRICOLORE	2017-06-26 21:29:30-04	\N
244660747 	AQUA SHUTTLE	2012-02-20 15:37:31-05	\N
244660763 	NOVITAS	2015-04-18 18:34:53-04	\N
244660768 	REX RHENI	2018-05-07 17:08:19-04	\N
244660772 	HAPI	2016-11-11 17:06:37-05	\N
244660777 	MARE MARIEKE	2015-07-16 10:39:55-04	\N
244660778 	LIA	2012-04-02 04:19:16-04	\N
244660779 	PRUDENTIA	2012-06-24 03:45:22-04	\N
244660783 	EIGENBODEM	2017-02-20 08:03:30-05	\N
244660784 	KVB WILHELMINA 3	2012-06-17 12:38:23-04	\N
244660785 	SALVADORA	2016-06-07 21:30:08-04	\N
244660786 	ELJA	2016-06-03 18:29:17-04	\N
244660788 	SAGITTA	2015-02-12 00:46:21-05	\N
244660789 	TARIUS	2016-02-07 23:23:32-05	\N
244660791 	EMPRESSA	2014-08-19 23:38:53-04	\N
244660794 	NADENOS	2012-06-17 14:17:39-04	\N
244660796 	SKYLINE	2015-08-06 02:26:30-04	\N
244660801 	ROELOF SR	2016-02-02 04:54:26-05	\N
244660805 	MARJOLEIN	2018-04-23 04:35:28-04	\N
244660806 	PORTOFINO	2015-07-15 06:01:19-04	\N
244660811 	INFINITY	2015-11-02 12:12:07-05	\N
244660812 	INTENSITY	2013-03-20 20:24:52-04	\N
244660813 	GLISSANDO	2015-04-02 03:45:17-04	\N
244660815 	VLISSINGEN	2018-04-12 18:20:31-04	\N
244660818 	MULTRATUG 27	2013-10-19 16:31:32-04	\N
244660819 	VOORBURG	2016-11-29 03:22:22-05	\N
244660820 	VELDEN	2017-11-07 08:33:42-05	\N
244660821 	TEXEL 44	2014-09-24 14:27:32-04	\N
244660822 	JACOBA	2015-08-07 03:22:31-04	\N
244660825 	FRIENDSHIP	2018-01-25 01:45:15-05	\N
244660830 	SHALIMAR	2014-03-13 07:43:15-04	\N
244660831 	SAYONARA	2015-12-03 00:56:11-05	\N
244660833 	VRIENDSCHAP	2015-12-06 10:26:36-05	\N
244660834 	SOMTRANS XVIII	2015-07-21 21:08:33-04	\N
244660836 	GALIYA	2018-06-15 21:44:44-04	\N
244660839 	WENDING	2018-09-25 02:00:21-04	\N
244660841 	SYNTHESE 20	2015-01-22 09:49:24-05	\N
244660842 	SHAKIRA	2013-09-08 22:44:50-04	\N
244660843 	QUINTO	2015-11-25 15:40:19-05	\N
244660847 	MORRA	2014-11-26 13:16:10-05	\N
244660848 	ZEELAND	2013-01-30 20:05:01-05	\N
244660851 	FESTINA-LENTE	2014-08-05 20:14:57-04	\N
244660873 	JOSEPHINA	2016-06-02 10:52:25-04	\N
244660875 	DE MAJESTEIT	2013-09-20 06:03:50-04	\N
244660878 	GEMINI	2012-04-21 19:10:02-04	\N
244660882 	SCHUTTEVAER	2018-09-09 12:20:49-04	\N
244660883 	MON DESIR	2018-06-18 16:25:46-04	\N
244660884 	LIEJO	2018-05-21 02:30:42-04	\N
244660890 	DRECHTSTEDEN 2	2017-12-09 15:00:26-05	\N
244660891 	NELLIE	2018-09-16 02:32:56-04	\N
244660893 	SHAMROCK	2014-10-04 18:37:44-04	\N
244660896 	TREASURE	2012-07-27 22:47:01-04	\N
244660904 	JULIAM	2013-02-16 07:53:01-05	\N
244660908 	VOLHARDING 14	2013-12-20 09:13:02-05	\N
244660909 	MENORAH	2016-09-29 05:18:13-04	\N
244660910 	NOARDEWYN	2014-10-22 01:56:27-04	\N
244660911 	ZUIDENWIND	2014-10-16 07:19:32-04	\N
244660913 	GREGORY	2013-12-19 10:57:43-05	\N
244660915 	QUO-VADIS	2015-12-31 23:37:36-05	\N
244660917 	ALWI-B	2016-12-31 18:33:19-05	\N
244660918 	WERVELWIND	2016-08-15 21:38:04-04	\N
244660919 	OOSTERSCHELDE	2015-10-08 22:28:05-04	\N
244660920 	MERWEDE 18	2013-04-24 08:51:37-04	\N
244660922 	GERRIT B	2015-03-24 12:14:24-04	\N
244660925 	JUNTOS	2014-12-10 01:03:46-05	\N
244660926 	CENSUS	2013-02-13 21:37:44-05	\N
244660927 	WHITE BELL	2016-08-24 11:00:01-04	\N
244660928 	DAMIAN	2014-03-09 19:59:44-04	\N
244660931 	ALEXANDRA	2015-01-25 16:42:57-05	\N
244660933 	DEVIANT	2014-11-01 13:39:22-04	\N
244660939 	GULDEN BELOFTE	2012-05-02 00:11:24-04	\N
244660941 	AAGTJE	2013-11-14 15:55:17-05	\N
244660944 	SYMPHONY	2014-12-13 17:44:35-05	\N
244660951 	SPAUWER	2015-05-12 08:54:11-04	\N
244660955 	VACANDO	2016-06-13 13:42:47-04	\N
244660959 	PONTIAC	2014-10-20 22:22:19-04	\N
244660960 	NAVARE	2018-08-13 10:06:59-04	\N
244660961 	.MUGUET	2012-06-26 21:44:40-04	\N
244660962 	USHUAIA	2017-02-13 12:26:20-05	\N
244660963 	IDUNA	2019-01-22 23:24:56-05	\N
244660967 	HYDROVAC 10	2014-12-11 03:23:27-05	\N
244660974 	VIKING	2018-09-22 14:30:31-04	\N
244660977 	QUELA	2017-06-02 10:23:55-04	\N
244660978 	ANNIE IV	2018-03-03 02:43:13-05	\N
244660982 	ALLURE	2014-10-15 13:34:20-04	\N
244660983 	FLEUR	2014-09-10 14:08:07-04	\N
244660984 	IRIS	2013-02-18 18:30:53-05	\N
244666000 	ARKLOW BROOK	2016-08-08 17:49:06-04	\N
244667000 	PHOCA	2016-04-26 11:28:47-04	\N
244669000 	GO-5 ORA ET LABORA	2013-04-22 01:38:38-04	\N
244670001 	MILA	2012-03-16 08:55:33-04	\N
244670002 	VOJA	2017-05-17 18:04:45-04	\N
244670011 	MOBIL SERVICE 39	2013-01-02 15:23:46-05	\N
244670013 	JOHANNA ENGELINA	2016-05-18 17:38:20-04	\N
244670015 	NIVOMA	2015-01-01 09:31:57-05	\N
244670016 	TYCHA	2018-05-30 20:32:23-04	\N
244670020 	VROUWE FRIDACORNELIA	2019-02-23 18:01:39-05	\N
244670022 	NOORDKAAP	2017-05-22 02:50:47-04	\N
244670026 	EN AVANT 12	2017-09-14 11:11:14-04	\N
244670027 	PANDA	2016-11-30 08:26:04-05	\N
244670030 	ARUBA	2015-11-06 06:02:59-05	\N
244670031 	BONAIRE	2016-11-18 11:32:55-05	\N
244670035 	SANDRA	2016-12-29 19:29:18-05	\N
244670040 	VISIOEN	2012-10-30 03:54:57-04	\N
244670047 	MEDEDINGER	2012-04-02 02:27:04-04	\N
244670048 	ZEEMEEUW	2015-10-25 05:42:43-04	\N
244670057 	VRIENDSCHAP	2018-08-01 05:56:45-04	\N
244670058 	ANNA TRIJNTJE	2018-01-03 15:05:05-05	\N
244670059 	CALCIT 3	2017-12-21 10:49:53-05	\N
244670060 	NIRVANA	2017-03-18 19:59:59-04	\N
244670062 	ATLANTIC POWER	2017-01-28 17:02:20-05	\N
244670063 	ATLANTIC PRIDE	2012-10-06 09:46:04-04	\N
244670064 	ZWARTE HAAN	2015-09-11 22:20:38-04	\N
244670068 	MANOUK	2017-10-22 12:28:43-04	\N
244670072 	REVENU	2013-07-02 16:31:27-04	\N
244670073 	SAKURA	2016-04-01 08:56:54-04	\N
244670074 	AQUANAUTIC	2015-03-12 12:44:02-04	\N
244670077 	ATLANTIC PIONEER	2012-04-10 22:04:48-04	\N
244670078 	SAN VICENTE EXPRESS	2017-04-09 11:01:34-04	\N
244670081 	DAAN	2014-03-12 01:13:22-04	\N
244670084 	CALENDULA 12	2015-07-19 16:04:30-04	\N
244670086 	CARDIUM	2018-11-30 02:37:02-05	\N
244670088 	DECOIL UNIVERSAL	2013-07-02 07:05:00-04	\N
244670089 	SPES SALUTIS	2017-07-09 02:03:33-04	\N
244670094 	DINERO	2019-01-30 09:47:42-05	\N
244670095 	ATLANTIC SUPPLIER	2016-10-03 19:24:27-04	\N
244670097 	ARIANE	2012-11-11 18:01:21-05	\N
244670098 	MAXIMA	2017-12-20 16:05:12-05	\N
244670101 	LAURENTIEN	2017-03-18 12:22:49-04	\N
244670102 	ELOISE	2017-11-12 22:50:24-05	\N
244670103 	LEONORE	2017-10-22 04:16:17-04	\N
244670104 	FAR YSKAR	2017-11-17 02:53:43-05	\N
244670106 	HYDROVAC1	2016-01-13 19:37:10-05	\N
244670107 	HYDROVAC 3	2014-11-05 06:52:50-05	\N
244670109 	HYDROVAC 5	2016-08-05 13:56:28-04	\N
244670111 	CRANEBARGE 1	2015-02-01 00:35:14-05	\N
244670112 	CRANE BARGE 2	2015-12-06 10:29:43-05	\N
244670113 	CRANE BARGE 3	2014-06-06 03:42:58-04	\N
244670114 	CRANE BARGE 4	2013-03-13 09:12:38-04	\N
244670122 	ISABELLA	2016-12-20 06:54:59-05	\N
244670124 	MARGRIET	2012-01-17 23:51:36-05	\N
244670127 	LYDIA	2017-06-09 06:17:52-04	\N
244670137 	EENSGEZINDHEID	2012-09-27 06:49:01-04	\N
244670138 	NISTRU	2014-12-29 11:45:10-05	\N
244670139 	PANTA RHEI	2014-03-09 07:46:10-04	\N
244670140 	MANU FORTI	2017-07-09 22:00:26-04	\N
244670143 	VERTROUWEN	2012-06-18 06:09:51-04	\N
244670147 	CORNELIS	2012-10-17 18:12:18-04	\N
244670154 	VOLENTA	2014-09-04 03:51:22-04	\N
244670156 	TRISULCA	2014-05-10 07:00:08-04	\N
244670157 	ALISMA	2014-11-10 00:52:12-05	\N
244670158 	RISICO	2014-03-08 07:10:52-05	\N
244670159 	FLAVA	2013-11-19 04:28:49-05	\N
244670161 	OLIESERVICE	2012-11-03 13:57:08-04	\N
244670162 	OLIESERVICE 1	2018-10-01 20:32:45-04	\N
244670163 	OLIESERVICE 2	2018-08-04 13:09:43-04	\N
244670165 	OLIESERVICE 4	2016-10-31 20:35:04-04	\N
244670168 	ZWAANTJE 1	2014-01-16 06:17:14-05	\N
244670169 	ZWAANTJE 2	2017-09-17 18:29:12-04	\N
244670170 	ZWAANTJE 3	2013-12-22 04:40:56-05	\N
244670171 	VIGO	2017-05-31 00:03:19-04	\N
244670173 	ZWAANTJE 5	2015-04-18 08:11:05-04	\N
244670174 	ZWAANTJE 6	2017-06-13 15:22:48-04	\N
244670178 	ZWAANTJE 10	2018-05-09 23:33:54-04	\N
244670181 	SERVICE 3	2013-07-25 20:47:53-04	\N
244670182 	SERVICE 4	2018-04-04 18:24:07-04	\N
244670183 	SERVICE 5	2018-03-30 21:13:01-04	\N
244670185 	SUDWESTER	2012-03-24 10:21:55-04	\N
244670187 	SPES	2014-07-21 05:29:46-04	\N
244670190 	JOBSKADE	2016-11-11 18:51:24-05	\N
244670191 	ST ANTONIUS	2013-06-11 18:44:04-04	\N
244670193 	VICTORIA	2013-08-21 07:08:15-04	\N
244670194 	LORENA	2018-05-11 11:00:47-04	\N
244670197 	LAUMA	2013-06-05 00:32:34-04	\N
244670201 	QUO VADIS	2014-03-02 09:55:40-05	\N
244670209 	COMPONIST	2013-07-19 16:21:51-04	\N
244670210 	COMPROMIS	2016-09-03 21:29:58-04	\N
244670213 	SCALDIA	2012-03-20 15:46:58-04	\N
244670214 	SCHULPEGAT	2015-11-15 05:26:08-05	\N
244670217 	ANIMO	2016-12-12 05:00:40-05	\N
244670218 	REX RHENI	2016-02-22 00:46:04-05	\N
244670219 	SPERWER	2014-10-06 05:05:27-04	\N
244670222 	ROMERA	2018-09-22 09:55:10-04	\N
244670225 	MALLEJAN	2017-05-20 18:03:49-04	\N
244670227 	PRIMOS	2014-03-27 13:12:41-04	\N
244670228 	RES NOVA	2017-11-08 03:57:58-05	\N
244670229 	MASABI	2013-10-12 18:18:41-04	\N
244670230 	WENDY CHANTAL	2014-12-08 13:19:40-05	\N
244670231 	NELLY V	2013-04-17 19:03:46-04	\N
244670234 	TWEE GEBROEDERS	2013-09-20 18:24:38-04	\N
244670235 	PARKKADE	2016-01-06 17:16:05-05	\N
244670278 	TNB 2	2014-09-10 15:36:07-04	\N
244670280 	GULF ESKIMO	2013-12-03 05:54:47-05	\N
244670282 	ARNE	2017-03-13 17:53:24-04	\N
244670290 	SCHELDE	2013-03-09 16:03:38-05	\N
244670291 	EEDE	2017-11-24 23:25:25-05	\N
244670292 	GULF MAR	2014-08-20 03:38:34-04	\N
244670293 	TNB PRIDE	2018-05-20 17:54:56-04	\N
244670294 	GULF SIGMA	2014-03-23 17:03:59-04	\N
244670295 	ROMEE	2012-10-11 22:41:22-04	\N
244670296 	ORION	2017-04-16 02:18:44-04	\N
244670297 	LAVORO	2014-07-10 21:53:02-04	\N
244670299 	KILPLUS	2018-02-02 23:47:35-05	\N
244670300 	NOORDPLUS	2017-07-22 18:19:05-04	\N
244670301 	SPAARNEPLUS	2015-01-20 20:02:57-05	\N
244670302 	SCHELDEPLUS	2016-05-17 19:23:18-04	\N
244670304 	DRECHTPLUS	2016-09-10 04:46:40-04	\N
244670307 	ZAANPLUS	2014-09-24 22:01:57-04	\N
244670312 	LUANA	2018-06-16 11:55:06-04	\N
244670313 	TONNY	2015-06-09 02:25:24-04	\N
244670319 	ANNA MARIA AGNES	2013-03-13 18:55:19-04	\N
244670322 	DONGEMOND	2012-09-25 05:24:36-04	\N
244670326 	TS31 INTERNOS	2013-10-22 06:26:05-04	\N
244670332 	LIS	2018-07-24 12:48:57-04	\N
244670334 	THUVINE	2016-08-23 11:29:09-04	\N
244670338 	VALK	2017-11-29 22:58:01-05	\N
244670340 	VIPER	2017-10-13 05:59:53-04	\N
244670341 	BORIS	2016-12-15 00:44:47-05	\N
244670342 	OCTOPODA	2012-06-19 11:08:52-04	\N
244670345 	CHRISTIAAN B	2013-10-12 23:22:10-04	\N
244670346 	ZWARTEWATER	2014-11-23 10:21:55-05	\N
244670349 	POSTSLOOT	2013-09-03 04:29:19-04	\N
244670350 	REGINA ANDREA	2012-03-24 07:50:52-04	\N
244670351 	AMAZONE	2013-01-07 17:47:04-05	\N
244670355 	BORNEO	2012-08-23 05:23:56-04	\N
244670357 	VANORA	2015-01-07 23:23:39-05	\N
244670358 	MON DESIR	2014-03-22 02:38:35-04	\N
244670361 	THUREDREGT	2015-07-22 19:54:20-04	\N
244670362 	UQ 15 CAROLINE ELISE	2017-01-03 11:55:18-05	\N
244670369 	BONANZA II	2016-02-15 12:15:22-05	\N
244670379 	ARCHIMEDES	2017-09-23 22:41:00-04	\N
244670382 	MARIE-SOPHIE	2013-08-17 11:02:45-04	\N
244670384 	MIJN VERLANGEN	2016-04-21 15:31:33-04	\N
244670385 	SHADOW	2016-05-13 03:49:46-04	\N
244670389 	SAILING HOME	2018-01-28 01:17:26-05	\N
244670392 	LORELEY	2012-02-10 10:58:37-05	\N
244670394 	DA-MAR	2016-02-29 04:50:02-05	\N
244670395 	ONDERNEMING	2016-10-02 01:29:14-04	\N
244670396 	MARAVILLA	2014-09-28 11:57:19-04	\N
244670398 	GREVELINGEN	2014-10-28 12:03:31-04	\N
244670399 	DORUS	2014-04-28 18:36:06-04	\N
244670401 	PONTONNIER	2015-09-20 09:39:33-04	\N
244670404 	CHICAGO	2016-08-31 13:12:09-04	\N
244670408 	MATRICARIA	2014-07-09 06:33:18-04	\N
244670411 	DEI VOLUNTAS	2015-09-07 06:37:54-04	\N
244670412 	SONJA	2012-01-27 18:05:20-05	\N
244670413 	DB KYLE	2015-07-04 20:52:16-04	\N
244670414 	ANTONIA	2017-01-15 12:38:20-05	\N
244670415 	RIGOLETTO	2015-03-24 01:15:00-04	\N
244670420 	HOOP DOET LEVEN	2013-08-24 19:34:31-04	\N
244670421 	MISSION	2016-08-21 01:27:24-04	\N
244670431 	CITO	2017-04-22 16:23:06-04	\N
244670433 	ALMIRA	2012-08-14 11:51:36-04	\N
244670435 	KRABBENKREEK	2017-12-04 04:47:49-05	\N
244670439 	TAKANA	2018-07-28 13:25:01-04	\N
244670443 	INNOVATION	2018-06-11 13:42:16-04	\N
244670444 	NOORDEREILAND	2016-09-23 15:38:33-04	\N
244670448 	EN AVANT 4	2018-09-25 04:17:04-04	\N
244670451 	DUTCH PRIDE	2016-08-10 18:08:04-04	\N
244670452 	CATHY	2012-08-08 20:06:19-04	\N
244670453 	ANTIO	2014-07-31 20:38:21-04	\N
244670454 	IRIS	2012-05-04 05:36:40-04	\N
244670457 	DEO VOLENTE	2014-05-11 04:53:49-04	\N
244670459 	TOVA	2013-04-11 01:03:15-04	\N
244670460 	COMPAAN	2013-11-24 20:04:53-05	\N
244670466 	DINARA	2015-08-06 04:33:20-04	\N
244670475 	CONTARGO 1	2018-03-27 17:01:02-04	\N
244670478 	JACOBUS SR	2017-06-06 03:09:39-04	\N
244670487 	INSPE	2013-01-04 16:17:21-05	\N
244670488 	DAGERAAD	2012-04-10 11:48:34-04	\N
244670489 	INSPE 2	2017-01-27 01:25:35-05	\N
244670491 	CABANA	2013-11-18 09:13:10-05	\N
244670495 	JUSTIN	2016-09-18 03:21:18-04	\N
244670496 	LINQUENDA	2012-10-06 12:42:18-04	\N
244670497 	BRAVA	2016-01-06 03:22:31-05	\N
244670500 	METEOOR	2016-06-25 00:42:12-04	\N
244670501 	COMPANY	2017-10-30 14:51:17-04	\N
244670507 	WESU	2016-03-02 18:13:09-05	\N
244670511 	ZUIDWAL	2013-01-29 11:05:43-05	\N
244670515 	ROXY	2017-03-08 23:21:57-05	\N
244670518 	ZEEHOND	2013-03-21 14:51:19-04	\N
244670520 	ZEETIJGER	2018-08-13 05:23:16-04	\N
244670521 	RENATA	2013-04-08 19:07:40-04	\N
244670522 	DESEJO	2016-09-24 19:33:30-04	\N
244670528 	REMINKE	2015-05-17 08:49:48-04	\N
244670529 	BRANDING	2013-03-01 22:04:01-05	\N
244670532 	DEPENDANT	2014-05-26 06:43:48-04	\N
244670533 	MERWELAND	2013-08-18 09:15:54-04	\N
244670534 	ESSAI	2013-03-18 02:16:22-04	\N
244670536 	EMELI	2018-05-29 12:19:31-04	\N
244670537 	DE ACHT	2012-10-09 05:28:06-04	\N
244670541 	CURA NOSTRA	2018-03-09 15:50:25-05	\N
244670545 	SILEX	2017-12-09 21:11:49-05	\N
244670546 	ANNIE	2016-07-21 19:14:49-04	\N
244670557 	RHEINE	2018-06-04 07:18:39-04	\N
244670560 	ANNA	2013-08-04 23:41:07-04	\N
244670563 	ALOHA	2014-09-06 12:10:52-04	\N
244670564 	QUESTE	2014-07-22 04:25:38-04	\N
244670565 	EDITH	2016-03-28 11:09:32-04	\N
244670566 	ATLANTIC ENERGY	2013-08-14 07:22:12-04	\N
244670572 	TAMARA	2018-10-12 03:55:10-04	\N
244670573 	KVB MODENA	2017-10-07 20:39:52-04	\N
244670579 	MENRANDA	2013-12-28 16:29:15-05	\N
244670581 	GRATIAS	2016-03-25 21:50:46-04	\N
244670583 	WINDSTAR	2017-10-18 01:54:41-04	\N
244670588 	OCEAN	2018-09-14 17:14:04-04	\N
244670590 	CATHELI	2014-12-27 19:47:07-05	\N
244670591 	CATHALIJN	2015-02-09 15:22:07-05	\N
244670599 	ADRIANA	2015-03-22 09:58:51-04	\N
244670602 	ROLETA	2017-06-27 23:55:08-04	\N
244670604 	CRESCENDO	2013-10-18 20:25:23-04	\N
244670605 	EENDRACHT	2014-12-18 08:45:20-05	\N
244670608 	RIO 1	2013-08-18 13:42:21-04	\N
244670609 	MARGARET ANN	2016-05-28 19:03:17-04	\N
244670612 	NADUAH	2014-01-23 19:52:09-05	\N
244670638 	BOSTON	2018-09-05 04:49:52-04	\N
244670647 	DE TWEE	2016-04-16 07:08:06-04	\N
244670650 	DE ZES	2012-09-10 15:50:55-04	\N
244670652 	DE NEGEN	2012-02-05 20:24:52-05	\N
244670653 	DE TWAALF	2012-12-08 18:12:47-05	\N
244670654 	RES>NOVA	2017-02-09 03:35:16-05	\N
244670658 	NOVAMENTE	2016-05-26 07:45:04-04	\N
244670664 	BUIZERD	2015-01-30 12:24:08-05	\N
244670665 	QUDAJO	2015-03-31 19:47:06-04	\N
244670666 	VERONIEKE	2014-01-08 04:56:04-05	\N
244670667 	KANTARA	2017-09-14 08:36:04-04	\N
244670671 	MAASSTROOM 7	2015-07-04 17:55:03-04	\N
244670672 	CONFIANCE	2012-10-13 22:55:20-04	\N
244670676 	VERA	2012-05-14 01:14:42-04	\N
244670681 	GOUWZEE	2018-01-12 09:00:28-05	\N
244670683 	DE RODE HAAN	2017-01-15 17:21:26-05	\N
244670692 	RODEUR	2016-08-15 10:46:51-04	\N
244670697 	TOLERANTIE	2018-03-04 23:12:02-05	\N
244670699 	PRINS WILLEM ALEX.	2018-02-16 05:57:50-05	\N
244670709 	LEENDERT G	2016-07-13 00:26:47-04	\N
244670710 	SPERANZA	2016-07-30 08:28:21-04	\N
244670717 	RIO-4	2014-05-17 08:28:35-04	\N
244670725 	STAVORDIA	2014-09-14 10:36:34-04	\N
244670733 	OMEGA	2016-07-25 19:34:01-04	\N
244670737 	DEN ONTHAESTINGH	2012-11-14 21:05:49-05	\N
244670741 	ISTOROMI	2017-11-02 00:10:48-04	\N
244670742 	HENCOR	2016-03-28 23:42:50-04	\N
244670748 	TWIRRING	2016-08-13 21:51:31-04	\N
244670752 	LES VOISINS	2018-09-17 02:25:59-04	\N
244670754 	KLAARTJE	2018-05-10 14:51:14-04	\N
244670755 	INVOTIS VI	2014-01-23 19:55:11-05	\N
244670756 	JOHANNES SR	2018-05-25 11:30:44-04	\N
244670766 	IJVEER 60	2013-09-30 12:30:02-04	\N
244670768 	GENTLE	2012-02-15 19:57:38-05	\N
244670773 	PHILOS (KVB)	2016-07-17 03:14:14-04	\N
244670775 	ANTEROS	2015-10-20 14:28:32-04	\N
244670779 	ARENA	2013-02-21 17:05:21-05	\N
244670780 	VEERHAVEN IV	2017-04-20 07:55:31-04	\N
244670789 	IDUNA	2018-08-06 14:51:55-04	\N
244670797 	COLOMBUS	2017-05-21 11:20:36-04	\N
244670799 	CHRISTINA	2015-01-01 16:20:45-05	\N
244670800 	CYCLOOP	2016-03-11 07:54:54-05	\N
244670802 	XENA	2016-01-09 08:45:18-05	\N
244670803 	SAWADI	2013-04-21 00:55:42-04	\N
244670805 	SPERANZA	2013-11-21 02:34:24-05	\N
244670809 	ATLANTIC PARTNER	2017-12-01 10:20:51-05	\N
244670820 	MAASPOORT	2014-07-16 13:58:04-04	\N
244670831 	FAVORIET	2017-02-14 04:43:28-05	\N
244670832 	BEVERWAARD	2012-06-20 18:02:30-04	\N
244670833 	CADANZ	2018-10-30 13:02:25-04	\N
244670836 	KAPAL	2018-11-22 22:32:21-05	\N
244670837 	WR81 ALBERT SIMON	2016-12-05 17:40:54-05	\N
244670842 	LABORIEUX	2012-11-16 04:12:09-05	\N
244670843 	ENGELINA	2014-12-07 23:46:00-05	\N
244670845 	JENNIE	2017-11-02 01:00:12-04	\N
244670846 	RIGEL	2014-10-04 11:47:25-04	\N
244670860 	STOLT KOLN	2012-01-12 01:21:46-05	\N
244670865 	CONVENANT	2016-03-04 13:12:16-05	\N
244670871 	HENDRIK	2016-01-14 10:35:48-05	\N
244670872 	ZUIDERZEE	2015-01-04 14:18:49-05	\N
244670874 	ADRIANA MARIA	2012-10-11 12:44:50-04	\N
244670876 	TESTUDO	2015-08-30 12:22:47-04	\N
244670877 	AFHANKELIJK	2016-11-26 02:08:58-05	\N
244670881 	LIAN	2017-03-29 15:26:28-04	\N
244670882 	EVITA	2019-01-07 11:31:22-05	\N
244670909 	SUBITO	2017-12-15 05:29:59-05	\N
244670914 	NAARDEN	2012-06-26 10:49:47-04	\N
244670915 	SAGRADA	2016-12-20 10:29:42-05	\N
244670918 	ATLAS	2018-06-17 01:28:26-04	\N
244670923 	DIVA	2013-10-01 19:15:06-04	\N
244670926 	NOOIT VOLMAECKT	2013-01-27 19:31:23-05	\N
244670927 	ODONATA	2014-04-16 16:53:42-04	\N
244670932 	BARCELONA	2016-04-10 11:34:20-04	\N
244670934 	SIAL	2014-04-24 19:06:48-04	\N
244670935 	DAYBREAK	2014-06-13 23:12:01-04	\N
244670946 	VINCITA	2016-10-03 11:12:36-04	\N
244670958 	PALANDA	2016-06-13 06:11:39-04	\N
244670960 	POSEIDON	2013-09-21 03:11:05-04	\N
244670961 	PASSAAT	2013-10-31 03:15:37-04	\N
244670963 	ANTHONETTA	2018-11-12 15:15:15-05	\N
244670964 	ANIMO	2013-10-21 15:57:50-04	\N
244670966 	SURVIVOR	2018-09-27 22:35:26-04	\N
244670970 	SOLENT	2018-11-17 11:57:24-05	\N
244670973 	BANZYSTAD	2012-10-17 00:12:40-04	\N
244670975 	FIDATO	2017-12-01 21:38:27-05	\N
244670978 	DAMIANO	2013-01-09 22:21:21-05	\N
244670985 	LA.FURKA	2017-12-25 05:28:50-05	\N
244670987 	JOLIEN	2014-11-08 16:20:02-05	\N
244670989 	ALINA	2016-02-18 16:55:50-05	\N
244670990 	OPTIMIST	2018-03-28 10:28:17-04	\N
244670995 	CASPARA_	2017-07-21 12:14:12-04	\N
244670996 	WATERBOOT 15	2018-09-21 14:55:45-04	\N
244670997 	WATERBOOT10	2014-11-28 18:31:08-05	\N
244670998 	WATERBOOT 2	2014-10-21 23:10:55-04	\N
244670999 	WATERBOOT 1	2013-10-16 08:27:03-04	\N
244672000 	KW45	2016-05-23 02:43:34-04	\N
244674000 	MARIETJE DEBORAH	2017-10-11 20:55:10-04	\N
244675000 	LADY HELENE	2017-07-11 07:46:25-04	\N
244678000 	THUN GARLAND	2015-09-07 06:09:02-04	\N
244679000 	PEGASUS	2015-10-13 01:27:37-04	\N
244686000 	ZK17 JOHANNES DIRK	2014-11-24 02:07:30-05	\N
244690001 	WATERBOOT5	2012-05-27 06:24:50-04	\N
244690002 	WATERBOOT 12	2012-11-17 23:00:29-05	\N
244690009 	ARJA	2013-10-12 12:48:07-04	\N
244690021 	SILOAM	2013-11-06 07:27:02-05	\N
244690026 	DISTINTA	2013-05-13 05:54:42-04	\N
244690027 	CALYPSO	2012-06-01 01:16:57-04	\N
244690030 	TENDER	2014-08-20 17:26:56-04	\N
244690033 	RIJNVALLEI	2014-05-30 09:17:23-04	\N
244690045 	RAINBOW	2012-10-11 01:48:36-04	\N
244690050 	STEMARDI	2012-11-11 13:21:25-05	\N
244690052 	METROPOLIS	2018-11-30 22:15:17-05	\N
244690053 	FITARIEK	2018-03-31 19:13:53-04	\N
244690067 	HAVEMO	2012-02-12 03:37:28-05	\N
244690071 	IMPRESA	2014-08-13 19:37:22-04	\N
244690074 	TEMPO	2018-06-11 07:57:07-04	\N
244690076 	INCEPTO	2018-04-12 12:59:28-04	\N
244690078 	OLYMPIC	2018-05-30 02:35:51-04	\N
244690103 	NEPTUNUS	2013-03-12 16:09:14-04	\N
244690104 	THILANT	2013-11-28 20:32:44-05	\N
244690106 	COBY	2012-11-12 20:32:09-05	\N
244690108 	DRIFT	2014-10-09 12:46:09-04	\N
244690110 	INCA	2016-09-26 18:13:23-04	\N
244690112 	ESTERO	2017-06-24 06:12:42-04	\N
244690116 	AIRSET	2012-07-26 12:07:15-04	\N
244690118 	ADELAAR	2017-12-31 03:40:44-05	\N
244690125 	HENDRIK-3	2012-02-08 10:28:22-05	\N
244690129 	UNICUM	2014-01-20 20:09:40-05	\N
244690133 	DIAFORA	2013-09-27 04:31:38-04	\N
244690135 	VERIDISQUO	2014-10-27 00:42:07-04	\N
244690139 	PIKKOLO	2017-07-26 21:18:58-04	\N
244690140 	JACOBUS	2012-03-07 17:07:46-05	\N
244690144 	HENDRIKA	2018-10-05 13:36:29-04	\N
244690150 	HILDAMAR	2013-02-23 08:35:56-05	\N
244690154 	FLORA	2017-08-19 08:14:53-04	\N
244690155 	FORENS	2014-06-02 11:52:46-04	\N
244690164 	CONFIANT	2018-03-02 00:16:00-05	\N
244690171 	LIBERTE	2013-12-23 22:00:29-05	\N
244690176 	JAMPIE	2013-03-25 11:45:08-04	\N
244690180 	BREMARE	2017-07-05 21:43:08-04	\N
244690183 	VITALIS	2017-12-01 03:42:19-05	\N
244690186 	PA4 ATHENA	2014-07-20 09:19:50-04	\N
244690201 	ZEESTER	2016-08-06 21:22:08-04	\N
244690202 	CONFIDENTIA	2018-03-26 23:39:31-04	\N
244690203 	JACOBA	2014-03-23 03:35:48-04	\N
244690212 	DE AMELAND	2018-08-21 14:41:22-04	\N
244690213 	ARISTO	2016-04-27 22:06:04-04	\N
244690219 	HARMONIE	2016-07-14 08:05:40-04	\N
244690223 	ADMIRAL	2013-11-07 19:02:59-05	\N
244690224 	VERTROUWEN	2017-01-09 00:01:33-05	\N
244690234 	PEGASUS	2013-10-17 23:06:04-04	\N
244690236 	BARCO	2018-02-05 20:27:28-05	\N
244690244 	GERMATON	2016-01-08 04:45:06-05	\N
244690246 	JOHANNES	2017-06-16 05:02:53-04	\N
244690247 	CASA-NOVA	2015-07-15 02:57:11-04	\N
244690292 	FASALY	2017-10-26 19:04:20-04	\N
244690296 	MOVER 3	2018-09-22 20:54:45-04	\N
244690298 	AQUAFORTEM	2014-03-28 04:06:16-04	\N
244690299 	KARIN	2016-02-12 14:37:10-05	\N
244690300 	ICARUS	2014-07-19 13:19:02-04	\N
244690302 	ERTEPELLER	2017-12-18 01:07:22-05	\N
244690316 	HOLLANDIA	2018-03-10 14:54:23-05	\N
244690318 	RIVA	2017-01-30 18:51:22-05	\N
244690328 	ANTONIE C	2014-01-18 22:03:17-05	\N
244690329 	WEGA	2014-10-03 09:27:35-04	\N
244690332 	TAMARIVA	2017-01-11 15:12:45-05	\N
244690333 	RENEE	2016-01-15 17:09:07-05	\N
244690336 	EENDRACHT	2015-03-20 07:26:47-04	\N
244690343 	MARLIJN	2014-02-18 13:22:51-05	\N
244690345 	HENMA	2012-06-14 05:04:58-04	\N
244690347 	PRINCESS H	2016-05-26 00:31:29-04	\N
244690350 	RESIDENCE	2014-07-27 07:33:22-04	\N
244690352 	AMBITIE	2015-03-09 06:45:34-04	\N
244690358 	JEANNE	2015-05-29 18:26:50-04	\N
244690360 	WADDENZEE	2014-07-08 12:15:34-04	\N
244690363 	DUTCH PETROL	2013-06-06 13:44:29-04	\N
244690365 	NICKY	2017-03-09 15:53:16-05	\N
244690366 	HELENA	2012-06-18 20:05:06-04	\N
244690375 	RICKY-M	2018-03-31 12:13:20-04	\N
244690395 	CURATA	2016-03-20 16:02:44-04	\N
244690396 	POSSIDI	2018-08-06 11:44:05-04	\N
244690399 	MARGARETHA	2015-01-05 08:12:15-05	\N
244690403 	PANNENKOEKENBOOT 1	2015-05-20 02:08:49-04	\N
244690405 	BRANDARIS	2015-06-11 20:19:30-04	\N
244690407 	AZOLLA	2014-12-21 23:59:13-05	\N
244690408 	MAASPLUS	2013-10-12 09:10:48-04	\N
244690409 	CALANDPLUS	2014-04-07 03:42:35-04	\N
244690410 	RIJNPLUS	2017-10-29 05:45:20-04	\N
244690411 	SCHIEPLUS	2015-12-17 13:00:20-05	\N
244690419 	TETJE APOLONIA	2012-04-17 01:02:11-04	\N
244690429 	MUTATIE	2017-01-12 01:20:40-05	\N
244690433 	HELIODOR	2018-03-20 09:43:12-04	\N
244690435 	ANNABEL	2016-10-25 18:01:53-04	\N
244690436 	TESCO 8	2013-10-08 22:35:52-04	\N
244690437 	SPERO	2016-12-26 09:38:11-05	\N
244690441 	NAOMI	2012-04-19 18:31:36-04	\N
244690442 	KVB GER-JAN	2012-05-04 02:20:51-04	\N
244690451 	VEERHAVEN XI	2013-01-23 05:23:40-05	\N
244690453 	JACOB	2013-03-22 01:13:06-04	\N
244690454 	REGGEPLUS	2013-09-16 20:31:29-04	\N
244690455 	RUBICON	2013-03-06 12:28:47-05	\N
244690458 	BEOTANK 2	2014-05-01 02:24:12-04	\N
244690462 	NOMADISCH 1+2	2012-09-26 16:45:32-04	\N
244690470 	FEROX	2018-09-25 04:34:26-04	\N
244690471 	RAM	2015-05-12 06:13:58-04	\N
244690474 	CORINA	2018-09-20 16:35:22-04	\N
244690475 	HENDRIK SR	2015-03-26 00:35:57-04	\N
244690480 	LENTE	2017-01-30 18:46:20-05	\N
244690482 	VIRAYA	2018-11-05 11:44:31-05	\N
244690484 	CALCIT 11	2015-04-06 21:38:04-04	\N
244690485 	DIFF	2015-08-03 07:11:01-04	\N
244690490 	KONINGIN JULIANA	2012-02-05 00:05:57-05	\N
244690492 	BRANTA	2015-11-27 03:52:18-05	\N
244690497 	JOHANNA ADRIANA	2018-02-05 17:15:43-05	\N
244690501 	TERTIUS	2015-06-18 08:43:22-04	\N
244690517 	BORAX	2013-06-28 22:28:24-04	\N
244690521 	REZOVAR	2018-08-03 19:29:56-04	\N
244690525 	ODORATA	2013-07-25 16:55:15-04	\N
244690526 	NIL DESPERANDUM	2013-10-31 13:11:19-04	\N
244690528 	TELSTAR	2012-02-25 14:32:23-05	\N
244690529 	TERRA NOVA	2015-04-04 05:52:10-04	\N
244690531 	WILLEM-D	2013-03-20 11:17:29-04	\N
244690534 	KVB LANY	2017-06-27 22:42:54-04	\N
244690535 	SAFINI	2018-06-03 10:30:24-04	\N
244690540 	DIKKY	2016-08-08 20:48:55-04	\N
244690544 	ZEBULON	2015-02-27 11:09:56-05	\N
244690563 	CONQUEST	2015-05-10 14:17:42-04	\N
244690564 	VIGILATE	2018-08-08 19:37:06-04	\N
244690565 	MOTORPONT 2	2013-04-07 23:43:25-04	\N
244690571 	SPERATE	2014-12-04 11:04:28-05	\N
244690572 	PAMPUS	2013-06-17 20:15:23-04	\N
244690576 	JANNY-D	2016-12-13 02:58:11-05	\N
244690579 	REGALO	2015-11-21 01:01:31-05	\N
244690580 	EMMA	2013-12-17 10:14:04-05	\N
244690585 	CHRISTIAAN C	2014-02-22 15:10:47-05	\N
244690587 	CATHARINA	2018-04-09 03:39:03-04	\N
244690595 	HOTEL	2013-04-01 12:54:33-04	\N
244690598 	ENDEAVOUR	2014-05-09 12:04:29-04	\N
244690600 	FRISIAN QUEEN	2019-01-23 03:24:55-05	\N
244690612 	SMARAGD1	2013-06-22 19:23:41-04	\N
244690622 	CELTIC	2015-07-22 19:25:07-04	\N
244690632 	WILLY N	2018-02-09 16:47:08-05	\N
244690635 	WATERLAND	2014-08-04 12:49:00-04	\N
244690638 	MARINA	2014-06-11 14:20:19-04	\N
244690643 	LINDA	2012-04-19 17:27:56-04	\N
244690645 	TESSA-B	2013-04-10 18:22:32-04	\N
244690646 	VIOS	2018-04-15 13:27:44-04	\N
244690650 	SAILING HOME	2013-11-18 20:10:27-05	\N
244690652 	ARIZONA	2015-01-02 07:33:20-05	\N
244690653 	AD	2017-09-29 16:49:06-04	\N
244690658 	RODORT 7	2018-02-23 21:54:52-05	\N
244690659 	RODORT8	2012-02-15 08:05:03-05	\N
244690660 	CEDERT	2018-10-12 09:15:42-04	\N
244690665 	MARAVILLA	2014-11-10 11:19:19-05	\N
244690666 	BRABANT	2012-10-07 23:28:06-04	\N
244690672 	CHRISTINA	2018-09-01 07:07:20-04	\N
244690676 	DENICK II	2019-01-17 04:07:12-05	\N
244690683 	LIEVE	2018-06-11 15:30:56-04	\N
244690688 	SEVILLA	2012-01-23 15:55:54-05	\N
244690690 	ELLA	2016-12-26 23:38:33-05	\N
244690695 	ACHILLES	2017-10-04 19:32:38-04	\N
244690705 	HELENA	2015-01-13 11:45:44-05	\N
244690707 	CON AMORE	2017-09-19 05:19:46-04	\N
244690708 	BRIZO	2018-02-28 07:53:56-05	\N
244690712 	GAUDI	2017-11-08 13:47:48-05	\N
244690719 	ONDERNEMING	2016-07-17 07:25:57-04	\N
244690729 	MI BARCO	2013-07-17 04:33:14-04	\N
244690731 	AVELINGEN	2013-04-22 10:27:43-04	\N
244690747 	BERNHARD SR	2013-03-13 01:17:05-04	\N
244690748 	VIOS	2015-10-16 18:53:50-04	\N
244690750 	LEENDERT	2018-01-31 11:20:44-05	\N
244690752 	THUN GREENWICH	2014-06-04 12:35:56-04	\N
244690765 	RIVAL	2012-04-06 00:19:17-04	\N
244690771 	JAMAICA	2014-05-28 12:47:49-04	\N
244690773 	ANIMO	2016-08-31 23:37:47-04	\N
244690778 	LUCULLUS	2012-12-21 02:34:38-05	\N
244690781 	WAPEN VAN AMSTERDAM	2014-07-09 08:44:15-04	\N
244690783 	SPICA	2014-07-06 11:45:22-04	\N
244690784 	TRYPA	2015-07-02 19:28:57-04	\N
244690787 	LA PAREJA	2012-06-10 05:28:53-04	\N
244690793 	FOREL	2015-10-05 11:55:22-04	\N
244690811 	MI VIDA	2017-02-17 00:24:55-05	\N
244690812 	GRIETJE	2013-01-15 22:57:53-05	\N
244690817 	FIRST WAVE	2017-06-21 23:33:48-04	\N
244690825 	MAI PENSATO	2012-11-22 23:14:00-05	\N
244690826 	ALJA	2015-02-28 01:47:35-05	\N
244690827 	TADORNA	2018-07-10 17:24:47-04	\N
244690836 	MONICO	2016-05-15 06:15:24-04	\N
244690837 	SALAMANDER	2018-04-09 20:18:26-04	\N
244690840 	JO-EL III	2013-10-28 16:35:03-04	\N
244690843 	DANA	2012-12-12 00:14:42-05	\N
244690847 	DIANE	2012-02-02 05:35:42-05	\N
244690849 	PROGRESS	2014-09-07 02:51:07-04	\N
244690851 	AN - DY	2013-12-19 20:42:16-05	\N
244690853 	SPES	2015-08-18 20:45:56-04	\N
244690856 	PROTECTION	2013-10-15 07:53:40-04	\N
244690886 	GRUNO 3	2014-01-22 20:06:27-05	\N
244690887 	CHRISTINA	2014-05-23 07:39:54-04	\N
244690893 	ZUIDERDIEP	2015-01-05 18:13:32-05	\N
244690898 	OCEANDIVA FUTURA	2015-10-06 14:08:13-04	\N
244690899 	SLEUTELSTAD	2013-11-11 08:13:05-05	\N
244690901 	VOYAGE	2013-10-16 16:56:02-04	\N
244690902 	LUDOVICA	2015-05-04 02:06:17-04	\N
244690903 	NAVITAS	2018-01-21 18:47:17-05	\N
244690904 	DESIRE	2017-02-01 07:42:00-05	\N
244690905 	WAAL	2012-09-03 04:36:58-04	\N
244690908 	THEODORA	2014-04-23 16:39:48-04	\N
244690909 	VOORZAAN III	2014-04-27 15:18:39-04	\N
244690914 	REIMERSWAAL	2016-05-05 08:10:31-04	\N
244690915 	ZANDEXPRES 5	2015-07-09 08:44:56-04	\N
244690918 	HELENA	2014-04-09 17:08:19-04	\N
244690919 	BERDI	2015-04-02 16:12:15-04	\N
244690925 	BURGZAND	2018-01-21 18:17:39-05	\N
244690926 	EXCELSIOR	2013-06-09 21:14:15-04	\N
244690927 	MIDLIFE.C	2018-08-13 06:20:16-04	\N
244690935 	LE FORMIDABLE	2018-03-31 23:39:58-04	\N
244690949 	PROVOCATIO	2015-10-04 01:19:23-04	\N
244690956 	CETERA	2012-05-06 10:19:20-04	\N
244690966 	SANDRA-F	2018-12-30 07:18:26-05	\N
244690968 	THETIS	2018-01-18 23:09:08-05	\N
244690970 	PARCIFAL	2017-02-15 15:40:08-05	\N
244690971 	MANTRA	2013-03-30 08:32:09-04	\N
244690979 	NOVAMENTE	2019-01-21 06:07:08-05	\N
244690982 	ELUNDA	2013-10-26 13:45:06-04	\N
244690990 	FELICIA	2015-06-11 16:04:49-04	\N
244690991 	VALSINNI	2016-11-16 12:13:56-05	\N
244690993 	CHARDONNAY	2016-11-13 14:25:50-05	\N
244690994 	VIRAGE	2012-01-08 23:53:18-05	\N
244690995 	RWS 20	2013-08-23 11:14:48-04	\N
244690996 	WILLEM	2012-04-26 18:51:20-04	\N
244692000 	MAARTJE	2012-12-05 16:54:40-05	\N
244694000 	VEENDIJK	2018-05-19 06:27:13-04	\N
244699000 	ARION	2012-01-01 00:14:40-05	\N
244700005 	ACTIEF	2016-05-26 03:13:00-04	\N
244700009 	CYPRIA	2017-01-28 06:05:35-05	\N
244700010 	TYGO	2017-11-06 14:00:26-05	\N
244700012 	WATERWEG	2013-10-19 18:50:32-04	\N
244700014 	IRIS	2018-07-24 18:42:59-04	\N
244700024 	MERCURIUS	2013-06-22 18:27:36-04	\N
244700029 	PATRIA	2012-02-10 10:02:39-05	\N
244700036 	WILHELMINA	2016-12-14 01:51:04-05	\N
244700038 	THE LOUNGE	2018-02-03 12:16:33-05	\N
244700039 	AQUITAINE	2018-04-10 12:18:10-04	\N
244700040 	PATRIA	2013-03-22 10:47:36-04	\N
244700044 	CONCORDE	2016-07-21 04:45:59-04	\N
244700046 	ALADIN	2015-03-08 07:23:58-04	\N
244700055 	VARIANT	2016-04-29 20:39:51-04	\N
244700065 	IMMANUEL	2018-07-05 23:44:05-04	\N
244700075 	BATTENOORD	2012-10-02 10:18:18-04	\N
244700103 	DONATA	2012-03-06 11:39:01-05	\N
244700109 	JULISKA	2018-05-21 22:10:22-04	\N
244700113 	BELVEDEREVALLEI	2014-01-30 11:22:06-05	\N
244700115 	STATENSTAD	2015-07-02 05:24:02-04	\N
244700116 	JANA	2019-02-13 01:51:21-05	\N
244700119 	PAX	2018-08-01 20:41:22-04	\N
244700122 	JOZINA	2014-12-30 05:22:11-05	\N
244700123 	SMIT WAALHAVEN 4	2016-07-03 22:38:15-04	\N
244700124 	POSEIDON	2016-11-24 00:26:16-05	\N
244700125 	SMIT WAALHAVEN 7	2013-04-29 14:21:29-04	\N
244700127 	SMIT WAALHAVEN 3	2012-11-19 09:14:50-05	\N
244700130 	OLESIA	2015-01-16 07:42:10-05	\N
244700131 	GROENENDAAL	2017-07-01 21:21:39-04	\N
244700143 	PROVIDENTIA	2014-07-18 17:05:12-04	\N
244700144 	NEPTUN 2	2013-08-29 09:03:33-04	\N
244700148 	ROTTERDAM 30	2016-11-18 15:22:43-05	\N
244700149 	POSEIDON	2013-01-11 07:18:16-05	\N
244700158 	CONTENDER	2013-08-25 01:18:13-04	\N
244700159 	DVB MANFRED DEYMANN	2018-02-11 01:02:19-05	\N
244700174 	SINGA	2013-06-20 09:30:12-04	\N
244700178 	ANNEKE J	2015-07-22 06:56:11-04	\N
244700185 	MARISKA	2014-12-31 04:28:48-05	\N
244700188 	LEO DETERMAN	2016-06-06 08:21:08-04	\N
244700193 	MAIN IV	2017-11-21 22:17:38-05	\N
244700194 	MAIN VII	2018-10-28 04:11:49-04	\N
244700196 	JUNIOR	2013-07-18 12:57:06-04	\N
244700197 	MAIN-XIII	2013-04-24 08:09:31-04	\N
244700198 	MAIN V	2013-10-30 09:55:09-04	\N
244700199 	MAIN I	2016-12-03 18:09:42-05	\N
244700201 	MAIN III	2012-11-25 21:09:55-05	\N
244700202 	STOLT FILIA	2012-05-04 11:15:11-04	\N
244700203 	GRATIAS	2012-09-26 12:16:21-04	\N
244700206 	INNUENDO	2015-05-30 16:31:43-04	\N
244700207 	MAIN VI	2016-02-16 13:57:56-05	\N
244700224 	TRANSIENT	2012-10-26 10:34:12-04	\N
244700226 	FLUVIUS	2015-01-24 14:34:28-05	\N
244700229 	DINA	2016-03-16 16:04:22-04	\N
244700231 	PASSAAT	2016-04-21 22:33:40-04	\N
244700234 	SARDANA	2014-11-23 05:56:52-05	\N
244700236 	SYNERGY	2014-02-19 06:03:08-05	\N
244700241 	RES NOVA	2012-02-10 03:46:26-05	\N
244700244 	ORKA	2012-09-14 18:28:17-04	\N
244700245 	RAPIDE	2015-08-04 08:29:31-04	\N
244700247 	JACOB	2017-10-16 02:17:55-04	\N
244700251 	DINA JACOBA	2015-07-28 00:05:58-04	\N
244700253 	NOMADISCH III	2015-08-02 19:06:13-04	\N
244700254 	IJSSELDELTA	2015-09-09 06:25:53-04	\N
244700261 	SEROMA	2017-10-24 06:27:11-04	\N
244700262 	GEJA-S	2017-08-13 03:11:23-04	\N
244700263 	FIONA S	2013-07-23 00:33:53-04	\N
244700264 	RIJNLAND	2016-12-30 16:34:12-05	\N
244700267 	VREELAND	2015-01-20 14:16:31-05	\N
244700271 	BORELLI	2018-09-23 14:05:19-04	\N
244700275 	VARIANT	2012-12-15 04:12:20-05	\N
244700277 	ARA	2012-02-29 13:24:05-05	\N
244700279 	ISABEL	2017-10-29 05:26:10-04	\N
244700288 	AQUA AMISIA	2017-05-03 19:53:41-04	\N
244700289 	AQUA MARE	2018-04-16 15:49:53-04	\N
244700291 	TOLE	2015-12-11 09:01:40-05	\N
244700292 	SHAMROCK	2015-03-22 01:16:13-04	\N
244700294 	NIKITA	2018-07-15 11:54:55-04	\N
244700308 	GERARD-JOSE	2012-03-11 10:34:33-04	\N
244700310 	ESSEX	2018-01-04 14:19:15-05	\N
244700311 	SEINTOREN	2017-06-22 07:10:19-04	\N
244700312 	MICHAELANGELO	2013-08-06 17:01:22-04	\N
244700318 	MEARE	2013-12-20 23:58:01-05	\N
244700322 	MAIN XI	2014-04-07 03:34:50-04	\N
244700326 	MYRIAM	2016-09-25 10:24:04-04	\N
244700331 	CUNERA2	2015-08-21 02:22:52-04	\N
244700332 	ANNA ARINA	2016-07-08 08:27:55-04	\N
244700337 	WILLEKE	2016-09-10 13:01:04-04	\N
244700340 	EEMSTRANS	2017-10-01 22:01:16-04	\N
244700341 	GALACTICA	2018-12-22 18:20:09-05	\N
244700343 	GAR	2016-06-06 05:47:18-04	\N
244700345 	JOWINA	2013-09-02 15:06:34-04	\N
244700350 	ANTARES	2012-04-02 12:38:26-04	\N
244700356 	GRINZA 7	2012-08-08 17:40:30-04	\N
244700358 	GRINZA 6	2018-12-11 20:00:40-05	\N
244700361 	PIET HEIN	2015-05-28 05:21:30-04	\N
244700363 	ZEELAND	2015-04-28 04:22:31-04	\N
244700369 	SWEEPSTAKE	2014-03-15 23:27:30-04	\N
244700374 	MEZZOFORTE	2012-06-27 03:29:33-04	\N
244700375 	GAMBLER	2013-02-09 05:11:23-05	\N
244700380 	LIDA	2017-08-09 06:38:41-04	\N
244700384 	NOVATIE	2016-05-05 20:36:23-04	\N
244700388 	HEEN EN WEER V	2017-08-23 01:46:34-04	\N
244700389 	EBENHAEZER	2012-04-15 01:07:02-04	\N
244700392 	ANITA	2018-03-17 02:02:59-04	\N
244700398 	GERARDUS	2015-12-31 02:41:50-05	\N
244700399 	VERONA	2013-01-29 09:10:21-05	\N
244700402 	JOLANDA	2012-05-01 14:27:56-04	\N
244700416 	KOEGELWIECK	2013-11-09 07:28:27-05	\N
244700422 	TRANQUILO	2018-06-25 13:56:05-04	\N
244700423 	LOURENS SR	2017-08-19 20:18:12-04	\N
244700425 	SCORPIO	2016-03-18 15:07:28-04	\N
244700427 	VEERE	2012-12-14 06:25:09-05	\N
244700428 	PAPILLON	2017-11-13 01:40:34-05	\N
244700440 	ANNA MARIA V	2015-12-21 15:32:06-05	\N
244700443 	ESPERANZA	2013-11-17 06:51:15-05	\N
244700444 	ORA ET LABORA	2014-03-28 01:10:31-04	\N
244700448 	NJORD	2015-03-28 22:07:44-04	\N
244700449 	HAZARD	2017-06-15 03:47:33-04	\N
244700451 	ALTER EGO	2016-01-07 04:08:37-05	\N
244700452 	SCHELDESTROOM ..	2019-01-13 17:46:54-05	\N
244700453 	BONITAS	2018-08-22 00:14:09-04	\N
244700463 	INTERMEZZO	2015-03-03 11:20:36-05	\N
244700464 	YVETTE	2015-09-21 11:30:48-04	\N
244700465 	RIVAL	2013-09-12 09:01:23-04	\N
244700467 	MAASSTAD	2019-01-07 01:16:23-05	\N
244700468 	JOHNNY	2014-12-20 17:07:59-05	\N
244700469 	AMERSTROOM	2016-07-27 08:47:18-04	\N
244700470 	RENOVA	2014-05-30 00:02:29-04	\N
244700475 	DORINE	2015-12-08 11:44:03-05	\N
244700476 	ANNA MARIA II	2015-02-06 23:26:31-05	\N
244700479 	ARNO	2013-06-10 05:04:09-04	\N
244700480 	DUO	2013-06-19 02:23:44-04	\N
244700485 	RONARIS	2015-12-02 12:24:53-05	\N
244700491 	SARAH	2013-05-06 13:28:53-04	\N
244700493 	MAASPOORT	2015-02-22 05:33:28-05	\N
244700494 	GEPKE	2018-04-08 23:05:39-04	\N
244700495 	GEPKE 3	2012-03-22 23:03:37-04	\N
244700498 	TOURMALINE	2012-01-17 06:45:08-05	\N
244700503 	STAD NIJKERK 1	2012-09-12 04:14:41-04	\N
244700504 	GIBRALTAR	2013-11-23 18:41:16-05	\N
244700506 	DE JONGE GERBRAND 7	2015-04-19 21:11:56-04	\N
244700508 	IRIS	2016-08-16 14:43:07-04	\N
244700510 	MONZA	2014-12-29 13:14:22-05	\N
244700521 	SINEO	2012-01-22 09:12:52-05	\N
244700530 	VUELTA	2015-10-10 20:33:09-04	\N
244700532 	DWS 15 WATERMAN	2014-07-19 21:51:15-04	\N
244700533 	DWS 14 WATERVAL	2013-11-05 07:16:25-05	\N
244700534 	DWS11 WATERBUFFEL	2015-10-09 10:05:03-04	\N
244700535 	DWS 10 WATERGEUS	2012-05-17 12:21:29-04	\N
244700537 	MARINE SERVICE 1	2019-01-05 11:25:28-05	\N
244700538 	MV VITA VITALIS	2016-03-11 10:08:42-05	\N
244700543 	LIS	2015-04-11 04:57:11-04	\N
244700557 	BLIZZARD	2012-10-09 20:39:03-04	\N
244700559 	PI JA	2016-11-28 08:33:43-05	\N
244700562 	FELIX	2014-10-16 09:27:14-04	\N
244700570 	DE  VLIJT	2013-06-14 17:29:17-04	\N
244700574 	CHESON	2012-04-16 22:27:08-04	\N
244700575 	MON.DESIR	2016-08-31 07:44:06-04	\N
244700577 	BLUE-IN-GREEN	2016-01-30 05:59:17-05	\N
244700581 	THERA	2014-06-16 01:36:19-04	\N
244700591 	AVONTUUR	2013-02-23 05:59:40-05	\N
244700593 	RIVAL	2016-09-21 02:54:48-04	\N
244700594 	TOBA	2017-09-30 14:06:52-04	\N
244700597 	JANJA	2014-11-28 10:52:56-05	\N
244700602 	SOLI DEO GLORIA	2018-09-20 11:58:57-04	\N
244700611 	BRUTUS	2012-10-23 20:41:48-04	\N
244700616 	NOORDENWIND	2014-12-18 16:47:37-05	\N
244700617 	RIJNWERKEN	2017-04-02 13:19:50-04	\N
244700619 	AKERSLOOT	2014-06-27 04:09:04-04	\N
244700625 	MAASWERKEN	2014-11-13 02:52:32-05	\N
244700629 	MISTRAL	2016-02-24 01:02:22-05	\N
244700631 	SUSTENTO	2016-12-16 21:27:28-05	\N
244700632 	BONAFIDE	2016-06-18 05:50:17-04	\N
244700635 	BLOCQ	2013-10-23 04:19:50-04	\N
244700639 	INTANTUM	2016-07-26 10:22:23-04	\N
244700650 	BAS ANNE	2012-01-10 03:47:19-05	\N
244700651 	HYDROVAC 11	2013-05-24 21:10:07-04	\N
244700652 	CAPIBARA	2016-07-15 05:52:34-04	\N
244700656 	ECHO	2015-03-09 15:45:17-04	\N
244700660 	MADI	2018-10-25 18:04:51-04	\N
244700661 	VRIDO 1	2017-02-10 23:50:26-05	\N
244700663 	PAVONA	2015-07-26 17:44:12-04	\N
244700665 	NAVICELLA	2015-01-12 12:54:21-05	\N
244700666 	STEURGAT	2018-03-06 15:33:18-05	\N
244700668 	AQUA ALBIS	2013-03-11 17:32:36-04	\N
244700677 	SCRAPHUNTER	2015-05-17 04:44:16-04	\N
244700680 	WESTERSCHELDE	2016-07-24 23:55:46-04	\N
244700684 	WILLEM	2017-08-27 21:39:19-04	\N
244700688 	QUEBEC	2018-02-24 05:07:48-05	\N
244700689 	SYDNEY	2012-09-25 16:51:32-04	\N
244700690 	MONTREAL	2014-04-09 19:43:41-04	\N
244700696 	NELLY	2012-04-13 00:58:40-04	\N
244700697 	JORI-JAN	2014-04-03 16:34:40-04	\N
244700701 	ROSALINDE	2014-03-23 16:41:13-04	\N
244700710 	ROYAAL	2014-10-18 07:45:21-04	\N
244700712 	KON-TIKI	2014-02-08 21:16:43-05	\N
244700713 	AVANCE	2017-01-30 20:33:29-05	\N
244700714 	SOMTRANS XX	2016-08-05 21:29:39-04	\N
244700715 	CECILIA	2012-07-14 15:46:03-04	\N
244700716 	OCEAN DIVA	2017-12-08 01:03:22-05	\N
244700718 	COLUMBUS	2014-03-24 09:20:15-04	\N
244700719 	SEMPER-SPERA	2014-01-02 03:43:33-05	\N
244700721 	NIKKI	2013-07-13 09:33:02-04	\N
244700722 	JURBRI	2017-09-03 03:40:18-04	\N
244700725 	ARENDA	2013-09-06 09:31:27-04	\N
244700726 	ZANDKREEK	2014-12-29 17:23:29-05	\N
244700727 	KAISERBERG	2016-10-15 00:25:07-04	\N
244700733 	ALCYON	2017-08-13 01:01:14-04	\N
244700735 	VENTURE	2016-07-31 14:42:28-04	\N
244700736 	ZELDENRUST	2016-02-01 04:27:37-05	\N
244700739 	FESTUM	2018-11-04 13:35:13-05	\N
244700750 	JANUS	2016-05-18 23:43:28-04	\N
244700757 	ANTA	2014-04-29 05:52:30-04	\N
244700760 	GOLLWITZ	2012-11-09 10:42:33-05	\N
244700763 	HORTENSIA 2	2017-04-14 10:52:12-04	\N
244700764 	MARTINA	2013-04-15 17:48:56-04	\N
244700769 	WEST EUROPA	2015-04-26 00:05:10-04	\N
244700770 	CARINALEXANDER	2014-06-10 09:41:29-04	\N
244700772 	HARMKE	2017-04-23 11:52:53-04	\N
244700773 	ORIENT	2018-05-03 19:56:15-04	\N
244700774 	MEGGY	2016-03-30 05:19:44-04	\N
244700780 	VLIEGENDE HOLLANDER	2012-01-19 23:39:12-05	\N
244700781 	MIXAGE	2013-03-01 06:56:03-05	\N
244700782 	CUNERA	2019-01-09 11:05:16-05	\N
244700789 	HULDER	2016-06-03 09:18:55-04	\N
244700790 	JODOCUS	2016-07-28 12:52:20-04	\N
244700794 	NERODIA	2013-03-26 07:16:26-04	\N
244700797 	KRVE 60	2018-08-14 22:33:38-04	\N
244700799 	CHRISTINA	2013-02-20 17:14:45-05	\N
244700800 	GERYVO	2017-05-22 12:15:05-04	\N
244700801 	MODALIMAR	2013-01-10 23:14:03-05	\N
244700802 	SANSTOARM	2012-08-12 22:02:16-04	\N
244700806 	VROLIJKE VISSER	2017-06-18 04:02:24-04	\N
244700808 	WENDY DUA	2016-01-09 08:24:41-05	\N
244700809 	JENNY	2019-02-07 23:46:49-05	\N
244700810 	DE VALK	2014-04-18 05:23:14-04	\N
244700811 	THEO	2013-02-21 20:15:07-05	\N
244700814 	BOOT 4	2014-04-29 02:07:55-04	\N
244700816 	TORMENTA	2012-07-11 03:10:06-04	\N
244700820 	CHARLOIS	2018-11-04 13:13:43-05	\N
244700826 	NATAL	2016-03-21 19:51:21-04	\N
244700827 	AMISTADE	2017-07-22 20:54:03-04	\N
244700830 	RIVER PRIDE	2015-09-28 22:03:59-04	\N
244700833 	MARTINA 2	2018-10-29 00:46:15-04	\N
244700835 	LINQUENDA	2014-08-30 17:12:36-04	\N
244700836 	SUNSTAR	2017-06-10 03:17:32-04	\N
244700841 	LADY ANNE	2016-05-04 14:21:40-04	\N
244700850 	MARLINA	2016-11-09 08:27:22-05	\N
244700852 	TANCAR	2015-02-27 14:27:13-05	\N
244700853 	CARIA	2014-03-29 04:06:50-04	\N
244700854 	DESIDERIO	2018-08-21 02:42:09-04	\N
244700855 	DE AA	2017-03-17 01:56:16-04	\N
244700859 	KLIFRAK	2015-12-10 13:26:54-05	\N
244700894 	KIA-ORA	2015-05-28 23:31:27-04	\N
244700900 	DESTINY	2013-04-18 17:22:07-04	\N
244700905 	KALAHARI	2014-10-19 23:17:25-04	\N
244700907 	SPINTORE	2018-09-28 13:51:32-04	\N
244700908 	LUCIENNE-D	2016-03-19 02:31:53-04	\N
244700912 	MONTIS 5	2017-11-21 14:53:02-05	\N
244700917 	BO JOOP	2013-02-18 22:14:10-05	\N
244700918 	ADVENTURE	2012-02-04 14:02:34-05	\N
244700923 	ALIDA	2019-01-15 05:36:44-05	\N
244700931 	GREBBE	2013-11-18 06:22:15-05	\N
244700933 	CASTELLUM	2017-10-28 00:46:12-04	\N
244700934 	PRINS VAN ORANJE	2015-06-28 10:16:31-04	\N
244700936 	SISSY	2013-06-27 04:58:32-04	\N
244700938 	P1	2013-01-18 12:15:13-05	\N
244700940 	VISION	2012-07-13 06:23:31-04	\N
244700942 	MONDIAL	2015-02-25 06:04:00-05	\N
244700945 	IJVEER XIII	2014-06-02 22:36:07-04	\N
244700948 	ECHO	2014-05-04 06:31:37-04	\N
244700951 	PASSAGE	2019-02-10 12:19:57-05	\N
244700953 	GRETINA	2014-08-06 03:37:05-04	\N
244700954 	SUYDERSEE	2013-10-07 21:32:52-04	\N
244700956 	MPS ONRUST	2018-11-29 11:46:18-05	\N
244700965 	ZEELAND	2015-02-03 19:04:25-05	\N
244700967 	VRIENDSCHAP V SELZAE	2012-12-12 02:37:07-05	\N
244700972 	ALBERTA	2016-11-07 08:33:35-05	\N
244700979 	LIBERTY ANN	2012-02-14 18:31:47-05	\N
244700980 	AMARE	2012-04-02 04:36:07-04	\N
244700985 	PELSERT	2013-04-22 00:48:24-04	\N
244700986 	ADIO	2016-11-04 08:03:13-04	\N
244700987 	KORTENOORD	2016-03-16 08:43:38-04	\N
244700991 	ATLANTIC PRESTIGE	2018-07-30 00:51:06-04	\N
244703000 	EEMSHORN	2013-09-10 18:54:46-04	\N
244708000 	SWALINGE	2018-12-10 10:13:25-05	\N
244710007 	ANNETTE MARIA	2018-12-20 02:55:46-05	\N
244710011 	GREVELINGEN	2013-05-23 15:09:40-04	\N
244710018 	HORIZON	2017-01-28 03:53:31-05	\N
244710022 	MARJA	2013-11-14 09:52:35-05	\N
244710029 	NORTHSTAR	2018-03-04 05:25:21-05	\N
244710034 	VERWISSELING	2013-08-21 04:11:16-04	\N
244710035 	MERUADA	2018-11-16 08:57:10-05	\N
244710036 	HUCKINGEN	2014-07-06 15:41:05-04	\N
244710038 	HELENA ADRIAAN	2013-03-14 23:26:00-04	\N
244710041 	AVANTI	2017-08-24 09:36:00-04	\N
244710042 	OTTO	2013-12-25 07:18:16-05	\N
244710045 	CONCORDIA	2019-02-05 17:37:40-05	\N
244710050 	MULTRATUG 12	2018-11-01 19:27:32-04	\N
244710052 	TIMBO	2015-03-10 20:05:55-04	\N
244710055 	ZUID HOLLAND	2016-07-25 22:43:49-04	\N
244710061 	LAURINA	2012-09-13 23:24:34-04	\N
244710062 	IBIS 4	2013-06-21 21:49:46-04	\N
244710067 	JOHANNA	2013-12-10 14:25:47-05	\N
244710068 	NAVITAS	2014-08-01 06:14:20-04	\N
244710082 	ORISANT	2015-02-17 08:27:27-05	\N
244710091 	ARKLOW VALIANT	2018-01-24 23:03:07-05	\N
244710092 	MARIANNE H	2017-04-27 02:25:25-04	\N
244710094 	LUCTOR	2013-05-07 07:04:43-04	\N
244710100 	HEEN EN WEER	2017-07-08 20:24:24-04	\N
244710106 	JACOLIEN	2018-10-11 06:45:02-04	\N
244710110 	MARIA	2012-02-28 23:08:41-05	\N
244710112 	KARIMA	2014-05-19 09:24:49-04	\N
244710114 	MARCOPOLO	2012-10-10 05:32:14-04	\N
244710115 	CONFIDE	2014-10-21 06:57:26-04	\N
244710116 	ZUGERSEE	2014-07-01 19:01:30-04	\N
244710118 	JAMES COOK	2012-12-09 13:36:06-05	\N
244710122 	SALVINIA	2014-09-11 11:24:33-04	\N
244710124 	RISICO	2017-06-21 16:38:34-04	\N
244710126 	CORNELIS	2017-11-05 03:17:06-05	\N
244710133 	TRIANGLE	2014-06-13 06:37:58-04	\N
244710135 	CIRCLE	2013-01-22 07:19:02-05	\N
244710137 	OSTARA	2017-04-15 08:48:42-04	\N
244710139 	CUGINI	2013-06-24 16:49:02-04	\N
244710140 	THIJS	2014-03-05 00:36:12-05	\N
244710141 	ZUIDFRIESLAND	2013-07-13 03:26:03-04	\N
244710150 	DELTA	2014-09-10 08:58:00-04	\N
244710157 	GREVELINGEN	2016-10-25 06:11:49-04	\N
244710161 	NAUTICA	2015-04-01 12:01:55-04	\N
244710171 	LA BOHEME	2013-08-15 08:57:20-04	\N
244710173 	CURACAO	2018-08-25 00:39:48-04	\N
244710181 	JENERO	2017-02-09 23:48:58-05	\N
244710183 	PATRIJS	2015-12-06 07:09:26-05	\N
244710188 	UNDINE 5	2014-06-02 02:02:23-04	\N
244710192 	VL20	2015-04-08 14:02:41-04	\N
244710199 	CLAIR DE LUNE	2012-01-02 14:46:40-05	\N
244710201 	ARNOLD	2018-12-22 04:52:12-05	\N
244710202 	HERA	2013-04-13 11:30:25-04	\N
244710207 	ATLANTIC PERFORMER	2016-07-12 21:27:03-04	\N
244710209 	LA VIDA	2017-10-06 23:31:31-04	\N
244710214 	PELIKAAN	2013-03-21 16:12:48-04	\N
244710215 	ADRIANA	2015-08-27 19:12:15-04	\N
244710222 	ANTARES	2012-12-05 13:15:12-05	\N
244710225 	MARTINIQUE	2018-10-07 04:36:59-04	\N
244710229 	ZEEMEEUW	2015-08-22 07:11:08-04	\N
244710230 	SOMTRANS XXVI	2016-05-06 16:56:53-04	\N
244710232 	JO-AN	2019-02-06 09:09:56-05	\N
244710238 	NORMA	2012-10-31 06:27:14-04	\N
244710242 	ANITA	2018-12-22 22:06:14-05	\N
244710246 	PIET-HEIN	2013-10-14 01:55:18-04	\N
244710250 	TERINA B	2012-05-02 18:46:28-04	\N
244710252 	AUKE	2013-07-16 09:45:27-04	\N
244710256 	TIMMERBAK 10	2012-01-01 11:44:05-05	\N
244710257 	FIONA S	2017-11-27 20:10:31-05	\N
244710260 	RWS 24	2012-07-29 10:59:37-04	\N
244710265 	CILINKA	2015-11-30 16:13:37-05	\N
244710271 	ADVENTUM	2017-07-03 10:29:13-04	\N
244710280 	HENJA	2015-10-29 05:48:16-04	\N
244710284 	RIAD	2018-03-22 16:45:27-04	\N
244710286 	AQUA-ISALA	2017-04-08 21:58:23-04	\N
244710294 	NOVA VENTURE	2012-10-15 17:45:49-04	\N
244710297 	WENDING	2017-01-12 12:56:09-05	\N
244710298 	LIZA MARLEEN	2013-09-17 20:14:04-04	\N
244710299 	ANNA ANTAL	2018-05-07 05:45:00-04	\N
244710300 	SAILING HOME	2015-10-23 06:02:05-04	\N
244710301 	DANKBAARHEID	2015-06-02 09:36:11-04	\N
244710305 	AMETHYST	2013-05-10 22:28:56-04	\N
244710310 	STUIVEZAND	2015-05-24 02:09:51-04	\N
244710313 	ZILVERMEEUW 6	2014-08-13 20:16:27-04	\N
244710315 	SOBRINA	2015-06-13 00:31:02-04	\N
244710317 	PASSIE EN STRIJD	2015-03-11 20:17:59-04	\N
244710324 	AMALIA	2015-12-13 04:30:42-05	\N
244710325 	ARIANE	2016-04-11 07:01:57-04	\N
244710331 	NAVIGATIE	2018-07-07 06:34:21-04	\N
244710335 	RES NOVA	2016-09-26 14:52:46-04	\N
244710336 	YE-147 CORNELIS	2015-07-10 19:53:58-04	\N
244710338 	TALERNA	2015-02-04 03:30:08-05	\N
244710342 	FATIMA	2018-10-19 17:54:09-04	\N
244710343 	RIGEL	2014-04-20 10:26:37-04	\N
244710347 	AURORA	2012-01-31 13:59:31-05	\N
244710348 	CENTINA	2017-12-10 19:40:33-05	\N
244710352 	VALBURG	2016-04-12 11:48:31-04	\N
244710354 	EEMSHORN	2014-07-28 02:49:48-04	\N
244710357 	FLORA W	2014-08-12 13:44:09-04	\N
244710358 	AMENTO	2016-09-05 20:43:57-04	\N
244710361 	VEERE	2017-10-05 19:56:55-04	\N
244710362 	ALPI	2014-02-04 17:59:05-05	\N
244710367 	ATLANTIC PROGRESS	2014-10-14 06:59:37-04	\N
244710370 	QUO-VADIS	2017-06-02 08:57:37-04	\N
244710373 	PROSPERO	2013-02-04 17:13:45-05	\N
244710387 	MERDEKA	2018-10-18 03:55:33-04	\N
244710388 	ELISTHA	2013-08-27 15:25:57-04	\N
244710390 	BAREND	2016-01-23 06:42:26-05	\N
244710392 	ANJA 1	2014-09-18 21:35:51-04	\N
244710393 	ZEEHOND	2018-09-21 21:53:54-04	\N
244710417 	PRO RATA	2016-10-20 02:29:33-04	\N
244710419 	ARJO	2013-12-03 09:35:54-05	\N
244710420 	EUREKA	2018-03-11 19:46:22-04	\N
244710425 	ARKLOW VALLEY	2018-05-01 19:17:12-04	\N
244710427 	STRICK	2016-03-15 01:57:06-04	\N
244710428 	GELDERLAND	2016-07-07 21:29:16-04	\N
244710429 	BATOUWE	2015-10-01 11:02:28-04	\N
244710431 	HILMAR	2013-12-01 04:27:41-05	\N
244710442 	ZAGRI	2014-01-30 05:46:37-05	\N
244710443 	BERNARDUS	2014-09-05 22:58:44-04	\N
244710444 	ADRIAAN	2012-12-14 11:00:49-05	\N
244710445 	AMER	2018-04-13 05:39:30-04	\N
244710446 	FRANS	2013-06-22 03:57:30-04	\N
244710450 	HAVENDIENST 2	2012-07-14 07:58:50-04	\N
244710451 	HAVENDIENST 20	2014-03-26 22:53:14-04	\N
244710452 	ZEEMEEUW	2017-10-23 17:56:15-04	\N
244710457 	DOCKYARD V	2018-06-29 00:32:46-04	\N
244710460 	JUTTER	2016-11-01 15:35:41-04	\N
244710467 	SATURNUS	2016-07-15 05:14:39-04	\N
244710474 	ENERGIE	2014-01-31 20:07:38-05	\N
244710475 	CORBULO	2016-02-13 19:31:01-05	\N
244710476 	ALBATROS	2014-05-03 09:17:14-04	\N
244710477 	AMALIA	2014-03-24 08:05:56-04	\N
244710478 	ZEEMEEUW	2012-08-17 10:36:22-04	\N
244710482 	BEATRIX	2013-08-28 20:44:39-04	\N
244710484 	ETERNITY	2012-04-08 13:47:12-04	\N
244710487 	STRIDER	2015-05-03 14:25:34-04	\N
244710492 	SAN ANTONIO	2012-04-29 20:09:38-04	\N
244710506 	FLAMINGO	2014-02-11 03:47:01-05	\N
244710508 	NEXUS	2016-06-03 17:10:53-04	\N
244710512 	FENNA	2017-03-11 14:34:25-05	\N
244710519 	JANNEKE	2018-08-11 23:47:38-04	\N
244710522 	AMSTELPLUS	2012-07-03 23:27:03-04	\N
244710524 	BERNISSEPLUS	2019-02-02 15:52:27-05	\N
244710536 	ANNA JACOMINA	2014-02-20 05:13:41-05	\N
244710537 	LUMINA	2014-12-22 16:55:19-05	\N
244710542 	BELLE VAN ZUYLEN	2013-02-22 21:09:46-05	\N
244710543 	DAME VAN AMSTEL	2017-09-18 04:30:58-04	\N
244710544 	ADELINE	2013-05-25 03:06:27-04	\N
244710546 	PATRIA	2017-07-10 09:40:24-04	\N
244710547 	SJEF	2018-03-19 23:44:35-04	\N
244710549 	ALPHEUS	2018-11-01 13:47:57-04	\N
244710556 	JASON	2012-11-07 14:43:31-05	\N
244710557 	RIEJANNE	2016-08-14 15:58:40-04	\N
244710559 	AVANTI	2017-07-28 00:40:07-04	\N
244710560 	VOLHARDING	2012-05-26 16:12:04-04	\N
244710564 	BORNRIF	2016-01-22 21:29:14-05	\N
244710577 	FLUMAR 3	2012-11-11 21:16:53-05	\N
244710578 	HEBBES	2013-12-04 02:27:31-05	\N
244710579 	FLUMAR	2018-12-24 12:17:10-05	\N
244710581 	REINOD 5	2013-12-23 14:04:38-05	\N
244710582 	REINOD 9	2016-07-15 05:03:02-04	\N
244710587 	ZWAAN	2015-12-30 11:09:27-05	\N
244710588 	PANDA	2017-04-12 23:00:38-04	\N
244710594 	MINTAKA	2017-03-19 23:51:22-04	\N
244710596 	CORMORAAN	2017-04-05 05:02:52-04	\N
244710597 	FRIESLAND	2014-07-04 08:06:35-04	\N
244710598 	SCHOKLAND	2014-05-02 13:50:53-04	\N
244710626 	MILKYWAY	2014-12-09 14:08:39-05	\N
244710630 	BOS EN LOMMER	2017-11-18 23:58:40-05	\N
244710635 	ALBERDINA	2014-07-18 23:09:23-04	\N
244710650 	LOUISA	2013-10-31 03:55:41-04	\N
244710652 	JOLANDA	2018-06-28 00:37:43-04	\N
244710653 	MIVIDA	2017-03-31 06:47:54-04	\N
244710655 	-KIM	2017-11-14 15:16:11-05	\N
244710657 	DEZI	2014-02-03 00:57:26-05	\N
244710661 	ACTIA	2018-06-20 01:43:51-04	\N
244710667 	LAGUNA	2012-01-24 08:29:32-05	\N
244710671 	CHRISTINA	2019-01-16 23:39:10-05	\N
244710676 	CHARWILL	2018-06-26 03:15:05-04	\N
244710692 	EVOLUTIE	2015-03-08 17:12:15-04	\N
244710693 	HEIN JR	2014-07-30 19:42:59-04	\N
244710695 	SHARON	2012-06-14 06:48:06-04	\N
244710705 	SCHEUR	2013-08-02 16:25:40-04	\N
244710707 	POOLSTER	2013-04-04 20:54:01-04	\N
244710708 	PIETER.L	2017-10-14 02:03:05-04	\N
244710710 	AMELIE 2	2013-10-02 00:52:47-04	\N
244710712 	FANT	2015-12-06 05:24:46-05	\N
244710715 	GEULVALLEI	2014-02-20 19:34:37-05	\N
244710719 	HILBER	2018-03-29 11:49:58-04	\N
244710728 	ZOE	2015-03-08 16:26:12-04	\N
244710730 	ALI B2	2017-06-06 17:56:48-04	\N
244710731 	TORNADO	2013-03-12 09:07:32-04	\N
244710733 	ANNA VAN NIEUWKOOP	2013-10-17 11:12:00-04	\N
244710739 	DRAGA	2017-05-27 23:53:58-04	\N
244710741 	SIER	2015-01-13 03:50:13-05	\N
244710742 	OERD	2015-07-10 07:39:59-04	\N
244710744 	ADJA-B	2018-12-02 18:19:32-05	\N
244710747 	XANTHOS	2018-01-17 22:24:42-05	\N
244710749 	MANA	2015-09-30 10:36:11-04	\N
244710751 	SAM	2017-08-19 09:58:45-04	\N
244710762 	SELINA JR	2016-07-22 19:01:12-04	\N
244710764 	ALLEGRO	2013-04-10 19:50:05-04	\N
244710773 	VERWACHTING	2012-06-16 15:23:17-04	\N
244710774 	MAROT	2018-01-01 23:41:28-05	\N
244710776 	ALJA	2014-04-29 21:09:44-04	\N
244710795 	LIMENAS	2015-06-04 16:08:24-04	\N
244710800 	MAASBOMMEL	2019-01-10 21:07:10-05	\N
244710804 	AMALIA	2015-01-14 00:12:46-05	\N
244710805 	MEGEN	2012-04-20 08:23:01-04	\N
244710806 	TONNIE DE BLANK	2015-09-08 09:50:16-04	\N
244710808 	KURANG BAGUS	2016-07-19 01:59:18-04	\N
244710812 	OTTER	2016-12-09 13:41:18-05	\N
244710817 	FOREVER	2013-07-17 23:09:17-04	\N
244710820 	FESTINA LENTE	2013-11-29 16:16:20-05	\N
244710823 	ANTOINETTE CHRISTINA	2018-09-07 03:19:05-04	\N
244710825 	SCH 335 MANDY	2016-11-27 23:21:10-05	\N
244710832 	PC HOOFT	2018-09-22 15:20:25-04	\N
244710833 	SAMOJEDSKAJA	2015-07-13 19:08:09-04	\N
244710836 	WILHELMUS	2017-10-29 00:50:43-04	\N
244710842 	AQUILA	2016-02-12 08:10:45-05	\N
244710846 	PIETER HUBERT	2014-02-01 04:52:31-05	\N
244710848 	ROB	2016-06-19 02:56:44-04	\N
244710851 	BEVER	2013-07-09 06:17:03-04	\N
244710853 	TUIMELAAR	2015-06-28 22:04:10-04	\N
244710864 	PRINSES BEATRIX	2013-04-19 18:35:36-04	\N
244710865 	PRINSES CHRISTINA	2012-04-28 04:42:31-04	\N
244710867 	LA NOUVELLE ETOILE	2014-09-11 11:24:04-04	\N
244710869 	VOLHARDING 2	2013-06-22 05:01:20-04	\N
244710871 	VOLHARDING 4	2016-01-12 20:26:31-05	\N
244710872 	VOLHARDING 5	2013-05-26 06:08:40-04	\N
244710874 	VOLHARDING 9	2015-07-25 17:45:43-04	\N
244710875 	RIJK DE GOOYER	2016-08-20 18:30:41-04	\N
244710876 	VOLHARDING XI	2015-10-14 16:47:35-04	\N
244710879 	VOLHARDING 7	2014-06-08 19:42:12-04	\N
244710890 	LUISA TREVES	2016-10-08 00:59:53-04	\N
244710892 	RIALTO	2016-04-09 21:26:31-04	\N
244710896 	MATHILDE	2017-11-25 05:14:38-05	\N
244710899 	ODESSA	2014-12-22 04:21:13-05	\N
244710900 	FLAMINGO	2015-09-07 13:02:22-04	\N
244710903 	TRISTAN	2018-03-02 02:00:53-05	\N
244710904 	VELOCITY:..:	2015-06-22 00:37:49-04	\N
244710908 	TAURUS	2016-12-03 00:58:58-05	\N
244710910 	DRIUWPOLLE	2013-02-17 02:52:50-05	\N
244710914 	DIELIS	2013-11-14 13:27:04-05	\N
244710915 	VECHT	2014-10-17 13:24:59-04	\N
244710918 	STERN	2013-12-21 04:37:34-05	\N
244710964 	CHILA	2014-03-04 20:30:43-05	\N
244710969 	LADY ANNE-LYNN	2015-11-26 23:17:37-05	\N
244710971 	FRONTERA	2016-02-07 06:50:12-05	\N
244710981 	WATERLELIE	2017-01-07 05:22:29-05	\N
244710983 	YE-46 JANNY	2016-03-06 22:54:49-05	\N
244718000 	YE-157 CORNELIA	2017-03-04 09:43:42-05	\N
244719000 	JEANNY	2018-04-30 09:55:22-04	\N
244721000 	UK271 ESTER JACOBA	2013-07-19 18:02:21-04	\N
244727000 	SCH 87 NEELTJE	2014-05-16 05:25:53-04	\N
244728000 	TYCHO	2015-07-29 05:36:20-04	\N
244730000 	SCHELDEGRACHT	2016-06-04 06:02:00-04	\N
244730005 	SEMPER PARATUS	2014-09-30 12:53:02-04	\N
244730008 	BRUINVIS	2016-04-01 04:49:12-04	\N
244730009 	ARGUS	2017-05-28 08:33:28-04	\N
244730014 	NICOLAIJE	2016-02-28 08:36:21-05	\N
244730015 	AMALFI	2015-07-11 22:21:26-04	\N
244730016 	SONORA	2015-04-23 17:16:50-04	\N
244730019 	ANTIQUITEIT	2012-12-26 00:55:01-05	\N
244730020 	HARINGVLIET	2015-01-26 05:11:23-05	\N
244730022 	STENTOR	2015-09-01 01:20:08-04	\N
244730042 	BOW 2	2014-02-07 15:16:34-05	\N
244730043 	SLUIZER	2012-03-05 07:33:54-05	\N
244730044 	TOSSA	2018-10-19 09:57:46-04	\N
244730045 	DIAN	2018-09-24 13:11:14-04	\N
244730047 	RIO Y MAR	2014-03-28 05:51:38-04	\N
244730048 	ANGELIQUE	2014-06-11 03:16:03-04	\N
244730073 	ALTERO	2016-07-15 23:54:47-04	\N
244730075 	VIRGINIA	2017-06-14 01:40:15-04	\N
244730083 	CHRISTINE	2018-10-07 22:43:39-04	\N
244730087 	AMATI	2013-02-01 21:07:22-05	\N
244730091 	DINTEL	2015-07-17 20:28:03-04	\N
244730094 	DEO JUVANTE	2014-09-26 12:36:46-04	\N
244730103 	JELLE AUKE	2018-07-04 15:46:49-04	\N
244730114 	EDO	2018-02-27 13:58:48-05	\N
244730115 	WILMA	2016-03-22 21:04:37-04	\N
244730117 	MARIAN	2017-08-28 21:27:15-04	\N
244730119 	BERT	2012-12-22 14:27:32-05	\N
244730122 	ZEEKOE	2017-11-20 11:32:57-05	\N
244730125 	KRVE 62	2016-11-26 14:39:11-05	\N
244730137 	REPLAY	2015-07-02 14:06:23-04	\N
244730148 	VENETIE	2012-04-11 04:50:32-04	\N
244730150 	VINOTRA 10	2017-04-21 18:26:21-04	\N
244730153 	VEERHAVEN VI	2016-06-13 06:14:01-04	\N
244730166 	CARPE DIEM	2017-10-17 00:43:13-04	\N
244730196 	ALK	2016-04-19 07:40:06-04	\N
244730199 	WANTIJ	2013-09-21 08:27:21-04	\N
244730202 	SPES	2017-11-07 15:44:49-05	\N
244730205 	CONTESSA	2016-01-16 16:34:19-05	\N
244730209 	HILLIE	2013-01-01 05:04:17-05	\N
244730218 	ELODIE	2017-11-05 08:44:37-05	\N
244730227 	NEPTUNUS	2016-12-23 01:30:20-05	\N
244730231 	HEBO-CAT 9	2013-04-15 15:44:27-04	\N
244730238 	IJSSELMONDE	2018-12-08 17:20:21-05	\N
244730262 	JAAP WOUTER	2018-07-01 10:12:39-04	\N
244730287 	DYNAMO	2015-04-01 04:43:17-04	\N
244730288 	ARJA	2016-06-04 15:48:03-04	\N
244730297 	JOSETTE	2018-12-28 18:41:19-05	\N
244730299 	LADY ANNA	2016-05-11 17:41:16-04	\N
244730300 	CONFIDENCE	2012-03-17 20:03:44-04	\N
244730302 	VERWISSELING	2015-12-21 18:51:22-05	\N
244730312 	CONFIANCE	2012-10-28 13:18:20-04	\N
244730326 	GREVELINGEN	2017-04-15 12:02:41-04	\N
244730333 	HENDRIK H	2015-11-01 07:17:33-05	\N
244730334 	ODIN	2013-06-18 21:01:43-04	\N
244730336 	LENA	2016-01-29 17:12:02-05	\N
244730338 	AVIFAUNA III	2012-01-08 00:04:51-05	\N
244730339 	AVIFAUNA V	2013-09-29 06:30:16-04	\N
244730347 	SJORS B	2013-09-01 23:27:34-04	\N
244730353 	HALLE	2012-09-13 00:47:05-04	\N
244730368 	CONNEMARA	2015-05-12 09:07:34-04	\N
244730387 	ANJO	2013-03-24 06:14:02-04	\N
244730389 	HUSKY	2014-12-29 13:06:16-05	\N
244730396 	CASTOR	2014-05-05 00:49:59-04	\N
244730402 	READINESS	2013-08-08 13:00:35-04	\N
244730412 	ARIES	2018-11-25 15:59:16-05	\N
244730468 	AITANA B	2017-02-06 00:38:44-05	\N
244730469 	LADY ADELE	2012-07-01 17:37:59-04	\N
244730471 	MERWESTREEK	2015-06-21 00:22:58-04	\N
244730478 	NIEUW HOORN	2012-11-10 17:31:22-05	\N
244730483 	LEMSTERLAND	2019-01-08 22:20:46-05	\N
244730485 	STOLT FLORENCE	2014-07-14 15:45:21-04	\N
244730487 	CARINA	2017-05-09 03:36:26-04	\N
244730507 	TEMPORE	2018-06-30 14:39:31-04	\N
244730512 	BRIGITTE-B	2017-05-16 17:47:37-04	\N
244730523 	MEERMIN	2017-03-15 22:28:01-04	\N
244730530 	EUROPOORT	2015-10-30 10:42:28-04	\N
244730545 	DE VROUW DINA	2014-01-22 21:02:33-05	\N
244730546 	KP10	2016-06-13 03:03:11-04	\N
244730551 	SOLMARE	2012-08-18 16:43:18-04	\N
244730574 	SOLARE	2017-01-03 15:13:00-05	\N
244730580 	AVENSIS	2013-08-24 08:37:33-04	\N
244730581 	ELMARO	2012-10-10 19:25:38-04	\N
244730603 	CHAMISA-D	2012-12-04 04:58:49-05	\N
244730605 	KVB ROMAN	2016-10-05 17:49:29-04	\N
244730609 	ALLEGRO	2012-01-10 08:25:10-05	\N
244730614 	PROVIDER	2015-12-21 20:39:34-05	\N
244730648 	DELFSHAVEN	2013-01-19 19:04:27-05	\N
244730659 	FORTUNA	2016-06-24 04:31:24-04	\N
244730696 	ACADIA	2012-03-22 18:36:41-04	\N
244730714 	CARPE DIEM	2015-04-01 10:27:21-04	\N
244730716 	LINQUENDA	2016-01-03 03:56:55-05	\N
244730731 	PIETER BOELE	2015-06-15 06:32:59-04	\N
244730736 	KOINONIA	2012-06-02 18:08:36-04	\N
244730744 	ARBEID ADELT	2017-04-30 11:42:55-04	\N
244730751 	NOMADE	2017-07-05 03:46:39-04	\N
244730753 	NORMA	2019-01-26 01:08:40-05	\N
244730760 	KAPITEIN ANNA	2014-09-01 07:34:24-04	\N
244730771 	JOSEFIEN	2016-03-13 06:21:11-04	\N
244730807 	LAUROSA	2016-03-05 15:54:18-05	\N
244730818 	DEVONIA	2016-10-30 18:44:57-04	\N
244730848 	TRANSACTION	2014-01-07 14:40:37-05	\N
244730862 	DEO CONFIDENTES	2017-12-04 06:52:43-05	\N
244730875 	AALSCHOLVER	2015-09-19 08:28:33-04	\N
244730883 	MARIA CORNELIA	2012-10-08 23:32:03-04	\N
244730888 	SINULIA	2019-01-06 16:20:52-05	\N
244730891 	CHRISTIAAN WILLEM	2014-06-19 12:03:22-04	\N
244730905 	DELTA 1	2013-05-07 13:57:13-04	\N
244730909 	DELTA 3	2018-12-03 14:02:14-05	\N
244730912 	AURA	2018-02-06 06:58:01-05	\N
244730927 	GALATEA	2014-02-25 22:57:41-05	\N
244730944 	ARKLOW BRAVE	2013-10-23 01:03:41-04	\N
244730945 	THERESIA	2018-02-28 07:30:21-05	\N
244730948 	AVONTUUR	2017-11-03 15:37:58-04	\N
244730961 	ANCONA	2014-03-13 05:41:52-04	\N
244730977 	JANNA-MARIA 3	2013-09-05 21:21:53-04	\N
244730978 	ZEESTER	2017-10-10 07:16:32-04	\N
244730982 	TYRO	2012-03-28 22:40:16-04	\N
244730993 	LOTUS_	2017-02-05 17:02:06-05	\N
244731000 	YE116 ELISABETH	2014-12-03 07:18:22-05	\N
244732000 	TEBICA	2018-09-13 08:04:44-04	\N
244734000 	THUN GRANITE	2018-01-10 10:48:31-05	\N
244735000 	NJORD	2017-07-11 07:28:14-04	\N
244736000 	VAN KINSBERGEN	2015-03-12 19:55:46-04	\N
244740029 	MARIA-B	2014-11-13 23:15:08-05	\N
244740035 	MEMPHIS	2014-12-13 20:41:50-05	\N
244740042 	INTEGRITY	2013-10-19 22:41:44-04	\N
244740050 	ELVIRA	2019-01-23 12:49:19-05	\N
244740052 	OOSTZEE	2016-02-14 02:00:49-05	\N
244740158 	ALPHECCA	2012-12-03 02:32:00-05	\N
244740160 	SOMNIUM	2014-07-26 03:53:19-04	\N
244740167 	SCALDIS	2016-04-09 19:27:15-04	\N
244740168 	JAN	2013-08-22 21:34:50-04	\N
244740191 	BORNEO	2016-07-22 10:37:52-04	\N
244740200 	MAAIKE	2015-12-09 07:30:10-05	\N
244740201 	GEROMA	2012-09-06 19:49:55-04	\N
244740207 	CELERITAS	2014-12-08 13:33:57-05	\N
244740224 	RENSKE MARIA	2012-03-02 03:03:27-05	\N
244740230 	MON-DESIR	2017-10-21 09:05:06-04	\N
244740231 	TALISMAN	2016-12-19 00:17:47-05	\N
244740232 	DE ZUIDERZEE	2018-09-26 14:22:50-04	\N
244740237 	MICHAEL	2018-05-02 08:56:33-04	\N
244740238 	BRYAN	2013-10-21 16:26:43-04	\N
244740249 	ROAN	2018-01-14 09:41:44-05	\N
244740259 	SWETTE	2012-04-10 12:04:19-04	\N
244740273 	MARTINA	2015-01-10 05:55:56-05	\N
244740301 	THIRA	2016-06-02 07:57:13-04	\N
244740303 	HENWIMA	2016-08-29 16:29:44-04	\N
244740304 	WAYGAT	2015-12-18 14:31:23-05	\N
244740306 	WABO 2	2015-01-03 06:34:11-05	\N
244740307 	WABO	2013-01-18 04:19:38-05	\N
244740334 	NEHALENNIA	2016-09-21 08:03:09-04	\N
244740335 	ORION	2016-05-13 15:46:43-04	\N
244740347 	KLASARINA	2012-10-18 08:50:36-04	\N
244740353 	MATHILDE	2013-09-09 07:18:24-04	\N
244740376 	EEMSPOORT	2018-09-28 04:52:34-04	\N
244740384 	ZEELEEUW	2014-04-17 23:56:00-04	\N
244740389 	AALST II	2012-11-22 19:58:06-05	\N
244740396 	SOMTRANS XXIV	2015-09-24 16:48:54-04	\N
244740397 	AQUILO	2015-12-01 01:57:11-05	\N
244740400 	AMELAND	2017-11-15 06:20:21-05	\N
244740403 	CARITAS	2013-12-09 03:09:52-05	\N
244740404 	BERGSE DIEP	2017-07-02 10:13:14-04	\N
244740408 	ISANDRA	2019-01-24 16:40:26-05	\N
244740420 	CHARLOCK	2018-04-12 18:32:37-04	\N
244740442 	SILVER	2013-04-20 09:57:56-04	\N
244740452 	THE QUEEN JACQUELINE	2019-02-01 21:34:07-05	\N
244740453 	NOORDSTER	2016-12-12 07:18:22-05	\N
244740469 	BABYTONGA	2018-05-09 20:58:40-04	\N
244740479 	KUBOA	2014-08-14 02:41:54-04	\N
244740487 	ANTONIA	2013-08-30 10:21:01-04	\N
244740488 	FLAVA	2017-12-13 22:22:04-05	\N
244740489 	WADO	2013-11-28 19:06:18-05	\N
244740491 	RUDIS	2013-04-11 10:03:01-04	\N
244740495 	WILMA VI	2016-10-06 02:05:12-04	\N
244740497 	ESTO FIDELIS	2017-10-22 01:56:12-04	\N
244740500 	WILLEM PETER	2018-01-19 16:02:41-05	\N
244740516 	DE NEDERLAND	2012-06-24 14:11:23-04	\N
244740528 	ALDEBARAN	2017-03-04 06:01:02-05	\N
244740534 	PURELINER	2018-10-06 09:36:50-04	\N
244740536 	GERARDA	2017-02-21 22:17:28-05	\N
244740537 	ALBATROS	2012-10-06 16:43:21-04	\N
244740545 	DIRK ROMY	2014-08-12 23:00:24-04	\N
244740552 	HARJA II	2013-03-16 05:21:48-04	\N
244740554 	VARIATIE	2016-11-20 00:56:35-05	\N
244740564 	EGILODAN	2017-06-30 12:23:53-04	\N
244740566 	MARJON	2012-11-07 21:55:00-05	\N
244740569 	DIRK SR	2013-10-31 04:49:22-04	\N
244740576 	AQUAMARIN	2014-09-27 15:36:34-04	\N
244740577 	JANSSEN 57	2013-01-11 20:41:37-05	\N
244740590 	CAAN	2014-11-05 09:46:26-05	\N
244740593 	HENRIETTE	2012-03-04 01:32:33-05	\N
244740598 	FRIENDSHIP	2018-10-31 05:52:12-04	\N
244740602 	ARTHUR VAN SCHENDEL	2018-09-08 19:16:44-04	\N
244740603 	JUTLAND	2017-10-19 20:39:46-04	\N
244740605 	RIJN	2019-01-03 03:56:40-05	\N
244740616 	BREE VEERTIEN	2014-02-18 07:53:48-05	\N
244740625 	RVE 57	2018-06-07 02:55:26-04	\N
244740627 	BORIS (SURVEY VSL)	2017-05-08 03:22:36-04	\N
244740629 	YE-110 ANNA CHRISTIN	2015-02-28 06:25:54-05	\N
244740642 	MAJESTIC TMS	2016-11-11 09:06:07-05	\N
244740646 	ZUIDPOOL	2018-06-01 03:32:03-04	\N
244740649 	NANO	2015-03-06 14:39:21-05	\N
244740651 	VICTORIA S	2016-08-19 02:00:50-04	\N
244740652 	LEEKERVUUR	2017-12-25 02:58:12-05	\N
244740655 	RWS 60	2013-10-19 11:28:22-04	\N
244740662 	DEVEL	2014-12-19 08:20:55-05	\N
244740663 	JOHANNES	2017-01-20 07:29:17-05	\N
244740681 	ARGONON	2017-08-18 21:02:09-04	\N
244740684 	ANTARES	2015-10-31 01:01:26-04	\N
244740686 	CORNELIS TROMP	2014-03-20 21:17:23-04	\N
244740688 	MARINA	2016-03-31 19:20:24-04	\N
244740693 	ENDEAVOUR	2015-08-12 13:06:15-04	\N
244740695 	LINEKE	2017-09-23 08:05:29-04	\N
244740703 	ROVI	2015-10-23 22:31:19-04	\N
244740706 	ELIZABETH	2015-08-30 15:23:18-04	\N
244740709 	ZWARTEWATER	2015-09-12 07:58:34-04	\N
244740730 	REAN-L	2013-08-23 23:50:55-04	\N
244740732 	VIRGO	2014-02-16 01:22:34-05	\N
244740742 	GRATO	2015-10-29 00:44:45-04	\N
244740743 	HEBOCAT 10	2015-08-06 14:33:49-04	\N
244740744 	CALYPSO	2014-08-19 03:44:58-04	\N
244740748 	SINCFAL	2015-04-05 01:01:07-04	\N
244740750 	UNDINE III	2014-07-13 03:18:21-04	\N
244740754 	REINA 2	2014-06-22 06:33:12-04	\N
244740760 	CASIMIR	2014-03-06 01:17:04-05	\N
244740762 	MUTARE	2013-08-21 04:09:30-04	\N
244740765 	AVONTUUR	2015-08-31 01:28:26-04	\N
244740779 	MACKO	2012-02-11 15:06:39-05	\N
244740786 	INCUBATOR	2014-06-11 02:40:15-04	\N
244740787 	STOLT RHINE	2018-02-14 12:30:42-05	\N
244740789 	EMPIRE	2014-12-09 10:34:30-05	\N
244740804 	LA BLANCA	2012-01-20 00:01:45-05	\N
244740807 	JAN VAN BOMMEL	2015-09-09 16:40:03-04	\N
244740814 	INVOTIS VII	2017-12-13 20:58:29-05	\N
244740824 	CLAES HORN	2012-10-07 05:53:58-04	\N
244740853 	AEGIR	2012-03-12 17:07:27-04	\N
244740863 	AMORE	2012-12-10 17:10:54-05	\N
244740864 	AQUA SPRINTER	2016-06-07 14:01:27-04	\N
244740865 	FIDUCIA	2015-04-04 18:56:08-04	\N
244740870 	GOEIE MIE	2013-01-15 01:52:45-05	\N
244740872 	JANNICK	2013-08-17 09:43:33-04	\N
244740874 	ESMALIJN	2014-12-04 09:26:19-05	\N
244740881 	WILLEM HENDRIK	2013-08-09 21:45:29-04	\N
244740887 	KINDERDIJK	2014-09-03 10:31:34-04	\N
244740890 	EXODUS	2015-07-05 13:06:14-04	\N
244740895 	DRIE GEBROEDERS	2013-03-03 00:00:40-05	\N
244740913 	PAULA	2018-07-01 00:06:50-04	\N
244740915 	MUTABEL	2018-08-15 08:46:43-04	\N
244740921 	MULTRATUG 4	2013-08-31 00:57:30-04	\N
244740922 	GAASTERLAND	2018-04-21 02:24:47-04	\N
244740924 	MISANDO	2012-10-12 13:07:27-04	\N
244740925 	IBIS V	2017-05-12 06:58:18-04	\N
244740930 	NAVEX	2015-10-01 04:04:43-04	\N
244740931 	EDVENTURE	2018-09-01 18:15:01-04	\N
244740933 	STIRO	2012-09-02 11:49:56-04	\N
244740939 	RIAN	2018-03-09 03:38:07-05	\N
244740941 	EUPHORY	2014-01-23 14:17:48-05	\N
244740942 	FIDELITY	2014-02-24 08:49:27-05	\N
244740948 	FRIENDSHIP	2015-10-29 16:57:12-04	\N
244740950 	ORION	2012-11-26 17:09:24-05	\N
244740960 	AHOY	2012-06-23 12:32:58-04	\N
244740972 	LEENDERT	2015-11-14 14:46:20-05	\N
244740979 	WIJHESE VEER	2019-01-02 10:09:45-05	\N
244741000 	LONGGLORY	2013-01-03 07:08:03-05	\N
244750001 	VROUWE FORTUNA	2018-07-09 00:10:14-04	\N
244750002 	DAHLIA	2012-02-17 06:55:38-05	\N
244750008 	ODINA	2013-12-28 20:13:51-05	\N
244750011 	YE-27 PROSPER JULIEN	2018-04-14 17:20:44-04	\N
244750013 	PRINCEHOF	2012-04-05 11:53:38-04	\N
244750015 	YVON	2012-12-17 16:22:53-05	\N
244750076 	STARUM	2016-09-17 22:49:38-04	\N
244750077 	ENJOY.... .....	2014-03-10 02:02:44-04	\N
244750081 	LAZIO	2018-02-12 05:40:40-05	\N
244750088 	ENGELINA	2014-01-29 19:53:34-05	\N
244750097 	SPARTIVENTO	2018-03-28 11:43:50-04	\N
244750099 	BODENSEE	2018-03-30 12:38:04-04	\N
244750104 	JOOP SR	2016-09-16 17:50:47-04	\N
244750110 	WHITE PRINCESS	2012-08-09 17:58:51-04	\N
244750116 	GRACE KELLY	2013-10-13 03:02:09-04	\N
244750117 	THALASSA	2017-11-16 03:46:36-05	\N
244750119 	DIANE	2018-12-18 06:04:24-05	\N
244750120 	EBEN HAEZER	2016-10-04 01:01:43-04	\N
244750124 	SELINA	2017-03-20 20:01:50-04	\N
244750133 	JACOBA	2013-04-16 23:45:07-04	\N
244750134 	MARIEKE	2017-12-08 14:35:33-05	\N
244750137 	ESCAPE	2017-06-08 17:41:27-04	\N
244750140 	YE-60 VERTROUWEN	2012-11-01 16:07:59-04	\N
244750143 	NOSTACURIA	2016-01-25 07:46:48-05	\N
244750146 	DE BLAUWE BEVER	2014-01-03 21:58:16-05	\N
244750157 	OREADE	2017-06-16 08:15:21-04	\N
244750160 	EXPLOSIEF	2016-07-14 19:31:45-04	\N
244750169 	RWS 58	2013-04-06 03:17:32-04	\N
244750192 	LAVERNA	2015-01-23 03:14:58-05	\N
244750200 	PIDOE	2014-11-30 12:34:12-05	\N
244750201 	VAGARI	2012-08-18 13:50:40-04	\N
244750202 	DUPLUS	2015-10-24 14:35:31-04	\N
244750203 	PROOST VAN SINT JAN	2017-05-16 06:23:35-04	\N
244750205 	AVANTI	2017-08-29 20:47:14-04	\N
244750207 	AVONTUUR	2014-05-01 09:04:20-04	\N
244750208 	JANNY	2017-11-16 20:40:46-05	\N
244750209 	MIBA	2015-04-30 20:41:49-04	\N
244750210 	POLARIS	2016-11-21 10:38:41-05	\N
244750218 	MARTE-MEO	2012-09-10 02:01:28-04	\N
244750219 	JOVITA	2015-10-23 08:58:57-04	\N
244750224 	HOOP OP ZEGEN	2015-08-09 07:01:55-04	\N
244750229 	DANKBAARHEID	2018-10-22 11:41:55-04	\N
244750232 	BABETTE.	2018-05-15 08:08:49-04	\N
244750240 	ANDRE VAN DUIN	2015-09-25 16:53:24-04	\N
244750242 	MARISKA	2019-01-16 06:14:42-05	\N
244750243 	BZN 2	2018-01-24 16:53:52-05	\N
244750245 	VROUWE JOHANNA	2015-07-06 04:29:00-04	\N
244750247 	SEOLTO	2015-10-23 12:16:19-04	\N
244750250 	DEO-VOLENTE	2012-10-13 23:26:00-04	\N
244750252 	UNION X	2012-01-31 00:46:50-05	\N
244750255 	BZN 4	2018-08-24 02:22:20-04	\N
244750256 	FLYING ENTERPRISE	2015-06-30 22:19:48-04	\N
244750258 	JANNES LOVERS	2017-03-24 17:42:30-04	\N
244750259 	PIERRE  JANSSEN	2014-05-10 23:18:07-04	\N
244750262 	TOON HERMANS	2013-08-07 21:50:07-04	\N
244750263 	WIM KAN	2015-06-05 16:59:16-04	\N
244750264 	WIM SONNEVELD	2014-06-01 05:06:06-04	\N
244750272 	ARIE	2016-06-01 01:27:38-04	\N
244750276 	ALBLAS	2016-01-23 15:44:11-05	\N
244750286 	IJVEER 54	2016-10-30 00:34:06-04	\N
244750292 	CATHARINA II	2014-03-15 18:34:46-04	\N
244750293 	SAMENWERKING	2017-05-15 16:21:34-04	\N
244750306 	BONAIRE	2014-06-14 10:26:12-04	\N
244750307 	COMMEARE	2015-06-22 13:56:48-04	\N
244750309 	ARUBA	2019-01-28 05:35:20-05	\N
244750310 	MADJOE	2012-04-13 14:23:20-04	\N
244750311 	BARBAROSSA	2016-08-02 04:05:05-04	\N
244750315 	DESAFIO	2013-09-11 15:08:34-04	\N
244750316 	FIAT VOLUNTAS	2017-01-18 02:01:53-05	\N
244750318 	CALYPSO	2012-07-12 23:46:00-04	\N
244750321 	EBEN HAEZER	2013-04-11 13:39:41-04	\N
244750327 	ENTERPRISE	2017-12-15 01:55:55-05	\N
244750341 	SAVONA	2014-07-11 14:45:14-04	\N
244750349 	EENDRACHT	2018-12-12 05:10:44-05	\N
244750350 	NOORDZEE	2018-09-01 23:17:06-04	\N
244750356 	VIRGINIA	2018-12-23 23:38:59-05	\N
244750360 	BURLY	2014-04-27 01:33:24-04	\N
244750365 	AVENTURIER	2017-01-04 22:57:23-05	\N
244750379 	ATALANTA	2013-11-01 18:14:00-04	\N
244750389 	FORTUNA	2016-06-05 02:58:21-04	\N
244750393 	MIDSLAND	2013-09-22 08:44:29-04	\N
244750399 	LIBERTE	2014-09-03 02:47:51-04	\N
244750401 	ANNA ARINA	2015-05-03 14:14:51-04	\N
244750408 	HINTE	2014-11-05 20:09:57-05	\N
244750409 	APRIL	2012-03-19 13:03:22-04	\N
244750412 	TWILLIS	2012-06-26 15:02:29-04	\N
244750414 	GEPETTO	2015-03-09 08:00:55-04	\N
244750423 	STOERE EENVOUD	2016-07-01 05:13:15-04	\N
244750424 	AQUA FERRO	2015-05-04 12:07:19-04	\N
244750425 	WILLEMINA PIETERNELL	2016-05-30 17:04:06-04	\N
244750429 	TRANSITORIUS	2016-04-26 16:14:28-04	\N
244750433 	IDA3	2014-09-17 00:15:48-04	\N
244750434 	STEVEN1	2015-04-11 23:53:40-04	\N
244750435 	HARMONIE	2015-04-09 21:13:47-04	\N
244750439 	CALA  JONDAL	2015-02-12 20:03:59-05	\N
244750445 	FLUVIUS	2017-04-29 08:45:43-04	\N
244750448 	DUTCH PRINCESS	2017-02-23 15:40:15-05	\N
244750462 	BONNATURE	2017-09-02 05:41:50-04	\N
244750464 	GOEDE HOOP	2016-10-09 05:12:28-04	\N
244750471 	DOLER	2017-05-07 22:18:28-04	\N
244750482 	WALVIS	2013-04-30 10:31:37-04	\N
244750494 	ALBATROS	2013-02-22 10:10:35-05	\N
244750496 	ANNA MARIE	2017-04-28 20:51:28-04	\N
244750498 	RHENUS VAHALIS	2018-12-25 01:09:01-05	\N
244750503 	GOAD	2017-08-25 00:26:35-04	\N
244750518 	THEODORUS JOHAN	2018-09-09 11:44:10-04	\N
244750526 	ADELHEID	2013-01-07 01:28:38-05	\N
244750529 	NEW VISTA	2016-11-17 12:08:50-05	\N
244750538 	BONNE CHANCE	2012-03-25 02:21:36-04	\N
244750541 	PANTA RHEI	2012-11-17 10:24:33-05	\N
244750553 	GOUWZEE	2017-08-25 09:40:02-04	\N
244750554 	ZARE	2017-01-28 00:10:48-05	\N
244750556 	WILLIE	2017-10-24 03:13:09-04	\N
244750560 	YE-29 JACOBA PRINS	2017-09-19 05:08:20-04	\N
244750576 	WN10/WATERSPREEUW	2013-09-13 21:39:25-04	\N
244750585 	STORM	2016-09-11 08:17:18-04	\N
244750586 	SANTIAGO	2018-04-03 11:06:27-04	\N
244750587 	NP 289	2016-10-14 10:14:25-04	\N
244750594 	ADRIANA	2013-05-03 23:54:38-04	\N
244750597 	FURORE	2012-10-19 18:46:18-04	\N
244750598 	NOVA-SPES	2016-09-30 17:41:19-04	\N
244750616 	SEMPER FI	2015-04-29 14:12:32-04	\N
244750622 	BLACK PEARL	2016-12-02 22:27:46-05	\N
244750625 	OUDE JAN	2018-07-13 13:22:09-04	\N
244750626 	FURKA	2013-06-02 20:47:04-04	\N
244750631 	VARIUS	2017-12-23 05:07:37-05	\N
244750633 	VEERHAVEN III	2017-09-19 06:59:17-04	\N
244750640 	NORALY	2016-05-07 05:17:46-04	\N
244750641 	ALPHA	2019-02-16 12:57:09-05	\N
244750645 	ARKLOW VALE	2014-06-09 12:11:03-04	\N
244750650 	MOSELLA	2017-06-04 01:29:17-04	\N
244750660 	CONCORDIA	2014-07-24 00:34:58-04	\N
244750661 	ALEXANDER GOGEL	2017-11-28 14:27:45-05	\N
244750671 	SERA	2017-11-19 12:07:57-05	\N
244750673 	SOEVEREIN	2013-01-03 21:34:03-05	\N
244750685 	IJVEER 50	2014-05-14 11:13:22-04	\N
244750687 	IJVEER 51	2018-07-31 17:20:05-04	\N
244750688 	IJVEER 52	2017-01-27 19:41:11-05	\N
244750689 	IJVEER 53	2018-09-21 21:52:36-04	\N
244750690 	IJVEER 56	2013-05-04 23:15:17-04	\N
244750691 	IJVEER 33	2012-02-06 17:10:09-05	\N
244750731 	BARKI II	2012-04-11 00:01:14-04	\N
244750733 	GYSBERTUS	2014-10-15 07:24:11-04	\N
244750736 	PONT 21	2013-09-24 10:50:38-04	\N
244750739 	YE-24 TWEE GEBR	2012-05-06 15:03:55-04	\N
244750740 	GRATITUDE	2017-03-15 22:42:41-04	\N
244750742 	FOR EVER	2015-01-06 08:17:52-05	\N
244750767 	ORION	2016-09-15 08:08:32-04	\N
244750770 	PHOENIX	2014-06-02 08:49:32-04	\N
244750780 	CULEMBORG II	2016-08-25 18:35:50-04	\N
244750786 	KVB HERMINA	2017-07-14 23:18:54-04	\N
244750793 	BERNARDINE	2018-04-20 11:11:27-04	\N
244750808 	ANTONIO BELLUCCI	2014-04-01 08:34:12-04	\N
244750822 	JUSTINA	2018-06-04 15:08:26-04	\N
244750825 	RIMFAXE R	2013-10-21 02:33:42-04	\N
244750828 	BIESBOSCH	2015-08-30 23:57:07-04	\N
244750830 	VOLKERAK	2012-01-05 00:30:50-05	\N
244750831 	NOORD	2012-05-01 01:08:15-04	\N
244750832 	PRINCESS	2018-12-30 01:07:14-05	\N
244750840 	ST.MAARTEN	2015-08-26 22:13:58-04	\N
244750887 	ZIJPE	2012-07-01 20:33:03-04	\N
244750888 	IJMEER	2014-03-01 16:31:49-05	\N
244750889 	CHIOS	2015-05-15 08:17:20-04	\N
244750891 	KRAMMER	2016-04-06 04:03:22-04	\N
244750892 	LINGE	2015-05-22 06:42:44-04	\N
244750893 	HARINGVLIET	2017-10-08 08:30:50-04	\N
244750894 	GOUWE	2018-04-16 16:22:45-04	\N
244750895 	DINTEL	2018-10-27 02:01:03-04	\N
244750909 	FESTIJN	2016-08-05 21:03:17-04	\N
244750922 	SOMTRANS XXXIII	2015-09-11 14:29:32-04	\N
244750928 	AVANTAGE	2014-09-06 05:17:58-04	\N
244750947 	SOMTRANS XXX	2018-05-12 12:31:50-04	\N
244750954 	DUBAI	2015-02-17 14:14:22-05	\N
244750961 	RICKY JANE	2017-01-30 10:41:39-05	\N
244750980 	VARIATIE	2015-12-01 03:29:09-05	\N
244750981 	KINGSTON	2016-06-27 21:20:47-04	\N
244750987 	SNOEK	2015-11-06 13:59:10-05	\N
244757000 	RPA16	2017-10-12 14:29:28-04	\N
244758000 	STENA HOLLANDICA	2018-10-28 10:32:37-04	\N
244762000 	DELTA	2018-11-26 02:29:09-05	\N
244763000 	YE-62 J. MARGARETHA	2019-01-22 11:25:11-05	\N
244767000 	ISIS	2013-02-06 11:21:59-05	\N
244769000 	ZEEMEEUW	2017-03-20 08:37:08-04	\N
244770002 	BRU-25 MARIA CORNELI	2014-04-04 16:25:17-04	\N
244770005 	ORTOLAN	2014-08-29 11:22:52-04	\N
244770027 	DEVIATIE	2014-02-10 07:21:52-05	\N
244770052 	VIVRE	2013-06-11 19:07:15-04	\N
244770063 	BREITLING	2013-03-22 03:08:14-04	\N
244770069 	COASTAL CHARIOT	2016-03-15 14:34:44-04	\N
244770077 	DOROTHEA	2018-10-18 23:18:57-04	\N
244770080 	BERLIN	2019-01-15 10:46:58-05	\N
244770082 	LONDON	2013-05-31 15:49:09-04	\N
244770094 	LINDA	2018-01-08 16:35:59-05	\N
244770103 	CITY SUPPLIER	2019-02-14 10:38:50-05	\N
244770109 	ACTIEF	2012-06-07 23:09:18-04	\N
244770111 	EENDRACHT	2015-10-16 08:31:08-04	\N
244770115 	PARIS	2012-11-25 05:39:03-05	\N
244770122 	TIPI	2012-03-08 17:09:56-05	\N
244770136 	TRIAS/OBELIX	2016-12-15 08:23:52-05	\N
244770173 	ANNEMARIE	2012-11-23 16:50:20-05	\N
244770183 	BLIKPLAAT	2019-02-01 05:44:06-05	\N
244770198 	CENTURY	2015-04-30 21:40:17-04	\N
244770199 	NAUTILUS	2018-04-19 13:33:38-04	\N
244770214 	CALANDA	2017-07-15 16:27:46-04	\N
244770241 	ORIENT	2015-06-24 23:19:03-04	\N
244770251 	RIET	2016-03-12 22:41:33-05	\N
244770262 	YE-84 ISABEL	2012-11-29 04:43:43-05	\N
244770263 	THOMMY	2012-05-31 22:53:34-04	\N
244770268 	ENDEAVOUR	2018-08-08 17:34:09-04	\N
244770271 	HEARTBEAT	2018-03-02 20:20:37-05	\N
244770273 	SYMPHONY SEA	2013-03-19 18:39:27-04	\N
244770274 	HELENA GEERTJE	2016-11-11 02:43:27-05	\N
244770304 	PAX	2018-01-03 13:17:36-05	\N
244770306 	BDS-SURVEYOR	2014-11-25 17:03:02-05	\N
244770329 	KOET	2015-04-10 00:00:04-04	\N
244770330 	MARKERMEER	2017-11-02 14:13:33-04	\N
244770332 	ADRIAAN	2015-03-26 18:16:49-04	\N
244770334 	DE NES	2017-12-02 10:40:24-05	\N
244770339 	RWS 57	2017-03-30 15:51:38-04	\N
244770340 	RWS 84	2012-02-13 08:44:40-05	\N
244770343 	TX-20 WALRUS	2013-10-21 13:53:20-04	\N
244770362 	ALEXANDRA	2017-11-18 19:04:01-05	\N
244770363 	OMEGA	2013-02-24 21:41:35-05	\N
244770385 	OOSTVOGEL	2016-10-05 18:22:27-04	\N
244770393 	SYMPHONY SUN	2018-11-10 20:48:08-05	\N
244770415 	DIADEMA	2012-10-13 14:15:41-04	\N
244770416 	MODESTA	2014-10-02 22:10:01-04	\N
244770446 	BERGSCHE MAAS 8	2016-06-26 15:07:23-04	\N
244770448 	BERGSCHE MAAS 10	2016-04-24 14:07:15-04	\N
244770449 	BERGSCHE MAAS 12	2015-05-26 23:28:41-04	\N
244770470 	SARABOTUS	2017-01-08 20:43:36-05	\N
244770476 	ULEKRITE	2015-04-07 05:07:44-04	\N
244770477 	RODIE 2	2018-07-23 08:16:02-04	\N
244770495 	MEANDER	2017-07-21 17:32:44-04	\N
244770514 	PARCIVAL	2017-02-23 10:33:02-05	\N
244770515 	ANNA CATHARINA	2017-05-09 13:26:28-04	\N
244770519 	DOMINO	2012-04-27 00:15:49-04	\N
244770521 	WINDT	2018-12-28 01:44:29-05	\N
244770525 	LOBO	2018-10-26 15:25:04-04	\N
244770557 	CLEANSERVICE	2013-11-09 17:25:33-05	\N
244770562 	ZENIT	2016-10-21 10:35:50-04	\N
244770571 	BAR MELUS	2015-08-13 20:40:50-04	\N
244770587 	LADY MADELEINE	2015-08-18 00:06:11-04	\N
244770596 	SOLUTIO	2014-02-22 01:42:08-05	\N
244770597 	PLATFORM M7-A	2017-09-18 11:28:07-04	\N
244770598 	KRVE 61	2013-10-12 20:06:06-04	\N
244770601 	ORION	2019-02-23 07:44:00-05	\N
244770603 	BLACK FALCON	2014-01-29 22:52:39-05	\N
244770608 	ES EL	2018-11-24 02:29:16-05	\N
244770628 	TWELEN	2013-12-30 16:12:26-05	\N
244770631 	ARDEA	2015-03-30 22:42:24-04	\N
244770652 	FLIPJE	2014-10-12 05:47:24-04	\N
244770656 	MISTRAL	2012-12-12 07:33:45-05	\N
244770679 	UKIYO	2013-10-22 08:00:51-04	\N
244770697 	INGRID B	2017-05-09 12:40:44-04	\N
244770704 	BETUWE	2017-12-17 20:43:41-05	\N
244770722 	MPI ENTERPRISE	2014-08-30 03:29:01-04	\N
244770726 	BIESBOSCH	2018-02-10 11:09:07-05	\N
244770727 	THYRA	2018-10-18 00:20:29-04	\N
244770733 	ORION	2018-02-17 17:59:05-05	\N
244770790 	EL TEMPRANILLO	2012-10-20 21:19:07-04	\N
244770793 	HAYLEY	2016-02-18 15:32:33-05	\N
244770798 	DUANDRA	2015-01-26 13:27:26-05	\N
244770805 	YE-71 JOHANNA ANTOIN	2012-05-13 11:22:01-04	\N
244770829 	INTERLUDE	2018-03-05 02:57:35-05	\N
244770838 	STAD STAVOREN	2013-03-18 18:23:18-04	\N
244770852 	BRUINVISCH	2012-08-08 13:40:37-04	\N
244770854 	LUCTOR	2014-01-16 16:13:43-05	\N
244770867 	GITANA	2016-01-11 17:29:00-05	\N
244770894 	MAATJE JOHANNA	2015-05-01 10:40:33-04	\N
244770910 	BAVINK	2013-12-21 03:30:56-05	\N
244770911 	FINN-LUCAS DEYMANN	2012-11-22 07:46:16-05	\N
244770912 	SOPHIE DEYMANN	2016-11-09 21:15:12-05	\N
244770920 	DE AREND	2018-06-30 04:06:08-04	\N
244770995 	SEAZIP 1	2014-09-11 11:53:17-04	\N
244770997 	SEAZIP 2	2013-07-15 20:32:32-04	\N
244772000 	LEONIE	2018-06-14 20:58:44-04	\N
244773000 	WILLEM-B SR	2017-08-10 01:57:16-04	\N
244775000 	WR18 IN-SOLIDUM	2012-01-03 19:04:44-05	\N
244776000 	ADRIAAN HENDRIK	2018-10-13 17:36:04-04	\N
244779000 	YE18-JOHANNES	2017-09-04 04:20:09-04	\N
244780000 	FIDUCIA	2014-06-01 01:33:49-04	\N
244780007 	PARDOES	2017-09-03 03:17:30-04	\N
244780024 	WARBER	2016-07-31 10:36:16-04	\N
244780041 	RES-NOVA	2013-01-20 16:32:21-05	\N
244780045 	ZEELAND	2013-05-01 09:32:34-04	\N
244780050 	UNION 1	2016-01-03 07:41:54-05	\N
244780077 	HUNTER	2014-05-08 07:15:15-04	\N
244780097 	VERANDEREN	2015-10-17 07:04:28-04	\N
244780110 	HRH	2017-10-08 21:27:51-04	\N
244780112 	BOTA FOGO	2012-05-15 08:09:31-04	\N
244780117 	WN21	2013-12-27 02:57:04-05	\N
244780123 	VERWACHTING	2017-12-09 16:14:39-05	\N
244780132 	ELISE 1	2013-06-12 13:34:39-04	\N
244780136 	ANNA MARIA	2018-11-25 10:19:54-05	\N
244780155 	GELDERSWEERT	2014-06-03 22:43:16-04	\N
244780157 	BELLEFLEUR	2017-05-17 08:16:49-04	\N
244780168 	AQUA LISSE	2017-02-15 13:16:58-05	\N
244780172 	PETER	2014-12-28 11:09:43-05	\N
244780174 	ALBULA	2012-01-21 17:59:53-05	\N
244780182 	BARLAEUS	2017-03-22 02:22:52-04	\N
244780184 	VOSSIUS	2012-07-18 21:12:49-04	\N
244780204 	FLEVOMEER	2017-05-28 15:14:30-04	\N
244780213 	ELAY	2014-09-23 09:55:27-04	\N
244780214 	TH26 ZEEHAAN	2013-04-04 08:37:14-04	\N
244780230 	MER-BLUE	2017-02-27 00:08:35-05	\N
244780231 	ALINDA B	2016-05-14 23:47:20-04	\N
244780232 	GEHAN B	2015-05-11 03:30:47-04	\N
244780233 	AQUA VITA	2018-11-19 07:53:00-05	\N
244780236 	STERN	2014-05-18 19:15:31-04	\N
244780240 	WABI-SABI	2018-11-26 05:52:59-05	\N
244780243 	BRU-1 DE HOOP	2018-08-20 06:21:03-04	\N
244780245 	VIA NOVA	2017-01-27 21:57:45-05	\N
244780247 	BARRACUDA	2017-03-06 15:26:05-05	\N
244780253 	MARIA	2014-12-08 04:47:42-05	\N
244780254 	BANJAARD	2015-06-01 17:52:06-04	\N
244780258 	MARKAB	2013-04-25 11:36:06-04	\N
244780268 	FRATERNITE	2017-08-20 23:45:34-04	\N
244780277 	BOOMERANG	2018-09-28 20:49:04-04	\N
244780279 	PRINSENSTAD	2016-03-28 01:57:58-04	\N
244780287 	SCHOONENBURG	2017-01-29 02:47:58-05	\N
244780323 	REMBRANDT	2012-12-03 21:38:14-05	\N
244780324 	CORNEILLE	2013-09-10 11:03:10-04	\N
244780327 	JEROEN KRABBE	2014-08-14 17:38:35-04	\N
244780329 	ANIMO	2012-09-28 11:30:43-04	\N
244780345 	AERT VAN NES	2014-07-27 11:31:00-04	\N
244780346 	HENRY HUDSON	2015-04-30 20:25:52-04	\N
244780347 	PIETER HEYN I	2012-01-03 21:13:42-05	\N
244780348 	DR.ALBERT HEIJN	2016-02-03 09:40:56-05	\N
244780349 	PIETER HEYN III	2015-03-23 02:07:55-04	\N
244780355 	NELSON	2018-09-07 15:51:51-04	\N
244780356 	ABEL TASMAN	2015-03-31 22:19:58-04	\N
244780358 	HORUS 3	2016-03-25 02:40:40-04	\N
244780360 	MESSINA	2015-01-02 07:46:57-05	\N
244780366 	CORNELIA	2017-07-10 05:52:20-04	\N
244780372 	WOLK	2018-08-03 23:12:59-04	\N
244780373 	MONNE DE MIRANDA	2012-06-26 03:14:20-04	\N
244780375 	LYNX (PILOTS)	2018-11-18 23:40:08-05	\N
244780376 	LYRA (PILOTS)	2012-02-10 21:33:17-05	\N
244780377 	LACERTA (PILOTS)	2016-05-09 12:57:05-04	\N
244780378 	HERCULES (PILOTS)	2017-08-18 17:25:53-04	\N
244780379 	HYDRA (PILOTS)	2015-10-11 01:08:16-04	\N
244780380 	ZEUS	2018-11-18 09:15:58-05	\N
244780382 	JEKERVALLEI	2013-04-05 09:05:40-04	\N
244780383 	MAASVALLEI	2018-08-03 10:32:06-04	\N
244780384 	VD10	2017-03-09 13:43:47-05	\N
244780387 	ZARIA	2013-03-26 19:56:18-04	\N
244780392 	BONTEKOE	2015-08-13 20:14:49-04	\N
244780394 	CHAGALL	2016-05-17 01:42:11-04	\N
244780406 	SAILBOA	2017-05-14 13:52:02-04	\N
244780409 	DAISY DOARDO	2014-02-09 21:05:23-05	\N
244780421 	RYAN	2018-07-21 12:21:09-04	\N
244780424 	FRISIAN SEA	2016-08-05 01:27:55-04	\N
244780435 	BONA SPES	2015-10-03 05:18:13-04	\N
244780438 	ANNA	2012-01-16 00:33:22-05	\N
244780451 	SOMTRANS XXXI	2016-08-22 11:26:07-04	\N
244780453 	ACTIEF	2014-12-17 21:35:31-05	\N
244780462 	DE VRIENDSCHAP	2017-11-03 21:48:29-04	\N
244780474 	YE 89	2018-10-02 06:03:12-04	\N
244780479 	AQUATIQUE	2013-01-12 00:07:31-05	\N
244780486 	STAAY	2012-07-19 22:02:41-04	\N
244780488 	PIZ ROSEG	2015-11-15 08:13:43-05	\N
244780492 	SUMMER DREAM	2013-09-24 19:49:32-04	\N
244780493 	CZAAR PETER	2015-12-22 09:24:43-05	\N
244780494 	DE ZAAN	2014-09-02 00:01:45-04	\N
244780502 	COMMUNITAS	2017-05-11 14:44:18-04	\N
244780504 	WATERLINES	2017-04-17 00:21:54-04	\N
244780507 	DE HOOP	2019-02-25 17:50:14-05	\N
244780522 	GEONAUT	2012-09-26 16:01:36-04	\N
244780526 	GRIENDUIL 7	2018-11-12 12:44:55-05	\N
244780549 	PUTTER	2012-06-15 05:33:02-04	\N
244780551 	BALDER VL.92	2017-01-05 07:55:01-05	\N
244780563 	OLD QUEEN	2016-03-12 00:43:38-05	\N
244780575 	SCHROOTRUNNER	2013-01-10 13:41:25-05	\N
244780576 	TEUNTJE JITSKE	2012-05-24 06:51:42-04	\N
244780578 	YE 39 HUGO SR	2018-02-23 12:04:58-05	\N
244780598 	ZEELAND	2012-11-15 06:09:18-05	\N
244780609 	FAUNUS	2014-02-26 07:28:52-05	\N
244780610 	JUPITER	2018-01-09 10:50:48-05	\N
244780611 	MASTODONT	2013-06-17 22:20:30-04	\N
244780619 	HOOIHANDEL	2017-02-08 15:22:19-05	\N
244780626 	BDS TRANSPORTER	2012-06-25 15:12:51-04	\N
244780627 	HYDRA	2015-04-11 08:01:25-04	\N
244780631 	MARINA	2015-06-01 01:12:38-04	\N
244780637 	PIETER	2014-10-06 06:58:32-04	\N
244780642 	PRINSES MARGRIET	2012-07-04 20:46:40-04	\N
244780643 	KONINGIN FABIOLA	2015-12-10 02:12:49-05	\N
244780645 	PRINS CONSTANTIJN	2017-03-19 13:03:49-04	\N
244780646 	PRINS JOHAN FRISO	2016-02-05 11:35:37-05	\N
244780648 	PRINSES BEATRIX	2018-04-13 15:19:51-04	\N
244780649 	KONINGIN JULIANA	2014-02-09 23:28:19-05	\N
244780650 	JAN STEEN	2017-03-07 06:02:29-05	\N
244780651 	PRINS BERNHARD	2013-09-12 15:22:47-04	\N
244780652 	FRANS HALS	2012-12-27 07:07:14-05	\N
244780654 	PAX	2012-10-12 02:45:32-04	\N
244780655 	KONINGIN EMMA	2016-02-27 03:06:04-05	\N
244780657 	PR. W. VAN ORANJE	2017-11-17 03:50:42-05	\N
244780658 	SAEFTINGHE	2014-10-05 05:19:15-04	\N
244780663 	NOORDPOOL	2015-03-18 09:42:42-04	\N
244780677 	WON3 VERTROUWEN	2017-07-05 01:32:21-04	\N
244780678 	DEO FAVENTE	2012-12-15 19:38:37-05	\N
244780684 	LEONARDUS	2013-10-29 09:27:19-04	\N
244780694 	JOHANNA	2012-09-25 20:07:49-04	\N
244780700 	DWS 12	2018-11-11 14:29:08-05	\N
244780704 	EMMA	2012-07-13 14:33:27-04	\N
244780707 	PRIMO INITIO	2016-03-10 07:14:31-05	\N
244780710 	HENRY SCHMITZ	2013-12-18 09:22:35-05	\N
244780725 	EENVOUD	2017-12-28 21:39:52-05	\N
244780726 	HEBO-CAT 12	2016-06-15 13:57:15-04	\N
244780730 	EPSHIP I	2013-09-17 20:16:22-04	\N
244780734 	LIS	2018-11-15 09:46:17-05	\N
244780736 	AVONTUUR	2013-10-03 08:22:48-04	\N
244780737 	BOATMAN1	2017-10-29 09:02:30-04	\N
244780806 	IGMA-KRAAN 5	2016-06-22 06:01:30-04	\N
244780807 	SOLVERE	2016-01-02 03:06:11-05	\N
244780810 	NOVA CURA DZ82	2013-02-20 23:29:29-05	\N
244780811 	MUZE	2012-04-25 00:14:57-04	\N
244780813 	DEEP HELDER	2014-06-07 09:36:24-04	\N
244780821 	HOLLAND	2014-03-20 02:52:49-04	\N
244780826 	IGMA-KRAAN 4	2013-01-31 09:23:50-05	\N
244780827 	IGMA-KRAAN 3	2013-06-08 05:32:18-04	\N
244780833 	SANNE  MARIJE	2015-02-26 11:24:43-05	\N
244780840 	NEELTJE	2016-03-01 14:40:20-05	\N
244780851 	NOVA CURA	2016-10-09 22:36:46-04	\N
244780852 	MIRFAK	2018-05-20 11:11:12-04	\N
244780855 	NOORDVAARDER	2013-01-14 05:43:07-05	\N
244780857 	LARUS	2017-05-26 00:04:41-04	\N
244780864 	DE TOEKOMST	2017-01-13 14:05:44-05	\N
244780870 	ALEWIJN DE GROOT	2018-05-23 14:24:44-04	\N
244780875 	DE EENDRACHT	2012-01-05 22:20:28-05	\N
244780876 	NH1816	2013-02-28 08:28:56-05	\N
244780904 	AVONTUUR 2	2015-01-17 23:05:46-05	\N
244780921 	IJM 39 GEERTRUIDA	2012-03-07 08:32:20-05	\N
244780927 	DE JONGE GERBRAND 3	2015-02-20 06:01:32-05	\N
244780931 	MICHELANGELO	2014-04-19 07:28:11-04	\N
244780932 	DE LIEFDE	2013-02-23 18:06:42-05	\N
244780939 	KRVE10	2013-08-30 20:45:15-04	\N
244780951 	FERRY JO	2013-11-09 01:08:00-05	\N
244780955 	THEMIS	2016-04-27 17:08:12-04	\N
244780962 	SOMTRANS XXXII	2013-02-21 00:44:27-05	\N
244780965 	RIGA	2014-10-21 16:25:57-04	\N
244780967 	HA2 PESCADOR	2015-12-26 06:19:00-05	\N
244780976 	RVE 33	2016-07-07 13:21:08-04	\N
244780982 	BROEDERTROUW	2015-06-04 09:03:21-04	\N
244780988 	CHEYENNE	2013-09-03 12:50:36-04	\N
244786000 	YE257 SOLI DEOGLORIA	2016-07-25 20:00:21-04	\N
244787000 	JANVANENGELENBURG	2017-08-16 00:34:45-04	\N
244789000 	PROSPECT	2016-12-15 01:25:29-05	\N
244790017 	DE RUIGT	2014-10-05 20:56:03-04	\N
244790021 	FILIA RHENI	2016-05-07 00:33:00-04	\N
244790037 	KRVE 80	2017-06-28 01:47:51-04	\N
244790043 	ECOTANKER 2	2014-01-30 18:35:38-05	\N
244790047 	EEMSLIFT HENDRIKA	2012-12-11 11:14:58-05	\N
244790048 	HYDROVAC 12	2012-01-28 19:11:46-05	\N
244790054 	HT 1	2014-08-08 06:24:38-04	\N
244790070 	JUNTOS	2016-03-11 06:12:33-05	\N
244790074 	SALLAND	2014-08-30 14:51:47-04	\N
244790084 	PENDRECHT	2014-12-20 20:57:58-05	\N
244790086 	SUPPERCLUB CRUISE	2016-05-06 22:49:55-04	\N
244790091 	LIZ V	2012-01-18 08:16:51-05	\N
244790094 	DREAM	2014-11-26 16:12:58-05	\N
244790151 	RR ROOMPOT	2017-04-19 04:51:33-04	\N
244790153 	VIRGO	2015-04-25 14:24:36-04	\N
244790164 	GABBER	2012-11-22 01:10:30-05	\N
244790186 	MALTA	2014-08-21 21:05:49-04	\N
244790205 	FORZA	2016-10-19 04:14:50-04	\N
244790247 	KRVE2	2016-02-19 14:40:34-05	\N
244790303 	LENG	2017-09-21 05:47:13-04	\N
244790316 	RVE11	2017-07-12 10:32:38-04	\N
244790317 	KRVE 20	2018-12-19 02:50:27-05	\N
244790318 	KRVE 5	2013-05-27 04:39:37-04	\N
244790332 	DIABLO	2014-06-05 02:32:47-04	\N
244790376 	CUYPERS	2017-09-28 06:27:51-04	\N
244790393 	JAN CORNELIS	2012-10-26 22:48:32-04	\N
244790427 	CORAM DEO	2017-05-22 22:06:48-04	\N
244790448 	BELUGA	2012-10-08 22:53:28-04	\N
244790471 	MAATJE	2014-05-15 04:28:07-04	\N
244790508 	POSEIDON	2017-03-17 07:58:34-04	\N
244790510 	BDS PILOT	2016-12-07 13:41:53-05	\N
244790522 	CORAL STAR	2015-01-12 06:58:42-05	\N
244790535 	PANERA	2013-09-21 01:10:33-04	\N
244790539 	RVE 17	2019-02-11 11:37:47-05	\N
244790541 	WAB0 3	2018-10-05 16:02:45-04	\N
244790561 	MOBY QUEEN	2015-10-18 15:06:17-04	\N
244790562 	MOBY KING	2015-08-09 14:04:01-04	\N
244790604 	METIS	2017-03-26 03:30:47-04	\N
244790607 	EEMSLIFT NELLI	2013-07-10 07:04:30-04	\N
244790611 	MOSA	2013-03-16 07:50:26-04	\N
244790658 	SEGUNDO BARCO	2016-02-14 04:49:40-05	\N
244790664 	KAILANI III	2017-04-07 19:27:49-04	\N
244790677 	UK200 HENDRIK SR	2017-02-23 22:16:17-05	\N
244790679 	FARMSUMERDIEP	2012-07-02 17:44:53-04	\N
244790685 	EN AVANT 20	2018-03-23 17:15:13-04	\N
244790716 	TAR VALON	2018-06-02 17:21:23-04	\N
244790759 	PEGASUS	2013-04-03 07:38:28-04	\N
244790762 	SIGA SIGA	2016-07-26 21:24:49-04	\N
244790787 	DE SCHUYMER	2017-07-22 16:51:52-04	\N
244790793 	AMSTELDIEP	2013-09-26 00:40:19-04	\N
244790810 	POLLUX (PILOTVESSEL)	2012-11-25 19:09:01-05	\N
244790863 	ELSE	2013-08-31 12:50:32-04	\N
244790898 	VINTANA	2014-01-04 11:13:21-05	\N
244790934 	AMICITIA	2012-12-10 05:13:55-05	\N
244790963 	EQUALLY	2012-06-26 10:46:11-04	\N
244790972 	HAAIBAAI	2016-11-21 05:42:19-05	\N
244790994 	MOBI	2018-08-16 18:21:40-04	\N
244792000 	UK94 JAN VAN CEES	2015-02-25 03:45:16-05	\N
244795000 	SCHOTSMAN	2015-05-09 10:21:18-04	\N
244796000 	O.T. IDEAAL	2018-06-14 05:51:41-04	\N
244798000 	YE79 ANNA-TRIJNTJE	2012-09-18 06:41:38-04	\N
244805000 	AQUILA	2018-04-11 04:04:34-04	\N
244809000 	BRU-36 JOHANNES COR	2015-03-08 01:32:15-05	\N
244810000 	UK135 CORNELIS TRIJN	2017-04-05 13:38:00-04	\N
244810039 	BELLEFLEUR	2018-04-15 15:22:52-04	\N
244810087 	KRATOS	2015-01-20 21:27:43-05	\N
244810127 	MV SOETICHEYT	2014-09-13 03:33:22-04	\N
244810179 	SENTOSA	2013-12-11 21:48:58-05	\N
244810184 	AQUA CAT	2017-08-08 15:02:33-04	\N
244810213 	WN2 ZILVERMEEUW	2016-04-29 14:02:52-04	\N
244810216 	WN4 WATERRAL	2018-01-30 23:14:48-05	\N
244810225 	KEES JR	2013-08-14 13:56:22-04	\N
244810245 	KRVE 29	2013-05-06 16:36:43-04	\N
244810284 	JANS-B	2014-11-19 00:28:46-05	\N
244810300 	VAYA CON DIOS	2015-11-12 06:24:23-05	\N
244810323 	ARKLOW BANK	2017-02-25 03:38:01-05	\N
244810351 	THREE OF A KINDT	2017-08-29 11:16:44-04	\N
244810390 	RVE 16	2016-06-03 15:43:23-04	\N
244810401 	DMS STORK	2015-07-12 21:44:49-04	\N
244810435 	SYRINX	2019-01-02 21:55:55-05	\N
244810436 	WELVAART	2012-04-02 01:51:05-04	\N
244810462 	ELINE	2015-10-01 12:43:23-04	\N
244810480 	L HIPPOCAMPE	2017-03-28 00:07:15-04	\N
244810505 	LATINCA	2013-03-04 22:45:56-05	\N
244810513 	WALVIS	2013-09-26 14:04:35-04	\N
244810551 	SHALOM	2013-03-13 12:24:56-04	\N
244810599 	PIZ SARDONA	2018-10-25 08:24:05-04	\N
244810617 	REGGEBORG	2018-10-11 11:20:54-04	\N
244810627 	ANNA CAROLA	2014-03-18 16:05:25-04	\N
244810628 	HIPPOPOTES	2017-10-22 21:40:17-04	\N
244810632 	ALASKA	2013-08-06 22:48:02-04	\N
244810692 	AQUA LIGERA	2018-09-06 11:55:30-04	\N
244810693 	MARTINIQUE	2012-11-09 13:52:22-05	\N
244810730 	AMADEUS GOLD	2012-11-14 18:52:42-05	\N
244810755 	DEENEPLAAT	2013-07-24 12:53:58-04	\N
244810757 	HA22 KOKHAAN	2015-10-21 16:32:30-04	\N
244810759 	BRANDINI	2014-12-07 05:00:05-05	\N
244810764 	FINT	2015-09-05 15:21:34-04	\N
244810765 	ASSAM 2	2017-06-11 03:51:14-04	\N
244810785 	LA RHENANE	2012-10-04 09:02:45-04	\N
244810798 	IJSELMEER	2014-04-24 19:49:21-04	\N
244810805 	VAN EYCK	2012-06-12 20:16:35-04	\N
244810809 	TYDA KYRA	2015-06-15 15:40:23-04	\N
244810812 	KRAMMEROORD	2013-09-08 10:51:36-04	\N
244810821 	SUDERMAR	2018-07-12 07:07:36-04	\N
244810915 	ENGEL	2017-04-13 01:13:52-04	\N
244810926 	GIJS	2016-01-19 14:05:42-05	\N
244810978 	MARIE ZURLOHE	2016-07-07 14:43:54-04	\N
244811000 	COASTAL VICTORY	2016-01-11 07:49:39-05	\N
244814000 	LADY DEE	2012-09-24 13:27:44-04	\N
244815000 	TX1 KLASINA J	2018-01-06 12:42:38-05	\N
244818000 	WR72 PAULUS HENDRIK	2014-06-23 07:23:45-04	\N
244820000 	BERMUDA ISLANDER	2012-07-17 06:05:10-04	\N
244820022 	ENNA	2017-08-04 14:43:19-04	\N
244820038 	WR226 JACK CORNELIS	2018-09-25 18:05:01-04	\N
244820044 	MR BROWN	2012-11-17 11:58:15-05	\N
244820068 	AYRON V	2015-01-01 05:24:27-05	\N
244820092 	JOLINA	2016-06-28 03:01:17-04	\N
244820095 	DREAMCATCHER	2015-12-27 06:48:15-05	\N
244820141 	HERCULES	2012-02-20 09:14:40-05	\N
244820145 	HAMPSHIRE	2017-09-22 07:31:49-04	\N
244820146 	PROCYON  (PILOTS)	2014-08-01 20:29:30-04	\N
244820183 	VAN VERSENDAAL	2013-07-25 08:52:31-04	\N
244820192 	GROTE BEER	2016-02-19 20:45:39-05	\N
244820199 	KLOVNINGEN	2013-08-07 22:58:23-04	\N
244820227 	MAIN XXI	2012-08-24 10:02:32-04	\N
244820229 	AMBIANCE	2014-04-16 09:37:41-04	\N
244820278 	TOURIST	2018-01-28 23:16:30-05	\N
244820279 	GERO-B	2013-06-29 04:19:00-04	\N
244820290 	MART	2015-12-31 04:12:52-05	\N
244820294 	PONT 9	2014-12-25 16:38:18-05	\N
244820296 	PONT 4	2015-06-28 23:00:01-04	\N
244820297 	PONT 6	2012-10-29 11:17:12-04	\N
244820298 	PONT 7	2015-04-09 11:39:38-04	\N
244820299 	PONT 8	2012-04-21 04:51:20-04	\N
244820331 	CRISTINA	2016-05-22 23:11:31-04	\N
244820341 	ELEFTHERIA	2016-01-13 11:10:30-05	\N
244820369 	ONYX	2017-11-03 21:49:36-04	\N
244820385 	OCTOBER	2012-10-30 23:57:15-04	\N
244820392 	HULHUIZEN 1	2013-08-13 23:56:40-04	\N
244820397 	SIBO	2019-01-05 21:36:03-05	\N
244820404 	SVITZER SVEZIA	2012-02-19 15:17:41-05	\N
244820414 	EOS	2015-05-29 14:31:42-04	\N
244820431 	MAXIMA	2017-05-01 16:31:11-04	\N
244820548 	MERCURIUS	2012-05-25 12:03:49-04	\N
244820561 	OCEANS	2018-05-12 08:13:10-04	\N
244820666 	VOS STAR	2018-08-02 21:31:55-04	\N
244820731 	FILIA-MARIS	2017-04-01 18:42:30-04	\N
244820739 	KEIZERSKROON	2012-07-07 15:37:30-04	\N
244820756 	AMARO	2013-03-02 06:54:34-05	\N
244820768 	BLAUW	2016-02-13 00:23:46-05	\N
244820770 	AMBOLUX 1	2013-02-08 08:19:19-05	\N
244820786 	SEASTORY3	2012-12-17 14:00:10-05	\N
244820790 	DEUX DENTS PLUS	2016-06-23 01:51:02-04	\N
244820793 	IJZEREN HEIN	2019-01-23 06:26:32-05	\N
\.


--
-- Data for Name: trip; Type: TABLE DATA; Schema: bb2762; Owner: bb2762
--

COPY bb2762.trip (trip_id, ship_id, iscompleted, from_port, to_port, from_country, to_country, start_date, end_date) FROM stdin;
\.


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: bb2762; Owner: bb2762
--

SELECT pg_catalog.setval('bb2762.country_id_seq', 1, false);


--
-- Name: port_id_seq; Type: SEQUENCE SET; Schema: bb2762; Owner: bb2762
--

SELECT pg_catalog.setval('bb2762.port_id_seq', 1, false);


--
-- Name: ship_id_seq; Type: SEQUENCE SET; Schema: bb2762; Owner: bb2762
--

SELECT pg_catalog.setval('bb2762.ship_id_seq', 1, false);


--
-- Name: trip_trip_id_seq; Type: SEQUENCE SET; Schema: bb2762; Owner: bb2762
--

SELECT pg_catalog.setval('bb2762.trip_trip_id_seq', 1, false);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_name);


--
-- Name: port port_pkey; Type: CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.port
    ADD CONSTRAINT port_pkey PRIMARY KEY (port_id);


--
-- Name: ship ship_pkey; Type: CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.ship
    ADD CONSTRAINT ship_pkey PRIMARY KEY (ship_id);


--
-- Name: trip trip_pkey; Type: CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.trip
    ADD CONSTRAINT trip_pkey PRIMARY KEY (trip_id);


--
-- Name: trip trip_ship_id_end_date_key; Type: CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.trip
    ADD CONSTRAINT trip_ship_id_end_date_key UNIQUE (ship_id, end_date);


--
-- Name: trip trip_ship_id_start_date_key; Type: CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.trip
    ADD CONSTRAINT trip_ship_id_start_date_key UNIQUE (ship_id, start_date);


--
-- Name: trip trip_from_port_fkey; Type: FK CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.trip
    ADD CONSTRAINT trip_from_port_fkey FOREIGN KEY (from_port) REFERENCES bb2762.port(port_id) ON DELETE CASCADE;


--
-- Name: trip trip_to_port_fkey; Type: FK CONSTRAINT; Schema: bb2762; Owner: bb2762
--

ALTER TABLE ONLY bb2762.trip
    ADD CONSTRAINT trip_to_port_fkey FOREIGN KEY (to_port) REFERENCES bb2762.port(port_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

