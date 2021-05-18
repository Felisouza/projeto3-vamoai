--M�dia por temporada 
select epi.season, round(avg(epi.rating)::decimal, 2) "Notas m�dias" from got_episodes_v4_csv epi
group by epi.season
order by "Notas m�dias" desc ;

--Qual temporada tem melhor nota
select epi.season, round(avg(epi.rating)::decimal, 2) "Notas m�dias" from got_episodes_v4_csv epi
group by epi.season
order by "Notas m�dias" desc
limit 1
;
