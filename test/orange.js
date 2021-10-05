const Orange = artifacts.require("Orange");

contract("Test orange", async (accounts) => {
  it("should add and get new skill", async () => {
    const orange = await Orange.deployed();

    await orange.addSkill(
      123,
      234,
      "learning",
      "coursera deep learning",
      4,
      "machine learning",
      "deep learning",
      "neural network",
      "basics of neural networks",
      ""
    );
    const res1 = await orange.getSkills(123);

    assert.equal(res1.length, 1);
    const skill = res1[0];
    assert.equal(skill.isValid, true);
    assert.equal(skill.skillId, 234);
    assert.equal(skill.track, "learning");
    assert.equal(skill.trackDetails, "coursera deep learning");
    assert.equal(skill.profiency, 4);
    assert.equal(skill.levelOne, "machine learning");
    assert.equal(skill.levelTwo, "deep learning");
    assert.equal(skill.levelThree, "neural network");
    assert.equal(skill.levelFour, "basics of neural networks");
    assert.equal(skill.levelOthers, "");
  });
});
