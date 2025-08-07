-- SetupParameters
-- Author: MWS
--------------------------------------------------------------

-- Parameters
--------------------------------------------------------------
INSERT OR IGNORE INTO Parameters
		(ParameterID,							              Name,										                  Description,									                  Domain,								                  Hash,	  DefaultValue,							                    ConfigurationGroup,	  ConfigurationKey,						          GroupId,						            ChangeableAfterGameStart,	SortIndex)
VALUES
    ('MWS-MissionaryOpenBorderType',				'LOC_MWS_MISSIONARY_OPEN_BORDER_TYPE',		'LOC_MWS_MISSIONARY_OPEN_BORDER_TYPE_DESC',			'MWS-MissionaryOpenBorder',				      0,		  'MWS_MISSIONARY_OPEN_BORDER_NOT_REQUIRED',		'Game',				        'MWS-MissionaryOpenBorderType',				'GameOptions',					        0,							          142);
--------------------------------------------------------------

-- DomainValues
--------------------------------------------------------------
INSERT OR IGNORE INTO DomainValues
		(Domain,								                  Value,									                    Name,										                          Description,									                        SortIndex)
VALUES	
    ('MWS-MissionaryOpenBorder',					    'MWS_MISSIONARY_OPEN_BORDER_NOT_REQUIRED',	'LOC_MWS_MISSIONARY_OPEN_BORDER_NOT_REQUIRED',	  'LOC_MWS_MISSIONARY_OPEN_BORDER_NOT_REQUIRED_DESC',		10),
		('MWS-MissionaryOpenBorder',					    'MWS_MISSIONARY_OPEN_BORDER_REQUIRED',			'LOC_MWS_MISSIONARY_OPEN_BORDER_REQUIRED',			  'LOC_MWS_MISSIONARY_OPEN_BORDER_REQUIRED_DESC',		    20);
--------------------------------------------------------------
