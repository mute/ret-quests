function event_say(e)
    e.self:Say("Hello.  I suppose you need something out of your bank.");
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade);
end