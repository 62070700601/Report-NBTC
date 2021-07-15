SELECT cqul.agent_id,concat(agent_profile.agent_name," ",agent_profile.agent_lastname) as full_name,
DATE01.date01,DATE02.date02,DATE03.date03,DATE04.date04,DATE05.date05,DATE06.date06,DATE07.date07,DATE08.date08,DATE09.date09,DATE10.date10,DATE11.date11,DATE12.date12,DATE13.date13,DATE14.date14,
DATE15.date15,DATE16.date16,DATE17.date17,DATE18.date18,DATE19.date19,DATE20.date20,DATE21.date21,DATE22.date22,DATE23.date23,DATE24.date24,DATE25.date25,DATE26.date26,DATE27.date27,DATE28.date28,
DATE29.date29,DATE30.date30,DATE31.date31

FROM call_quality_uuid_logs cqul
	LEFT JOIN callrecord ON callrecord.uuid = cqul.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = cqul.agent_id
    
-- DATE01
    left join (
				select call_quality_uuid_logs.agent_id as agentid01,
	case
	when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '01' then avg(call_quality_uuid_logs.score)
	else 0
	end as date01
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	   	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '01'
	group by agentid01
    ) DATE01 ON cqul.agent_id = DATE01.agentid01
    

-- DATE02    
	left join(
		select call_quality_uuid_logs.agent_id as agentid02,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '02' then avg(call_quality_uuid_logs.score)
		else 0
		end as date02
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	     	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '02'
	group by agentid02
    
    ) DATE02 ON cqul.agent_id = DATE02.agentid02
    
-- DATE03
	left join(
		select call_quality_uuid_logs.agent_id as agentid03,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '03' then avg(call_quality_uuid_logs.score)
		else 0
		end as date03
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	       	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '03'
	group by agentid03 

    ) DATE03 ON DATE03.agentid03 = cqul.agent_id 

-- DATE04
	left join(
		select call_quality_uuid_logs.agent_id as agentid04,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '04' then avg(call_quality_uuid_logs.score)
		else 0
		end as date04
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	     	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '04'
	group by agentid04 

    ) DATE04 ON DATE04.agentid04 = cqul.agent_id 

-- DATE05
left join(
		select call_quality_uuid_logs.agent_id as agentid05,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '05' then avg(call_quality_uuid_logs.score)
		else 0
		end as date05
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	     	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '05'
	group by agentid05

    ) DATE05 ON DATE05.agentid05 = cqul.agent_id 
    
-- DATE06
left join(
		select call_quality_uuid_logs.agent_id as agentid06,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '06' then avg(call_quality_uuid_logs.score)
		else 0
		end as date06
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	   	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '06'
	group by agentid06

    ) DATE06 ON DATE06.agentid06 = cqul.agent_id 
    
-- DATE07
left join(
		select call_quality_uuid_logs.agent_id as agentid07,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '07' then avg(call_quality_uuid_logs.score)
		else 0
		end as date07
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '07'
	group by agentid07

    ) DATE07 ON DATE07.agentid07 = cqul.agent_id 
    
-- DATE08
left join(
		select call_quality_uuid_logs.agent_id as agentid08,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '08' then avg(call_quality_uuid_logs.score)
		else 0
		end as date08
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	  	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '08'
	group by agentid08

    ) DATE08 ON DATE08.agentid08 = cqul.agent_id 

-- DATE09
left join(
		select call_quality_uuid_logs.agent_id as agentid09,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '09' then avg(call_quality_uuid_logs.score)
		else 0
		end as date09
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	  	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '09'
	group by agentid09

    ) DATE09 ON DATE09.agentid09 = cqul.agent_id 

-- DATE10
left join(
		select call_quality_uuid_logs.agent_id as agentid10,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '10' then avg(call_quality_uuid_logs.score)
		else 0
		end as date10
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	  	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '10'
	group by agentid10

    ) DATE10 ON DATE10.agentid10 = cqul.agent_id 
    
-- DATE11
left join(
		select call_quality_uuid_logs.agent_id as agentid11,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '11' then avg(call_quality_uuid_logs.score)
		else 0
		end as date11
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	    	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '11'
	group by agentid11

    ) DATE11 ON DATE11.agentid11 = cqul.agent_id 

-- DATE12
left join(
		select call_quality_uuid_logs.agent_id as agentid12,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '12' then avg(call_quality_uuid_logs.score)
		else 0
		end as date12
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '12'
	group by agentid12

    ) DATE12 ON DATE12.agentid12 = cqul.agent_id 

-- DATE13
left join(
		select call_quality_uuid_logs.agent_id as agentid13,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '13' then avg(call_quality_uuid_logs.score)
		else 0
		end as date13
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	     	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '13'
	group by agentid13

    ) DATE13 ON DATE13.agentid13 = cqul.agent_id 
    
-- DATE14
left join(
		select call_quality_uuid_logs.agent_id as agentid14,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '14' then avg(call_quality_uuid_logs.score)
		else 0
		end as date14
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '14'
	group by agentid14

    ) DATE14 ON DATE14.agentid14 = cqul.agent_id 
    
-- DATE15
left join(
		select call_quality_uuid_logs.agent_id as agentid15,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '15' then avg(call_quality_uuid_logs.score)
		else 0
		end as date15
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	  	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '15'
	group by agentid15

    ) DATE15 ON DATE15.agentid15 = cqul.agent_id 

-- DATE16
left join(
		select call_quality_uuid_logs.agent_id as agentid16,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '16' then avg(call_quality_uuid_logs.score)
		else 0
		end as date16
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	   	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '16'
	group by agentid16

    ) DATE16 ON DATE16.agentid16 = cqul.agent_id 

