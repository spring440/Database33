USE [s17guest33]
GO
/****** Object:  StoredProcedure [dbo].[classSelect]    Script Date: 5/18/2017 7:18:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Bryant Barron
--Comp440 final

ALTER procedure [dbo].[classSelect](
	@difficulty varchar(25),
	@loc_name varchar(25)
)
as 
begin
	Select C.difficulty, CT.location_id, L.loc_name
	from class C
	left join class_track CT on C.class_id = CT.class_id
	left join location  L on CT.location_id = L.location_id
	where loc_name = @loc_name and difficulty = @difficulty
end

