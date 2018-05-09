package ids;

/**
   Class that holds the ids for leaderboards created on the dashboards of the various leaderboard/achievement services for the demo
**/
class LeaderboardIds {
	#if googleplayleaderboards
	static inline public var DEMO_LEADERBOARD_ID:String = "TODO";
	#elseif gamecircleleaderboards
	static inline public var DEMO_LEADERBOARD_ID:String = "TODO";
	#elseif gamecenterleaderboards
	static inline public var DEMO_LEADERBOARD_ID:String = "TODO";
	#elseif gamejoltleaderboards
	static inline public var DEMO_LEADERBOARD_ID:Int = 0;
	#elseif kongregateleaderboards
	static inline public var DEMO_LEADERBOARD_ID:String = "TODO";
	#else
	//#error "No leaderboard ids available for this platform"
	static inline public var DEMO_LEADERBOARD_ID:String = "TODO";
	#end
}