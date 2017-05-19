USE [s17guest33]
GO
/****** Object:  StoredProcedure [dbo].[classSelect]    Script Date: 5/18/2017 5:57:11 PM ******/
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
	Select class.difficulty, class_track.location_id, location.loc_name
	from class
	inner join class_track on class.class_id = class_track.class_id
	inner join location on class_track.location_id = location.location_id
	where class_track.location_id = @loc_name
	and class.difficulty = @difficulty 
end


	
Execute classSelect	'intermediate','budapest';
