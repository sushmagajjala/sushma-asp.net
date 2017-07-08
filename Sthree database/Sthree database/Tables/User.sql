CREATE TABLE [dbo].[User]
(
	[FirstName] NVARCHAR(10) NOT NULL PRIMARY KEY, 
    [LastName] NVARCHAR(10) NULL, 
    [UserName] NVARCHAR(10) NOT NULL, 
    [Password] NVARCHAR(15) NOT NULL, 
    [Gender] BIT NOT NULL, 
    [Email] NVARCHAR(30) NOT NULL, 
    [PhoneNumber] NVARCHAR(15) NOT NULL
)
