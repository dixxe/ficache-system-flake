{

    services.i2pd.outTunnels = {

    	MinecraftServer = {
	    enable = true;
            address = "127.0.0.1";
            port = 25565;
            destination = "abnrfgqqsoy6d3dlc7dzq64c5uir5vd7hxy7s7weo6qvmzigf34a.b32.i2p";
            keys = "i2pcraft.dat"; 
        };

        IRC = {
            enable = true;
            address = "127.0.0.1";
            port = 6669;
            destination = "ckkpssingzjiaqtrfakkjybu2y4fxuo6chvraxg575lcrh3nvu4a.b32.i2p";
            destinationPort = 6667;
            keys = "irc-client-key.dat";
        };

    }; 

}
