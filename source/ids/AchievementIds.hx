package ids;

import extension.leaderboards.Achievement;

/**
   Class that holds the ids for achievements created on the dashboards of the various leaderboard/achievement services for the demo
**/
class AchievementIds
{
	private function new() {}
	
	public static var get(default, never):AchievementIds = new AchievementIds();
	
	public var tenTaps:Achievement = new Achievement( {
		googlePlayId: "TODO",
		gameCenterId: "TODO",
		kongregateId: "TODO",
		newgroundsId: "TODO",
		gameJoltId: 0,
		amazonId: "TODO",
		steamworksId: "TODO"
	});
}