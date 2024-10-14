{

    services.i2pd.proto = {
            http = {
                enable = true;
            };
            httpProxy = {
                enable = true;
                outproxy = "purokishi.i2p";
            };
            socksProxy = {
                enable = true;
            };
            sam = {
                enable = true;
            };
        };

}
