state("fceux") 
{
 	byte zone_id:		0x003B1388, 0x0020;
	byte room_id: 		0x003B1388, 0x0052;
	byte areas:			0x003B1388, 0x00a0;
	byte ctrl_flag:		0x003B1388, 0x00e3; 
} 

state("nestopia")
{
	// base 0x0000 address of ROM : "nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x68;
	byte zone_id:		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x88; 	// 0x0020
	byte room_id: 		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0xba; 	// 0x0052
	byte areas:			"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x108;	// 0x00a0;
	byte ctrl_flag:		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x14b;	// 0x00e3
} 

split
{
		if(old.areas != current.areas)
			return(true);
		else if(current.areas == 0x1f && current.zone_id == 0xa3 && current.room_id == 0xa3 && current.ctrl_flag == 1)
			return(true);
		else
			return(false);
}

start
{	
	if(old.zone_id == 0x73 && current.zone_id != 0x73)	
		return(true);
	else
		return(false); 
}

reset 
{	
	if(current.zone_id == 0 && current.room_id == 0) 
		return(true);
	else
		return(false);
}

startup
{
	refreshRate = 60;
	
	settings.Add("main", false, "Ducktales AutoSplitter 0.01 by saturnin55");
	settings.Add("main0", false, "- Website : https://github.com/saturnin55/DucktalesAutoSplitter", "main");
	settings.Add("main1", false, "- Supported emulators : FCEUX, Netstopia", "main");
	settings.Add("main2", false, "- Note : Set 'Start Timer at' to -0.60 in the 'Edit Splits' screen");
}
