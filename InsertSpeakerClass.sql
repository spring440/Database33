create procedure insertSpeaker
	@speaker varchar(255),
	@class text
AS
begin
	insert into presenter(name) values (@speaker)
end;
begin
	insert into class(title) values (@class)
end;






