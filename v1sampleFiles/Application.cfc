﻿component{
	this.name='learncfinaweek';
	this.datasource='learncfinaweek';
	this.applicationTimeout=CreateTimeSpan(10, 0, 0, 0);
	this.sessionManagement=true;
	this.sessionTimeout=CreateTimeSpan(0, 0, 30, 0);
	
	function onApplicationStart(){
		application.myName='Simon';
		application.myPosition='A Great Developer';
		//application.utilities = CreateObject('cfc.utilities');
		return true;
	}
	
	function onRequestStart(string targetPage){
		if(structKeyExists(url, 'reload')){
			onApplicationStart();
		}

		//if ( !DirectoryExists( variables.dbPath ) ) {
			//need to run the install/insertDBdata.cfm file for just the insert db info.

            //include "buildDB.cfm";
            //location("/", "false");
       // }
        //else {
            // include arguments.targetPage;
        //}
        return;
	}
}