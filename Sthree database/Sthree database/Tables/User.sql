CREATE TABLE [dbo].[User]
(
	[FirstName] NVARCHAR(10) NOT NULL , 
    [LastName] NVARCHAR(10) NULL, 
    [UserName] NVARCHAR(10) NOT NULL, 
    [Password] NVARCHAR(15) NOT NULL, 
    [Gender] BIT NOT NULL, 
    [Address] NVARCHAR(200) NOT NULL, 
    [Email Id] NVARCHAR(30) NOT NULL, 
    [PhoneNum] NVARCHAR(20) NOT NULL
)
