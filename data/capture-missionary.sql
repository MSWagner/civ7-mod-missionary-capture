-- captureable-missionary.sql
-- Author: MWS

--------------------------------------------------------------
-- Types Table Update
--------------------------------------------------------------

INSERT OR IGNORE INTO Types (Type, Kind)
VALUES ('ABILITY_MISSIONARY_CAPTURE', 'KIND_ABILITY');

--------------------------------------------------------------
-- Units Table Update
--------------------------------------------------------------
UPDATE Units
SET 
    Name = 'LOC_UNIT_MISSIONARY_NAME',
    Description = 'LOC_UNIT_MISSIONARY_DESCRIPTION',
    BaseSightRange = 1,
    BaseMoves = 4,
    UnitMovementClass = 'UNIT_MOVEMENT_CLASS_FOOT',
    Domain = 'DOMAIN_LAND',
    CoreClass = 'CORE_CLASS_MILITARY',
    FormationClass = 'FORMATION_CLASS_CIVILIAN',
    SpreadCharges = 3,
    ZoneOfControl = 0
WHERE UnitType = 'UNIT_MISSIONARY';

--------------------------------------------------------------
-- Unit_Stats Table Update
--------------------------------------------------------------
INSERT OR IGNORE INTO Unit_Stats (UnitType, Combat)
VALUES ('UNIT_MISSIONARY', 0);

--------------------------------------------------------------
-- TypeTags Table Update
--------------------------------------------------------------

INSERT OR IGNORE INTO Tags (Tag, Category)
VALUES ('UNIT_CLASS_RELIGIOUS', 'UNIT_CLASS');

---------------------------------------------------------------
-- UnitClass_Abilities Table Update
---------------------------------------------------------------

INSERT OR IGNORE INTO UnitClass_Abilities (UnitAbilityType, UnitClassType)
VALUES ('ABILITY_MISSIONARY_CAPTURE', 'UNIT_CLASS_RELIGIOUS');

--------------------------------------------------------------
-- UnitAbilities Table Update
--------------------------------------------------------------

INSERT OR IGNORE INTO UnitAbilities (UnitAbilityType, Name, Description)
VALUES ('ABILITY_MISSIONARY_CAPTURE', 'Capture missionary', 'Allows other units to capture the missionary.');

--------------------------------------------------------------
-- UnitAbilityModifiers Table Update
--------------------------------------------------------------

INSERT OR IGNORE INTO UnitAbilityModifiers (UnitAbilityType, ModifierId)
VALUES ('ABILITY_MISSIONARY_CAPTURE', 'TREASURE_FLEET_MOD_CAPTURE');

--------------------------------------------------------------
-- UnitCaptures Table Update
--------------------------------------------------------------

INSERT OR IGNORE INTO UnitCaptures (CapturedUnitType, BecomesUnitType)
VALUES ('UNIT_MISSIONARY', 'UNIT_MISSIONARY');