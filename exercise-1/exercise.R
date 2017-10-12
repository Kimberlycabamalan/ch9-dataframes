# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
seahawks.points <- c(9, 12, 27, 46)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
seahawks.points.allowed <- c(17, 9, 33, 18)

# Combine your two vectors into a dataframe
seahawks <- data.frame(seahawks.points, seahawks.points.allowed, stringsAsFactors=FALSE)

# Create a new column "diff" that is the difference in points
seahawks$diff <- seahawks$seahawks.points-seahawks$seahawks.points.allowed
print (seahawks$diff)

# Create a new column "won" which is TRUE if the Seahawks wom
seahawks$won <- seahawks.points>seahawks.points.allowed
print (seahawks$won)

# Create a vector of the opponents
opponents <- c("Packers", "49ers", "Titans", "Colts")

# Assign your dataframe rownames of their opponents
seahawks$opponents <- opponents
print (seahawks$opponents)
