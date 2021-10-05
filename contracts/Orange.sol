// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Orange {
    // employee-skill mapping
    struct AcquiredSkill {
        // ref: https://ethereum.stackexchange.com/a/13029
        bool isValid;
        uint64 skillId;
        // uint64 employeeId;

        // track could be: learning, experience
        string track;
        // learning - course details
        // experience - project name/ID
        string trackDetails;
        // profiency level - 1 to 5?
        uint8 profiency;
        // skill's heirarchy
        string levelOne;
        string levelTwo;
        string levelThree;
        string levelFour;
        string levelOthers; // if we need more than 4 levels
    }
    mapping(uint64 => AcquiredSkill[]) employeeSkillMap;

    // TODO: function to get skills of an employee

    function addSkill(
        uint64 empid,
        uint64 skillId,
        string memory track,
        string memory trackDetails,
        uint8 proficieny,
        string memory levelOne,
        string memory levelTwo,
        string memory levelThree,
        string memory levelFour,
        string memory levelOthers
    ) public {
        employeeSkillMap[empid].push(
            AcquiredSkill(
                true,
                skillId,
                track,
                trackDetails,
                proficieny,
                levelOne,
                levelTwo,
                levelThree,
                levelFour,
                levelOthers
            )
        );
    }

    function getSkills(uint64 empid)
        public
        view
        returns (AcquiredSkill[] memory)
    {
        return employeeSkillMap[empid];
    }

    constructor() public {}
}
