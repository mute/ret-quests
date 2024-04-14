#Just a little flavor for when XTC kills someone.

sub EVENT_SLAY {
  quest::say("Odd, we normally have to drag sacrifices kicking and screaming, but this one all but throws himself at us.");
}

sub EVENT_DEATH_COMPLETE {
  quest::debug("Event Death Complete");
  plugin::handle_death($npc, $x, $y, $z, $entity_list);
}

sub EVENT_KILLED_MERIT {
  my $name = $npc->GetCleanName();
  quest::debug("Event Killed Merit $name");
  plugin::handle_killed_merit($npc, $client, $entity_list);
}