update euroleague 
set Team = 'Zalgiris'
where Team= '?algiris'

update euroleague 
set Team = 'Bayern Munchen'
where Team= 'Bayern M?nchen'

update euroleague 
set Team = 'Fenerbahce Beko'
where Team= 'Fenerbah?e Beko'

select Team ,sum(FG) as FG, sum(FGA) as FGA, 
sum(2P) as 2P,sum(2PA)as 2PA, 
sum(3P) as 3P,sum(3PA) as 3PA,  
sum(FT) as FT, sum(FTA) as FTA, 
sum(AST) as Asists, sum(BLK) as Blocks, sum(TOV) as Turnovers, 
sum(ORB) as Total_ORB, sum(DRB) as Total_DRB, sum(TRB) as Total_RB, 
sum(PTS) as Points
from euroleague
group by Team 
order by Team asc;

select el.Team ,sum(el.FG)/gp.Games_played as FG, sum(el.FGA)/gp.Games_played as FGA, 
sum(el.2P)/gp.Games_played as 2P,sum(el.2PA)/gp.Games_played as 2PA, 
sum(el.3P)/gp.Games_played as 3P,sum(el.3PA)/gp.Games_played as 3PA,  
sum(el.FT)/gp.Games_played as FT, sum(el.FTA)/gp.Games_played as FTA, 
sum(el.AST)/gp.Games_played as Asists, sum(el.BLK)/gp.Games_played as Blocks, sum(el.TOV)/gp.Games_played as Turnovers, 
sum(el.ORB)/gp.Games_played as Total_ORB, sum(el.DRB)/gp.Games_played as Total_DRB, sum(el.TRB)/gp.Games_played as Total_RB, 
sum(el.PTS)/gp.Games_played as Points
from euroleague as el
inner join games_played as gp
on el.Team = gp.Team
group by el.Team 
order by el.Team asc;