-- DATE17
left join(
		select call_quality_uuid_logs.agent_id as agentid17,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '17' then avg(call_quality_uuid_logs.score)
		else 0
		end as date17
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '17'
	group by agentid17

    ) DATE17 ON DATE17.agentid17 = cqul.agent_id
    
-- DATE18
left join(
		select call_quality_uuid_logs.agent_id as agentid18,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '18' then avg(call_quality_uuid_logs.score)
		else 0
		end as date18
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	  	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '18'
	group by agentid18

    ) DATE18 ON DATE18.agentid18 = cqul.agent_id

-- DATE19
left join(
		select call_quality_uuid_logs.agent_id as agentid19,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '19' then avg(call_quality_uuid_logs.score)
		else 0
		end as date19
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '19'
	group by agentid19

    ) DATE19 ON DATE19.agentid19 = cqul.agent_id

-- DATE20
left join(
		select call_quality_uuid_logs.agent_id as agentid20,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d')  = '20' then avg(call_quality_uuid_logs.score)
		else 0
		end as date20
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	  	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '20'
	group by agentid20

    ) DATE20 ON DATE20.agentid20 = cqul.agent_id
    

-- DATE21
left join(
		select call_quality_uuid_logs.agent_id as agentid21,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d')  = '21' then avg(call_quality_uuid_logs.score)
		else 0
		end as date21
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '21'
	group by agentid21

    ) DATE21 ON DATE21.agentid21 = cqul.agent_id

-- DATE22
left join(
		select call_quality_uuid_logs.agent_id as agentid22,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d')  = '22' then avg(call_quality_uuid_logs.score)
		else 0
		end as date22
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
		 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '22'
	group by agentid22

    ) DATE22 ON DATE22.agentid22 = cqul.agent_id

-- DATE23
left join(
		select call_quality_uuid_logs.agent_id as agentid23,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '23' then avg(call_quality_uuid_logs.score)
		else 0
		end as date23
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	   	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '23'
	group by agentid23

    ) DATE23 ON DATE23.agentid23 = cqul.agent_id
    
-- DATE24
left join(
		select call_quality_uuid_logs.agent_id as agentid24,
		case 
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '24' then avg(call_quality_uuid_logs.score)
		else 0
		end as date24
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	    	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '24'
	group by agentid24

    ) DATE24 ON DATE24.agentid24 = cqul.agent_id
    
-- DATE25
left join(
		select call_quality_uuid_logs.agent_id as agentid25,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '25' then avg(call_quality_uuid_logs.score)
		else 0
		end as date25
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	   	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '25'
	group by agentid25

    ) DATE25 ON DATE25.agentid25 = cqul.agent_id
    
-- DATE26
left join(
		select call_quality_uuid_logs.agent_id as agentid26,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '26' then avg(call_quality_uuid_logs.score)
		else 0
		end as date26
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	    	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '26'
	group by agentid26

    ) DATE26 ON DATE26.agentid26 = cqul.agent_id

-- DATE27
left join(
		select call_quality_uuid_logs.agent_id as agentid27,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '27' then avg(call_quality_uuid_logs.score)
		else 0
		end as date27
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
		DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '27'
	group by agentid27

    ) DATE27 ON DATE27.agentid27 = cqul.agent_id

-- DATE28
left join(
		select call_quality_uuid_logs.agent_id as agentid28,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '28' then avg(call_quality_uuid_logs.score)
		else 0
		end as date28
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '28'
	group by agentid28

    ) DATE28 ON DATE28.agentid28 = cqul.agent_id
    
-- DATE29
left join(
		select call_quality_uuid_logs.agent_id as agentid29,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '29' then avg(call_quality_uuid_logs.score)
		else 0
		end as date29
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
		DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '29'
	group by agentid29

    ) DATE29 ON DATE29.agentid29 = cqul.agent_id

-- DATE30
left join(
		select call_quality_uuid_logs.agent_id as agentid30,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '30' then avg(call_quality_uuid_logs.score)
		else 0
		end as date30
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
		DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '30'
	group by agentid30

    ) DATE30 ON DATE30.agentid30 = cqul.agent_id
    
-- DATE31
left join(
		select call_quality_uuid_logs.agent_id as agentid31,
		case
		when DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '31'then avg(call_quality_uuid_logs.score)
		else 0
		end as date31
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
	 	DATE(callrecord.start_stamp) BETWEEN  $P{start_date} AND $P{end_date}
		and DATE_FORMAT(DATE(callrecord.start_stamp),'%d') = '31'
	group by agentid31

    ) DATE31 ON DATE31.agentid31 = cqul.agent_id

-- AVERAGE ALL
	left join(
		select call_quality_uuid_logs.agent_id as agentidall,avg(call_quality_uuid_logs.score) AS scoreavg
		
	FROM call_quality_uuid_logs 
	LEFT JOIN callrecord ON callrecord.uuid = call_quality_uuid_logs.uuid
	LEFT JOIN agent_profile ON agent_profile.agent_id = call_quality_uuid_logs.agent_id
    WHERE 
    DATE(callrecord.start_stamp) BETWEEN $P{start_date} AND $P{end_date}
	   
	group by agentid05

    ) DATEAVG ON DATEAVG.agentidall = cqul.agent_id 

WHERE 
DATE(callrecord.start_stamp) BETWEEN $P{start_date} AND $P{end_date}
AND find_in_set(agent_profile.agent_id, $P{agent_id_s})
group by cqul.agent_id
ORDER BY  full_name