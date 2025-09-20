// Placeholder for AI matchmaking algorithm
function matchParticipants(participants) {
  // Example: Simple random matching (replace with AI model later)
  let teams = [];
  for (let i = 0; i < participants.length; i += 2) {
    teams.push(participants.slice(i, i + 2));
  }
  return teams;
}

module.exports = { matchParticipants };
