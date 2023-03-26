# i210531_Assignment_2_DB

ERD Explanation:

The ERD includes the following entities: AIRPLANE, PLANE_TYPE, HANGAR, OWNER, EMPLOYEE, PILOT, PERSON, CORPORATION, SERVICE.

AIRPLANE entity has attributes such as registration number [Reg#], plane type [OF_TYPE], and hangar [STORED_IN]. The PLANE_TYPE entity has attributes such as model number [Model], capacity [Capacity], and weight [Weight]. The HANGAR entity has attributes such as number [Number], capacity [Capacity], and location [Location].

The OWNER entity is divided into two subclasses: PERSON and CORPORATION. Both have attributes such as name [Name], address [Address], and telephone number [Phone]. The EMPLOYEE entity is a subclass of PERSON with specific attributes such as salary [Salary] and shift worked [Shift]. The PILOT entity is also a subclass of PERSON with specific attributes such as license number [Lic_num] and restrictions [Restr].

The relationships between the entities are represented by the relationship instances such as OWNS, MAINTAIN, PLANE_SERVICE, FLIES, and WORKS_ON. The OWNS relationship instance relates an AIRPLANE to an OWNER with the purchase date [Pdate] attribute. The MAINTAIN relationship instance relates an EMPLOYEE to a service record [SERVICE]. The PLANE_SERVICE relationship instance relates a PLANE_TYPE to a number of SERVICE records. The SERVICE entity has attributes such as date of maintenance [Date], hours spent on work [Hours], and type of work done [Work_code]. The FLIES relationship instance relates a PILOT to the types of planes they are authorized to fly. The WORKS_ON relationship instance relates an EMPLOYEE to the types of planes they can do maintenance work on.

Overall, the ERD represents the relationships between the various entities involved in the small private airport database, including airplanes, owners, employees, pilots, and their respective attributes and relationships.
