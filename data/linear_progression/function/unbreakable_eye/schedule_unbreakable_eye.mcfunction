# Tag to prevent rescheduling (runs once per eye)
tag @s add unbreakable

# Schedule the run_unbrakable_eye function to run
schedule function linear_progression:unbreakable_eye/run_unbreakable_eye 80t append
