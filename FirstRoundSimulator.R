#' First Round Simulator
#' @param SRS points above/below average for Simple Rating System
#' @param SOS points above/below average Strength of Schedule
#' @param team_pts total points team scored in regular season
#' @param PPG points per game
#' @param opp_G # of games opponent played in regular season
#' @param opp_SRS opponent's SRS
#' @param opp_SOS opponent's SOS
#' @param opp_Home_L opponent's # of Home Losses
#' @param opp_Away_W opponent's # of Away Wins
#' @param opp_3PA total # of 3 point shots opponent attempted
#' @param opp_PPG_allowed average PPG opponent allowed
#' @return expected points scored based on given statistics
#' @export


simulateFirstRound <- function(SRS,SOS,team_pts,PPG,opp_G,opp_SRS,opp_SOS,opp_Home_L,
                               opp_Away_W,opp_3PA,opp_PPG_allowed) {
  points_scored = -13.875496052 + 0.064792743*SRS + 0.180096795*SOS + 0.013146887*team_pts +
    0.198179271*PPG + -0.574819383*opp_G + -0.019152246*opp_SRS + -0.157664206*opp_SOS +
    0.037188666*opp_Home_L + 0.128940125*opp_Away_W + -0.003212932*opp_3PA + 0.833382220*opp_PPG_allowed

  return(points_scored)
}
