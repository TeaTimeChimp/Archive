	TITLE	E:\WORKSHOP\os98\ice32\IDT.cpp
	.386P
include listing.inc
if @Version gt 510
.model FLAT
else
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT DWORD USE32 PUBLIC 'BSS'
_BSS	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest00@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest01@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest02@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest03@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest04@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest05@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest06@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest07@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest08@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest09@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest10@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest11@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest12@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest13@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest14@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest15@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest16@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest17@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest18@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest19@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest20@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest21@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest22@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest23@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest24@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest25@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest26@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest27@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest28@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest29@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest30@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest31@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest32@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest33@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest34@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest35@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest36@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest37@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest38@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest39@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest40@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest41@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest42@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest43@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest44@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest45@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest46@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest47@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest48@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest49@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest50@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest51@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest52@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest53@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest54@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest55@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest56@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest57@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest58@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest59@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest60@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest61@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest62@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest63@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest64@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest65@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest66@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest67@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest68@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest69@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest70@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest71@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest72@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest73@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest74@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest75@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest76@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest77@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest78@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest79@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest80@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest81@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest82@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest83@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest84@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest85@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest86@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest87@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest88@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest89@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest90@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest91@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest92@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest93@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest94@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest95@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest96@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest97@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest98@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest99@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9A@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9B@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9C@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9D@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9E@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9F@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA0@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA1@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA2@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA3@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA4@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA5@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA6@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA7@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA8@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA9@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAA@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAB@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAC@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAD@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAE@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAF@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB0@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB1@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB2@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB3@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB4@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB5@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB6@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB7@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB8@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB9@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBA@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBB@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBC@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBD@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBE@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBF@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC0@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC1@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC2@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC3@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC4@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC5@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC6@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC7@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC8@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC9@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCA@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCB@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCC@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCD@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCE@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCF@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD0@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD1@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD2@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD3@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD4@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD5@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD6@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD7@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD8@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD9@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDA@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDB@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDC@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDD@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDE@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDF@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE0@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE1@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE2@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE3@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE4@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE5@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE6@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE7@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE8@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE9@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEA@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEB@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEC@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestED@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEE@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEF@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF0@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF1@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF2@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF3@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF4@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF5@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF6@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF7@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF8@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF9@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFA@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFB@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFC@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFD@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFE@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFF@CIDT@@CAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCIDT@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CIDT@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pRegisteredISRs@CIDT@@0PAPAUSRegisteredISR@@A ; CIDT::m_pRegisteredISRs
_BSS	SEGMENT
?m_pRegisteredISRs@CIDT@@0PAPAUSRegisteredISR@@A DD 0ffH DUP (?) ; CIDT::m_pRegisteredISRs
_BSS	ENDS
PUBLIC	??0CIDT@@QAE@PAXG@Z				; CIDT::CIDT
PUBLIC	??_7CIDT@@6B@					; CIDT::`vftable'
PUBLIC	??_GCIDT@@UAEPAXI@Z				; CIDT::`scalar deleting destructor'
PUBLIC	??_ECIDT@@UAEPAXI@Z				; CIDT::`vector deleting destructor'
EXTRN	??0CDescriptorTable@@QAE@PAXG@Z:NEAR		; CDescriptorTable::CDescriptorTable
;	COMDAT ??_7CIDT@@6B@
; File E:\WORKSHOP\os98\ice32\IDT.cpp
CONST	SEGMENT
??_7CIDT@@6B@ DD FLAT:??_ECIDT@@UAEPAXI@Z		; CIDT::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_pBase$ = 8
_Entries$ = 12
_this$ = -4
??0CIDT@@QAE@PAXG@Z PROC NEAR				; CIDT::CIDT

; 21   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ax, WORD PTR _Entries$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pBase$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0CDescriptorTable@@QAE@PAXG@Z		; CDescriptorTable::CDescriptorTable
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx], OFFSET FLAT:??_7CIDT@@6B@ ; CIDT::`vftable'

; 22   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	8
??0CIDT@@QAE@PAXG@Z ENDP				; CIDT::CIDT
_TEXT	ENDS
PUBLIC	??1CIDT@@UAE@XZ					; CIDT::~CIDT
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCIDT@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCIDT@@UAEPAXI@Z PROC NEAR				; CIDT::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CIDT@@UAE@XZ				; CIDT::~CIDT
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2433
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2433:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCIDT@@UAEPAXI@Z ENDP				; CIDT::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CDescriptorTable@@UAE@XZ:NEAR		; CDescriptorTable::~CDescriptorTable
_TEXT	SEGMENT
_this$ = -4
??1CIDT@@UAE@XZ PROC NEAR				; CIDT::~CIDT

; 26   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CIDT@@6B@ ; CIDT::`vftable'

; 27   : 
; 28   : }

	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDescriptorTable@@UAE@XZ		; CDescriptorTable::~CDescriptorTable
	mov	esp, ebp
	pop	ebp
	ret	0
??1CIDT@@UAE@XZ ENDP					; CIDT::~CIDT
_TEXT	ENDS
PUBLIC	?callHandlerChain@CIDT@@CAXE@Z			; CIDT::callHandlerChain
_TEXT	SEGMENT
_iInterrupt$ = 8
_pRegisteredISR$ = -4
?callHandlerChain@CIDT@@CAXE@Z PROC NEAR		; CIDT::callHandlerChain

; 41   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 42   : 	SRegisteredISR* pRegisteredISR;
; 43   : 
; 44   : 	// Get first handler in the chain.
; 45   : 	pRegisteredISR = m_pRegisteredISRs[iInterrupt];

	mov	eax, DWORD PTR _iInterrupt$[ebp]
	and	eax, 255				; 000000ffH
	mov	ecx, DWORD PTR ?m_pRegisteredISRs@CIDT@@0PAPAUSRegisteredISR@@A[eax*4]
	mov	DWORD PTR _pRegisteredISR$[ebp], ecx
$L2442:

; 46   : 	while( pRegisteredISR!=NULL )

	cmp	DWORD PTR _pRegisteredISR$[ebp], 0
	je	SHORT $L2443

; 48   : 		// Call handler procedure.
; 49   : 		pRegisteredISR->m_pHandler();

	mov	edx, DWORD PTR _pRegisteredISR$[ebp]
	call	DWORD PTR [edx]

; 50   : 
; 51   : 		// Move to next handler.
; 52   : 		pRegisteredISR = pRegisteredISR->m_pNext;

	mov	eax, DWORD PTR _pRegisteredISR$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pRegisteredISR$[ebp], ecx

; 53   : 	}

	jmp	SHORT $L2442
$L2443:

; 54   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?callHandlerChain@CIDT@@CAXE@Z ENDP			; CIDT::callHandlerChain
_TEXT	ENDS
PUBLIC	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler
PUBLIC	?interruptServiceRequest00@CIDT@@CAXXZ		; CIDT::interruptServiceRequest00
PUBLIC	?interruptServiceRequest01@CIDT@@CAXXZ		; CIDT::interruptServiceRequest01
PUBLIC	?interruptServiceRequest02@CIDT@@CAXXZ		; CIDT::interruptServiceRequest02
PUBLIC	?interruptServiceRequest03@CIDT@@CAXXZ		; CIDT::interruptServiceRequest03
PUBLIC	?interruptServiceRequest04@CIDT@@CAXXZ		; CIDT::interruptServiceRequest04
PUBLIC	?interruptServiceRequest05@CIDT@@CAXXZ		; CIDT::interruptServiceRequest05
PUBLIC	?interruptServiceRequest06@CIDT@@CAXXZ		; CIDT::interruptServiceRequest06
PUBLIC	?interruptServiceRequest07@CIDT@@CAXXZ		; CIDT::interruptServiceRequest07
PUBLIC	?interruptServiceRequest08@CIDT@@CAXXZ		; CIDT::interruptServiceRequest08
PUBLIC	?interruptServiceRequest09@CIDT@@CAXXZ		; CIDT::interruptServiceRequest09
PUBLIC	?interruptServiceRequest0A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest0A
PUBLIC	?interruptServiceRequest0B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest0B
PUBLIC	?interruptServiceRequest0C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest0C
PUBLIC	?interruptServiceRequest0D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest0D
PUBLIC	?interruptServiceRequest0E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest0E
PUBLIC	?interruptServiceRequest0F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest0F
PUBLIC	?interruptServiceRequest10@CIDT@@CAXXZ		; CIDT::interruptServiceRequest10
PUBLIC	?interruptServiceRequest11@CIDT@@CAXXZ		; CIDT::interruptServiceRequest11
PUBLIC	?interruptServiceRequest12@CIDT@@CAXXZ		; CIDT::interruptServiceRequest12
PUBLIC	?interruptServiceRequest13@CIDT@@CAXXZ		; CIDT::interruptServiceRequest13
PUBLIC	?interruptServiceRequest14@CIDT@@CAXXZ		; CIDT::interruptServiceRequest14
PUBLIC	?interruptServiceRequest15@CIDT@@CAXXZ		; CIDT::interruptServiceRequest15
PUBLIC	?interruptServiceRequest16@CIDT@@CAXXZ		; CIDT::interruptServiceRequest16
PUBLIC	?interruptServiceRequest17@CIDT@@CAXXZ		; CIDT::interruptServiceRequest17
PUBLIC	?interruptServiceRequest18@CIDT@@CAXXZ		; CIDT::interruptServiceRequest18
PUBLIC	?interruptServiceRequest19@CIDT@@CAXXZ		; CIDT::interruptServiceRequest19
PUBLIC	?interruptServiceRequest1A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest1A
PUBLIC	?interruptServiceRequest1B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest1B
PUBLIC	?interruptServiceRequest1C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest1C
PUBLIC	?interruptServiceRequest1D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest1D
PUBLIC	?interruptServiceRequest1E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest1E
PUBLIC	?interruptServiceRequest1F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest1F
PUBLIC	?interruptServiceRequest20@CIDT@@CAXXZ		; CIDT::interruptServiceRequest20
PUBLIC	?interruptServiceRequest21@CIDT@@CAXXZ		; CIDT::interruptServiceRequest21
PUBLIC	?interruptServiceRequest22@CIDT@@CAXXZ		; CIDT::interruptServiceRequest22
PUBLIC	?interruptServiceRequest23@CIDT@@CAXXZ		; CIDT::interruptServiceRequest23
PUBLIC	?interruptServiceRequest24@CIDT@@CAXXZ		; CIDT::interruptServiceRequest24
PUBLIC	?interruptServiceRequest25@CIDT@@CAXXZ		; CIDT::interruptServiceRequest25
PUBLIC	?interruptServiceRequest26@CIDT@@CAXXZ		; CIDT::interruptServiceRequest26
PUBLIC	?interruptServiceRequest27@CIDT@@CAXXZ		; CIDT::interruptServiceRequest27
PUBLIC	?interruptServiceRequest28@CIDT@@CAXXZ		; CIDT::interruptServiceRequest28
PUBLIC	?interruptServiceRequest29@CIDT@@CAXXZ		; CIDT::interruptServiceRequest29
PUBLIC	?interruptServiceRequest2A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest2A
PUBLIC	?interruptServiceRequest2B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest2B
PUBLIC	?interruptServiceRequest2C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest2C
PUBLIC	?interruptServiceRequest2D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest2D
PUBLIC	?interruptServiceRequest2E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest2E
PUBLIC	?interruptServiceRequest2F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest2F
PUBLIC	?interruptServiceRequest30@CIDT@@CAXXZ		; CIDT::interruptServiceRequest30
PUBLIC	?interruptServiceRequest31@CIDT@@CAXXZ		; CIDT::interruptServiceRequest31
PUBLIC	?interruptServiceRequest32@CIDT@@CAXXZ		; CIDT::interruptServiceRequest32
PUBLIC	?interruptServiceRequest33@CIDT@@CAXXZ		; CIDT::interruptServiceRequest33
PUBLIC	?interruptServiceRequest34@CIDT@@CAXXZ		; CIDT::interruptServiceRequest34
PUBLIC	?interruptServiceRequest35@CIDT@@CAXXZ		; CIDT::interruptServiceRequest35
PUBLIC	?interruptServiceRequest36@CIDT@@CAXXZ		; CIDT::interruptServiceRequest36
PUBLIC	?interruptServiceRequest37@CIDT@@CAXXZ		; CIDT::interruptServiceRequest37
PUBLIC	?interruptServiceRequest38@CIDT@@CAXXZ		; CIDT::interruptServiceRequest38
PUBLIC	?interruptServiceRequest39@CIDT@@CAXXZ		; CIDT::interruptServiceRequest39
PUBLIC	?interruptServiceRequest3A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest3A
PUBLIC	?interruptServiceRequest3B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest3B
PUBLIC	?interruptServiceRequest3C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest3C
PUBLIC	?interruptServiceRequest3D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest3D
PUBLIC	?interruptServiceRequest3E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest3E
PUBLIC	?interruptServiceRequest3F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest3F
PUBLIC	?interruptServiceRequest40@CIDT@@CAXXZ		; CIDT::interruptServiceRequest40
PUBLIC	?interruptServiceRequest41@CIDT@@CAXXZ		; CIDT::interruptServiceRequest41
PUBLIC	?interruptServiceRequest42@CIDT@@CAXXZ		; CIDT::interruptServiceRequest42
PUBLIC	?interruptServiceRequest43@CIDT@@CAXXZ		; CIDT::interruptServiceRequest43
PUBLIC	?interruptServiceRequest44@CIDT@@CAXXZ		; CIDT::interruptServiceRequest44
PUBLIC	?interruptServiceRequest45@CIDT@@CAXXZ		; CIDT::interruptServiceRequest45
PUBLIC	?interruptServiceRequest46@CIDT@@CAXXZ		; CIDT::interruptServiceRequest46
PUBLIC	?interruptServiceRequest47@CIDT@@CAXXZ		; CIDT::interruptServiceRequest47
PUBLIC	?interruptServiceRequest48@CIDT@@CAXXZ		; CIDT::interruptServiceRequest48
PUBLIC	?interruptServiceRequest49@CIDT@@CAXXZ		; CIDT::interruptServiceRequest49
PUBLIC	?interruptServiceRequest4A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest4A
PUBLIC	?interruptServiceRequest4B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest4B
PUBLIC	?interruptServiceRequest4C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest4C
PUBLIC	?interruptServiceRequest4D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest4D
PUBLIC	?interruptServiceRequest4E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest4E
PUBLIC	?interruptServiceRequest4F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest4F
PUBLIC	?interruptServiceRequest50@CIDT@@CAXXZ		; CIDT::interruptServiceRequest50
PUBLIC	?interruptServiceRequest51@CIDT@@CAXXZ		; CIDT::interruptServiceRequest51
PUBLIC	?interruptServiceRequest52@CIDT@@CAXXZ		; CIDT::interruptServiceRequest52
PUBLIC	?interruptServiceRequest53@CIDT@@CAXXZ		; CIDT::interruptServiceRequest53
PUBLIC	?interruptServiceRequest54@CIDT@@CAXXZ		; CIDT::interruptServiceRequest54
PUBLIC	?interruptServiceRequest55@CIDT@@CAXXZ		; CIDT::interruptServiceRequest55
PUBLIC	?interruptServiceRequest56@CIDT@@CAXXZ		; CIDT::interruptServiceRequest56
PUBLIC	?interruptServiceRequest57@CIDT@@CAXXZ		; CIDT::interruptServiceRequest57
PUBLIC	?interruptServiceRequest58@CIDT@@CAXXZ		; CIDT::interruptServiceRequest58
PUBLIC	?interruptServiceRequest59@CIDT@@CAXXZ		; CIDT::interruptServiceRequest59
PUBLIC	?interruptServiceRequest5A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest5A
PUBLIC	?interruptServiceRequest5B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest5B
PUBLIC	?interruptServiceRequest5C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest5C
PUBLIC	?interruptServiceRequest5D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest5D
PUBLIC	?interruptServiceRequest5E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest5E
PUBLIC	?interruptServiceRequest5F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest5F
PUBLIC	?interruptServiceRequest60@CIDT@@CAXXZ		; CIDT::interruptServiceRequest60
PUBLIC	?interruptServiceRequest61@CIDT@@CAXXZ		; CIDT::interruptServiceRequest61
PUBLIC	?interruptServiceRequest62@CIDT@@CAXXZ		; CIDT::interruptServiceRequest62
PUBLIC	?interruptServiceRequest63@CIDT@@CAXXZ		; CIDT::interruptServiceRequest63
PUBLIC	?interruptServiceRequest64@CIDT@@CAXXZ		; CIDT::interruptServiceRequest64
PUBLIC	?interruptServiceRequest65@CIDT@@CAXXZ		; CIDT::interruptServiceRequest65
PUBLIC	?interruptServiceRequest66@CIDT@@CAXXZ		; CIDT::interruptServiceRequest66
PUBLIC	?interruptServiceRequest67@CIDT@@CAXXZ		; CIDT::interruptServiceRequest67
PUBLIC	?interruptServiceRequest68@CIDT@@CAXXZ		; CIDT::interruptServiceRequest68
PUBLIC	?interruptServiceRequest69@CIDT@@CAXXZ		; CIDT::interruptServiceRequest69
PUBLIC	?interruptServiceRequest6A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest6A
PUBLIC	?interruptServiceRequest6B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest6B
PUBLIC	?interruptServiceRequest6C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest6C
PUBLIC	?interruptServiceRequest6D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest6D
PUBLIC	?interruptServiceRequest6E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest6E
PUBLIC	?interruptServiceRequest6F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest6F
PUBLIC	?interruptServiceRequest70@CIDT@@CAXXZ		; CIDT::interruptServiceRequest70
PUBLIC	?interruptServiceRequest71@CIDT@@CAXXZ		; CIDT::interruptServiceRequest71
PUBLIC	?interruptServiceRequest72@CIDT@@CAXXZ		; CIDT::interruptServiceRequest72
PUBLIC	?interruptServiceRequest73@CIDT@@CAXXZ		; CIDT::interruptServiceRequest73
PUBLIC	?interruptServiceRequest74@CIDT@@CAXXZ		; CIDT::interruptServiceRequest74
PUBLIC	?interruptServiceRequest75@CIDT@@CAXXZ		; CIDT::interruptServiceRequest75
PUBLIC	?interruptServiceRequest76@CIDT@@CAXXZ		; CIDT::interruptServiceRequest76
PUBLIC	?interruptServiceRequest77@CIDT@@CAXXZ		; CIDT::interruptServiceRequest77
PUBLIC	?interruptServiceRequest78@CIDT@@CAXXZ		; CIDT::interruptServiceRequest78
PUBLIC	?interruptServiceRequest79@CIDT@@CAXXZ		; CIDT::interruptServiceRequest79
PUBLIC	?interruptServiceRequest7A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest7A
PUBLIC	?interruptServiceRequest7B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest7B
PUBLIC	?interruptServiceRequest7C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest7C
PUBLIC	?interruptServiceRequest7D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest7D
PUBLIC	?interruptServiceRequest7E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest7E
PUBLIC	?interruptServiceRequest7F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest7F
PUBLIC	?interruptServiceRequest80@CIDT@@CAXXZ		; CIDT::interruptServiceRequest80
PUBLIC	?interruptServiceRequest81@CIDT@@CAXXZ		; CIDT::interruptServiceRequest81
PUBLIC	?interruptServiceRequest82@CIDT@@CAXXZ		; CIDT::interruptServiceRequest82
PUBLIC	?interruptServiceRequest83@CIDT@@CAXXZ		; CIDT::interruptServiceRequest83
PUBLIC	?interruptServiceRequest84@CIDT@@CAXXZ		; CIDT::interruptServiceRequest84
PUBLIC	?interruptServiceRequest85@CIDT@@CAXXZ		; CIDT::interruptServiceRequest85
PUBLIC	?interruptServiceRequest86@CIDT@@CAXXZ		; CIDT::interruptServiceRequest86
PUBLIC	?interruptServiceRequest87@CIDT@@CAXXZ		; CIDT::interruptServiceRequest87
PUBLIC	?interruptServiceRequest88@CIDT@@CAXXZ		; CIDT::interruptServiceRequest88
PUBLIC	?interruptServiceRequest89@CIDT@@CAXXZ		; CIDT::interruptServiceRequest89
PUBLIC	?interruptServiceRequest8A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest8A
PUBLIC	?interruptServiceRequest8B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest8B
PUBLIC	?interruptServiceRequest8C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest8C
PUBLIC	?interruptServiceRequest8D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest8D
PUBLIC	?interruptServiceRequest8E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest8E
PUBLIC	?interruptServiceRequest8F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest8F
PUBLIC	?interruptServiceRequest90@CIDT@@CAXXZ		; CIDT::interruptServiceRequest90
PUBLIC	?interruptServiceRequest91@CIDT@@CAXXZ		; CIDT::interruptServiceRequest91
PUBLIC	?interruptServiceRequest92@CIDT@@CAXXZ		; CIDT::interruptServiceRequest92
PUBLIC	?interruptServiceRequest93@CIDT@@CAXXZ		; CIDT::interruptServiceRequest93
PUBLIC	?interruptServiceRequest94@CIDT@@CAXXZ		; CIDT::interruptServiceRequest94
PUBLIC	?interruptServiceRequest95@CIDT@@CAXXZ		; CIDT::interruptServiceRequest95
PUBLIC	?interruptServiceRequest96@CIDT@@CAXXZ		; CIDT::interruptServiceRequest96
PUBLIC	?interruptServiceRequest97@CIDT@@CAXXZ		; CIDT::interruptServiceRequest97
PUBLIC	?interruptServiceRequest98@CIDT@@CAXXZ		; CIDT::interruptServiceRequest98
PUBLIC	?interruptServiceRequest99@CIDT@@CAXXZ		; CIDT::interruptServiceRequest99
PUBLIC	?interruptServiceRequest9A@CIDT@@CAXXZ		; CIDT::interruptServiceRequest9A
PUBLIC	?interruptServiceRequest9B@CIDT@@CAXXZ		; CIDT::interruptServiceRequest9B
PUBLIC	?interruptServiceRequest9C@CIDT@@CAXXZ		; CIDT::interruptServiceRequest9C
PUBLIC	?interruptServiceRequest9D@CIDT@@CAXXZ		; CIDT::interruptServiceRequest9D
PUBLIC	?interruptServiceRequest9E@CIDT@@CAXXZ		; CIDT::interruptServiceRequest9E
PUBLIC	?interruptServiceRequest9F@CIDT@@CAXXZ		; CIDT::interruptServiceRequest9F
PUBLIC	?interruptServiceRequestA0@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA0
PUBLIC	?interruptServiceRequestA1@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA1
PUBLIC	?interruptServiceRequestA2@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA2
PUBLIC	?interruptServiceRequestA3@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA3
PUBLIC	?interruptServiceRequestA4@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA4
PUBLIC	?interruptServiceRequestA5@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA5
PUBLIC	?interruptServiceRequestA6@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA6
PUBLIC	?interruptServiceRequestA7@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA7
PUBLIC	?interruptServiceRequestA8@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA8
PUBLIC	?interruptServiceRequestA9@CIDT@@CAXXZ		; CIDT::interruptServiceRequestA9
PUBLIC	?interruptServiceRequestAA@CIDT@@CAXXZ		; CIDT::interruptServiceRequestAA
PUBLIC	?interruptServiceRequestAB@CIDT@@CAXXZ		; CIDT::interruptServiceRequestAB
PUBLIC	?interruptServiceRequestAC@CIDT@@CAXXZ		; CIDT::interruptServiceRequestAC
PUBLIC	?interruptServiceRequestAD@CIDT@@CAXXZ		; CIDT::interruptServiceRequestAD
PUBLIC	?interruptServiceRequestAE@CIDT@@CAXXZ		; CIDT::interruptServiceRequestAE
PUBLIC	?interruptServiceRequestAF@CIDT@@CAXXZ		; CIDT::interruptServiceRequestAF
PUBLIC	?interruptServiceRequestB0@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB0
PUBLIC	?interruptServiceRequestB1@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB1
PUBLIC	?interruptServiceRequestB2@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB2
PUBLIC	?interruptServiceRequestB3@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB3
PUBLIC	?interruptServiceRequestB4@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB4
PUBLIC	?interruptServiceRequestB5@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB5
PUBLIC	?interruptServiceRequestB6@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB6
PUBLIC	?interruptServiceRequestB7@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB7
PUBLIC	?interruptServiceRequestB8@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB8
PUBLIC	?interruptServiceRequestB9@CIDT@@CAXXZ		; CIDT::interruptServiceRequestB9
PUBLIC	?interruptServiceRequestBA@CIDT@@CAXXZ		; CIDT::interruptServiceRequestBA
PUBLIC	?interruptServiceRequestBB@CIDT@@CAXXZ		; CIDT::interruptServiceRequestBB
PUBLIC	?interruptServiceRequestBC@CIDT@@CAXXZ		; CIDT::interruptServiceRequestBC
PUBLIC	?interruptServiceRequestBD@CIDT@@CAXXZ		; CIDT::interruptServiceRequestBD
PUBLIC	?interruptServiceRequestBE@CIDT@@CAXXZ		; CIDT::interruptServiceRequestBE
PUBLIC	?interruptServiceRequestBF@CIDT@@CAXXZ		; CIDT::interruptServiceRequestBF
PUBLIC	?interruptServiceRequestC0@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC0
PUBLIC	?interruptServiceRequestC1@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC1
PUBLIC	?interruptServiceRequestC2@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC2
PUBLIC	?interruptServiceRequestC3@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC3
PUBLIC	?interruptServiceRequestC4@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC4
PUBLIC	?interruptServiceRequestC5@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC5
PUBLIC	?interruptServiceRequestC6@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC6
PUBLIC	?interruptServiceRequestC7@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC7
PUBLIC	?interruptServiceRequestC8@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC8
PUBLIC	?interruptServiceRequestC9@CIDT@@CAXXZ		; CIDT::interruptServiceRequestC9
PUBLIC	?interruptServiceRequestCA@CIDT@@CAXXZ		; CIDT::interruptServiceRequestCA
PUBLIC	?interruptServiceRequestCB@CIDT@@CAXXZ		; CIDT::interruptServiceRequestCB
PUBLIC	?interruptServiceRequestCC@CIDT@@CAXXZ		; CIDT::interruptServiceRequestCC
PUBLIC	?interruptServiceRequestCD@CIDT@@CAXXZ		; CIDT::interruptServiceRequestCD
PUBLIC	?interruptServiceRequestCE@CIDT@@CAXXZ		; CIDT::interruptServiceRequestCE
PUBLIC	?interruptServiceRequestCF@CIDT@@CAXXZ		; CIDT::interruptServiceRequestCF
PUBLIC	?interruptServiceRequestD0@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD0
PUBLIC	?interruptServiceRequestD1@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD1
PUBLIC	?interruptServiceRequestD2@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD2
PUBLIC	?interruptServiceRequestD3@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD3
PUBLIC	?interruptServiceRequestD4@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD4
PUBLIC	?interruptServiceRequestD5@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD5
PUBLIC	?interruptServiceRequestD6@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD6
PUBLIC	?interruptServiceRequestD7@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD7
PUBLIC	?interruptServiceRequestD8@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD8
PUBLIC	?interruptServiceRequestD9@CIDT@@CAXXZ		; CIDT::interruptServiceRequestD9
PUBLIC	?interruptServiceRequestDA@CIDT@@CAXXZ		; CIDT::interruptServiceRequestDA
PUBLIC	?interruptServiceRequestDB@CIDT@@CAXXZ		; CIDT::interruptServiceRequestDB
PUBLIC	?interruptServiceRequestDC@CIDT@@CAXXZ		; CIDT::interruptServiceRequestDC
PUBLIC	?interruptServiceRequestDD@CIDT@@CAXXZ		; CIDT::interruptServiceRequestDD
PUBLIC	?interruptServiceRequestDE@CIDT@@CAXXZ		; CIDT::interruptServiceRequestDE
PUBLIC	?interruptServiceRequestDF@CIDT@@CAXXZ		; CIDT::interruptServiceRequestDF
PUBLIC	?interruptServiceRequestE0@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE0
PUBLIC	?interruptServiceRequestE1@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE1
PUBLIC	?interruptServiceRequestE2@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE2
PUBLIC	?interruptServiceRequestE3@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE3
PUBLIC	?interruptServiceRequestE4@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE4
PUBLIC	?interruptServiceRequestE5@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE5
PUBLIC	?interruptServiceRequestE6@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE6
PUBLIC	?interruptServiceRequestE7@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE7
PUBLIC	?interruptServiceRequestE8@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE8
PUBLIC	?interruptServiceRequestE9@CIDT@@CAXXZ		; CIDT::interruptServiceRequestE9
PUBLIC	?interruptServiceRequestEA@CIDT@@CAXXZ		; CIDT::interruptServiceRequestEA
PUBLIC	?interruptServiceRequestEB@CIDT@@CAXXZ		; CIDT::interruptServiceRequestEB
PUBLIC	?interruptServiceRequestEC@CIDT@@CAXXZ		; CIDT::interruptServiceRequestEC
PUBLIC	?interruptServiceRequestED@CIDT@@CAXXZ		; CIDT::interruptServiceRequestED
PUBLIC	?interruptServiceRequestEE@CIDT@@CAXXZ		; CIDT::interruptServiceRequestEE
PUBLIC	?interruptServiceRequestEF@CIDT@@CAXXZ		; CIDT::interruptServiceRequestEF
PUBLIC	?interruptServiceRequestF0@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF0
PUBLIC	?interruptServiceRequestF1@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF1
PUBLIC	?interruptServiceRequestF2@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF2
PUBLIC	?interruptServiceRequestF3@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF3
PUBLIC	?interruptServiceRequestF4@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF4
PUBLIC	?interruptServiceRequestF5@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF5
PUBLIC	?interruptServiceRequestF6@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF6
PUBLIC	?interruptServiceRequestF7@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF7
PUBLIC	?interruptServiceRequestF8@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF8
PUBLIC	?interruptServiceRequestF9@CIDT@@CAXXZ		; CIDT::interruptServiceRequestF9
PUBLIC	?interruptServiceRequestFA@CIDT@@CAXXZ		; CIDT::interruptServiceRequestFA
PUBLIC	?interruptServiceRequestFB@CIDT@@CAXXZ		; CIDT::interruptServiceRequestFB
PUBLIC	?interruptServiceRequestFC@CIDT@@CAXXZ		; CIDT::interruptServiceRequestFC
PUBLIC	?interruptServiceRequestFD@CIDT@@CAXXZ		; CIDT::interruptServiceRequestFD
PUBLIC	?interruptServiceRequestFE@CIDT@@CAXXZ		; CIDT::interruptServiceRequestFE
PUBLIC	?interruptServiceRequestFF@CIDT@@CAXXZ		; CIDT::interruptServiceRequestFF
PUBLIC	?create@CIDT@@QAEKXZ				; CIDT::create
EXTRN	?first@CDescriptorTable@@IAEPAVCDescriptor@@XZ:NEAR ; CDescriptorTable::first
EXTRN	?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ:NEAR ; CDescriptorTable::getBase
EXTRN	?getEntries@CDescriptorTable@@IBEGXZ:NEAR	; CDescriptorTable::getEntries
EXTRN	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ:NEAR ; CDescriptorTable::next
EXTRN	?create@CDescriptorTable@@QAE?BKXZ:NEAR		; CDescriptorTable::create
_TEXT	SEGMENT
_this$ = -12
_Pointer$ = -8
?create@CIDT@@QAEKXZ PROC NEAR				; CIDT::create

; 67   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 68   : 	SPseudoDescriptor Pointer;
; 69   : 
; 70   : 	// Call inherited create method.
; 71   : 	CDescriptorTable::create();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?create@CDescriptorTable@@QAE?BKXZ	; CDescriptorTable::create

; 72   : 
; 73   : 	// Set every entry to the default interrupt handler. 
; 74   : 	initialiseHandler( first(), interruptServiceRequest00 );

	push	OFFSET FLAT:?interruptServiceRequest00@CIDT@@CAXXZ ; CIDT::interruptServiceRequest00
	mov	ecx, DWORD PTR _this$[ebp]
	call	?first@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::first
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 75   : 	initialiseHandler( next(), interruptServiceRequest01 );

	push	OFFSET FLAT:?interruptServiceRequest01@CIDT@@CAXXZ ; CIDT::interruptServiceRequest01
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 76   : 	initialiseHandler( next(), interruptServiceRequest02 );

	push	OFFSET FLAT:?interruptServiceRequest02@CIDT@@CAXXZ ; CIDT::interruptServiceRequest02
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 77   : 	initialiseHandler( next(), interruptServiceRequest03 );

	push	OFFSET FLAT:?interruptServiceRequest03@CIDT@@CAXXZ ; CIDT::interruptServiceRequest03
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 78   : 	initialiseHandler( next(), CIDT::interruptServiceRequest04 );

	push	OFFSET FLAT:?interruptServiceRequest04@CIDT@@CAXXZ ; CIDT::interruptServiceRequest04
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 79   : 	initialiseHandler( next(), CIDT::interruptServiceRequest05 );

	push	OFFSET FLAT:?interruptServiceRequest05@CIDT@@CAXXZ ; CIDT::interruptServiceRequest05
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 80   : 	initialiseHandler( next(), CIDT::interruptServiceRequest06 );

	push	OFFSET FLAT:?interruptServiceRequest06@CIDT@@CAXXZ ; CIDT::interruptServiceRequest06
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 81   : 	initialiseHandler( next(), CIDT::interruptServiceRequest07 );

	push	OFFSET FLAT:?interruptServiceRequest07@CIDT@@CAXXZ ; CIDT::interruptServiceRequest07
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 82   : 	initialiseHandler( next(), CIDT::interruptServiceRequest08 );

	push	OFFSET FLAT:?interruptServiceRequest08@CIDT@@CAXXZ ; CIDT::interruptServiceRequest08
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 83   : 	initialiseHandler( next(), CIDT::interruptServiceRequest09 );

	push	OFFSET FLAT:?interruptServiceRequest09@CIDT@@CAXXZ ; CIDT::interruptServiceRequest09
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 84   : 	initialiseHandler( next(), CIDT::interruptServiceRequest0A );

	push	OFFSET FLAT:?interruptServiceRequest0A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest0A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 85   : 	initialiseHandler( next(), CIDT::interruptServiceRequest0B );

	push	OFFSET FLAT:?interruptServiceRequest0B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest0B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 86   : 	initialiseHandler( next(), CIDT::interruptServiceRequest0C );

	push	OFFSET FLAT:?interruptServiceRequest0C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest0C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 87   : 	initialiseHandler( next(), CIDT::interruptServiceRequest0D );

	push	OFFSET FLAT:?interruptServiceRequest0D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest0D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 88   : 	initialiseHandler( next(), CIDT::interruptServiceRequest0E );

	push	OFFSET FLAT:?interruptServiceRequest0E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest0E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 89   : 	initialiseHandler( next(), CIDT::interruptServiceRequest0F );

	push	OFFSET FLAT:?interruptServiceRequest0F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest0F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 90   : 	initialiseHandler( next(), CIDT::interruptServiceRequest10 );

	push	OFFSET FLAT:?interruptServiceRequest10@CIDT@@CAXXZ ; CIDT::interruptServiceRequest10
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 91   : 	initialiseHandler( next(), CIDT::interruptServiceRequest11 );

	push	OFFSET FLAT:?interruptServiceRequest11@CIDT@@CAXXZ ; CIDT::interruptServiceRequest11
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 92   : 	initialiseHandler( next(), CIDT::interruptServiceRequest12 );

	push	OFFSET FLAT:?interruptServiceRequest12@CIDT@@CAXXZ ; CIDT::interruptServiceRequest12
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 93   : 	initialiseHandler( next(), CIDT::interruptServiceRequest13 );

	push	OFFSET FLAT:?interruptServiceRequest13@CIDT@@CAXXZ ; CIDT::interruptServiceRequest13
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 94   : 	initialiseHandler( next(), CIDT::interruptServiceRequest14 );

	push	OFFSET FLAT:?interruptServiceRequest14@CIDT@@CAXXZ ; CIDT::interruptServiceRequest14
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 95   : 	initialiseHandler( next(), CIDT::interruptServiceRequest15 );

	push	OFFSET FLAT:?interruptServiceRequest15@CIDT@@CAXXZ ; CIDT::interruptServiceRequest15
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 96   : 	initialiseHandler( next(), CIDT::interruptServiceRequest16 );

	push	OFFSET FLAT:?interruptServiceRequest16@CIDT@@CAXXZ ; CIDT::interruptServiceRequest16
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 97   : 	initialiseHandler( next(), CIDT::interruptServiceRequest17 );

	push	OFFSET FLAT:?interruptServiceRequest17@CIDT@@CAXXZ ; CIDT::interruptServiceRequest17
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 98   : 	initialiseHandler( next(), CIDT::interruptServiceRequest18 );

	push	OFFSET FLAT:?interruptServiceRequest18@CIDT@@CAXXZ ; CIDT::interruptServiceRequest18
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 99   : 	initialiseHandler( next(), CIDT::interruptServiceRequest19 );

	push	OFFSET FLAT:?interruptServiceRequest19@CIDT@@CAXXZ ; CIDT::interruptServiceRequest19
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 100  : 	initialiseHandler( next(), CIDT::interruptServiceRequest1A );

	push	OFFSET FLAT:?interruptServiceRequest1A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest1A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 101  : 	initialiseHandler( next(), CIDT::interruptServiceRequest1B );

	push	OFFSET FLAT:?interruptServiceRequest1B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest1B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 102  : 	initialiseHandler( next(), CIDT::interruptServiceRequest1C );

	push	OFFSET FLAT:?interruptServiceRequest1C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest1C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 103  : 	initialiseHandler( next(), interruptServiceRequest1D );

	push	OFFSET FLAT:?interruptServiceRequest1D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest1D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 104  : 	initialiseHandler( next(), interruptServiceRequest1E );

	push	OFFSET FLAT:?interruptServiceRequest1E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest1E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 105  : 	initialiseHandler( next(), interruptServiceRequest1F );

	push	OFFSET FLAT:?interruptServiceRequest1F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest1F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 106  : 	initialiseHandler( next(), interruptServiceRequest20 );

	push	OFFSET FLAT:?interruptServiceRequest20@CIDT@@CAXXZ ; CIDT::interruptServiceRequest20
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 107  : 	initialiseHandler( next(), interruptServiceRequest21 );

	push	OFFSET FLAT:?interruptServiceRequest21@CIDT@@CAXXZ ; CIDT::interruptServiceRequest21
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 108  : 	initialiseHandler( next(), interruptServiceRequest22 );

	push	OFFSET FLAT:?interruptServiceRequest22@CIDT@@CAXXZ ; CIDT::interruptServiceRequest22
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 109  : 	initialiseHandler( next(), interruptServiceRequest23 );

	push	OFFSET FLAT:?interruptServiceRequest23@CIDT@@CAXXZ ; CIDT::interruptServiceRequest23
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 110  : 	initialiseHandler( next(), interruptServiceRequest24 );

	push	OFFSET FLAT:?interruptServiceRequest24@CIDT@@CAXXZ ; CIDT::interruptServiceRequest24
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 111  : 	initialiseHandler( next(), interruptServiceRequest25 );

	push	OFFSET FLAT:?interruptServiceRequest25@CIDT@@CAXXZ ; CIDT::interruptServiceRequest25
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 112  : 	initialiseHandler( next(), interruptServiceRequest26 );

	push	OFFSET FLAT:?interruptServiceRequest26@CIDT@@CAXXZ ; CIDT::interruptServiceRequest26
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 113  : 	initialiseHandler( next(), CIDT::interruptServiceRequest27 );

	push	OFFSET FLAT:?interruptServiceRequest27@CIDT@@CAXXZ ; CIDT::interruptServiceRequest27
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 114  : 	initialiseHandler( next(), CIDT::interruptServiceRequest28 );

	push	OFFSET FLAT:?interruptServiceRequest28@CIDT@@CAXXZ ; CIDT::interruptServiceRequest28
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 115  : 	initialiseHandler( next(), CIDT::interruptServiceRequest29 );

	push	OFFSET FLAT:?interruptServiceRequest29@CIDT@@CAXXZ ; CIDT::interruptServiceRequest29
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 116  : 	initialiseHandler( next(), CIDT::interruptServiceRequest2A );

	push	OFFSET FLAT:?interruptServiceRequest2A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest2A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 117  : 	initialiseHandler( next(), CIDT::interruptServiceRequest2B );

	push	OFFSET FLAT:?interruptServiceRequest2B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest2B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 118  : 	initialiseHandler( next(), CIDT::interruptServiceRequest2C );

	push	OFFSET FLAT:?interruptServiceRequest2C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest2C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 119  : 	initialiseHandler( next(), CIDT::interruptServiceRequest2D );

	push	OFFSET FLAT:?interruptServiceRequest2D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest2D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 120  : 	initialiseHandler( next(), CIDT::interruptServiceRequest2E );

	push	OFFSET FLAT:?interruptServiceRequest2E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest2E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 121  : 	initialiseHandler( next(), CIDT::interruptServiceRequest2F );

	push	OFFSET FLAT:?interruptServiceRequest2F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest2F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 122  : 	initialiseHandler( next(), CIDT::interruptServiceRequest30 );

	push	OFFSET FLAT:?interruptServiceRequest30@CIDT@@CAXXZ ; CIDT::interruptServiceRequest30
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 123  : 	initialiseHandler( next(), CIDT::interruptServiceRequest31 );

	push	OFFSET FLAT:?interruptServiceRequest31@CIDT@@CAXXZ ; CIDT::interruptServiceRequest31
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 124  : 	initialiseHandler( next(), CIDT::interruptServiceRequest32 );

	push	OFFSET FLAT:?interruptServiceRequest32@CIDT@@CAXXZ ; CIDT::interruptServiceRequest32
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 125  : 	initialiseHandler( next(), CIDT::interruptServiceRequest33 );

	push	OFFSET FLAT:?interruptServiceRequest33@CIDT@@CAXXZ ; CIDT::interruptServiceRequest33
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 126  : 	initialiseHandler( next(), CIDT::interruptServiceRequest34 );

	push	OFFSET FLAT:?interruptServiceRequest34@CIDT@@CAXXZ ; CIDT::interruptServiceRequest34
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 127  : 	initialiseHandler( next(), CIDT::interruptServiceRequest35 );

	push	OFFSET FLAT:?interruptServiceRequest35@CIDT@@CAXXZ ; CIDT::interruptServiceRequest35
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 128  : 	initialiseHandler( next(), CIDT::interruptServiceRequest36 );

	push	OFFSET FLAT:?interruptServiceRequest36@CIDT@@CAXXZ ; CIDT::interruptServiceRequest36
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 129  : 	initialiseHandler( next(), CIDT::interruptServiceRequest37 );

	push	OFFSET FLAT:?interruptServiceRequest37@CIDT@@CAXXZ ; CIDT::interruptServiceRequest37
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 130  : 	initialiseHandler( next(), CIDT::interruptServiceRequest38 );

	push	OFFSET FLAT:?interruptServiceRequest38@CIDT@@CAXXZ ; CIDT::interruptServiceRequest38
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 131  : 	initialiseHandler( next(), CIDT::interruptServiceRequest39 );

	push	OFFSET FLAT:?interruptServiceRequest39@CIDT@@CAXXZ ; CIDT::interruptServiceRequest39
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 132  : 	initialiseHandler( next(), CIDT::interruptServiceRequest3A );

	push	OFFSET FLAT:?interruptServiceRequest3A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest3A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 133  : 	initialiseHandler( next(), CIDT::interruptServiceRequest3B );

	push	OFFSET FLAT:?interruptServiceRequest3B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest3B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 134  : 	initialiseHandler( next(), CIDT::interruptServiceRequest3C );

	push	OFFSET FLAT:?interruptServiceRequest3C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest3C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 135  : 	initialiseHandler( next(), CIDT::interruptServiceRequest3D );

	push	OFFSET FLAT:?interruptServiceRequest3D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest3D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 136  : 	initialiseHandler( next(), CIDT::interruptServiceRequest3E );

	push	OFFSET FLAT:?interruptServiceRequest3E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest3E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 137  : 	initialiseHandler( next(), CIDT::interruptServiceRequest3F );

	push	OFFSET FLAT:?interruptServiceRequest3F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest3F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 138  : 	initialiseHandler( next(), CIDT::interruptServiceRequest40 );

	push	OFFSET FLAT:?interruptServiceRequest40@CIDT@@CAXXZ ; CIDT::interruptServiceRequest40
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 139  : 	initialiseHandler( next(), CIDT::interruptServiceRequest41 );

	push	OFFSET FLAT:?interruptServiceRequest41@CIDT@@CAXXZ ; CIDT::interruptServiceRequest41
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 140  : 	initialiseHandler( next(), CIDT::interruptServiceRequest42 );

	push	OFFSET FLAT:?interruptServiceRequest42@CIDT@@CAXXZ ; CIDT::interruptServiceRequest42
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 141  : 	initialiseHandler( next(), CIDT::interruptServiceRequest43 );

	push	OFFSET FLAT:?interruptServiceRequest43@CIDT@@CAXXZ ; CIDT::interruptServiceRequest43
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 142  : 	initialiseHandler( next(), CIDT::interruptServiceRequest44 );

	push	OFFSET FLAT:?interruptServiceRequest44@CIDT@@CAXXZ ; CIDT::interruptServiceRequest44
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 143  : 	initialiseHandler( next(), CIDT::interruptServiceRequest45 );

	push	OFFSET FLAT:?interruptServiceRequest45@CIDT@@CAXXZ ; CIDT::interruptServiceRequest45
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 144  : 	initialiseHandler( next(), CIDT::interruptServiceRequest46 );

	push	OFFSET FLAT:?interruptServiceRequest46@CIDT@@CAXXZ ; CIDT::interruptServiceRequest46
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 145  : 	initialiseHandler( next(), CIDT::interruptServiceRequest47 );

	push	OFFSET FLAT:?interruptServiceRequest47@CIDT@@CAXXZ ; CIDT::interruptServiceRequest47
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 146  : 	initialiseHandler( next(), CIDT::interruptServiceRequest48 );

	push	OFFSET FLAT:?interruptServiceRequest48@CIDT@@CAXXZ ; CIDT::interruptServiceRequest48
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 147  : 	initialiseHandler( next(), CIDT::interruptServiceRequest49 );

	push	OFFSET FLAT:?interruptServiceRequest49@CIDT@@CAXXZ ; CIDT::interruptServiceRequest49
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 148  : 	initialiseHandler( next(), CIDT::interruptServiceRequest4A );

	push	OFFSET FLAT:?interruptServiceRequest4A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest4A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 149  : 	initialiseHandler( next(), CIDT::interruptServiceRequest4B );

	push	OFFSET FLAT:?interruptServiceRequest4B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest4B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 150  : 	initialiseHandler( next(), CIDT::interruptServiceRequest4C );

	push	OFFSET FLAT:?interruptServiceRequest4C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest4C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 151  : 	initialiseHandler( next(), CIDT::interruptServiceRequest4D );

	push	OFFSET FLAT:?interruptServiceRequest4D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest4D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 152  : 	initialiseHandler( next(), CIDT::interruptServiceRequest4E );

	push	OFFSET FLAT:?interruptServiceRequest4E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest4E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 153  : 	initialiseHandler( next(), CIDT::interruptServiceRequest4F );

	push	OFFSET FLAT:?interruptServiceRequest4F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest4F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 154  : 	initialiseHandler( next(), CIDT::interruptServiceRequest50 );

	push	OFFSET FLAT:?interruptServiceRequest50@CIDT@@CAXXZ ; CIDT::interruptServiceRequest50
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 155  : 	initialiseHandler( next(), CIDT::interruptServiceRequest51 );

	push	OFFSET FLAT:?interruptServiceRequest51@CIDT@@CAXXZ ; CIDT::interruptServiceRequest51
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 156  : 	initialiseHandler( next(), CIDT::interruptServiceRequest52 );

	push	OFFSET FLAT:?interruptServiceRequest52@CIDT@@CAXXZ ; CIDT::interruptServiceRequest52
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 157  : 	initialiseHandler( next(), CIDT::interruptServiceRequest53 );

	push	OFFSET FLAT:?interruptServiceRequest53@CIDT@@CAXXZ ; CIDT::interruptServiceRequest53
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 158  : 	initialiseHandler( next(), CIDT::interruptServiceRequest54 );

	push	OFFSET FLAT:?interruptServiceRequest54@CIDT@@CAXXZ ; CIDT::interruptServiceRequest54
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 159  : 	initialiseHandler( next(), interruptServiceRequest55 );

	push	OFFSET FLAT:?interruptServiceRequest55@CIDT@@CAXXZ ; CIDT::interruptServiceRequest55
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 160  : 	initialiseHandler( next(), interruptServiceRequest56 );

	push	OFFSET FLAT:?interruptServiceRequest56@CIDT@@CAXXZ ; CIDT::interruptServiceRequest56
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 161  : 	initialiseHandler( next(), interruptServiceRequest57 );

	push	OFFSET FLAT:?interruptServiceRequest57@CIDT@@CAXXZ ; CIDT::interruptServiceRequest57
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 162  : 	initialiseHandler( next(), interruptServiceRequest58 );

	push	OFFSET FLAT:?interruptServiceRequest58@CIDT@@CAXXZ ; CIDT::interruptServiceRequest58
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 163  : 	initialiseHandler( next(), interruptServiceRequest59 );

	push	OFFSET FLAT:?interruptServiceRequest59@CIDT@@CAXXZ ; CIDT::interruptServiceRequest59
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 164  : 	initialiseHandler( next(), interruptServiceRequest5A );

	push	OFFSET FLAT:?interruptServiceRequest5A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest5A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 165  : 	initialiseHandler( next(), interruptServiceRequest5B );

	push	OFFSET FLAT:?interruptServiceRequest5B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest5B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 166  : 	initialiseHandler( next(), interruptServiceRequest5C );

	push	OFFSET FLAT:?interruptServiceRequest5C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest5C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 167  : 	initialiseHandler( next(), CIDT::interruptServiceRequest5D );

	push	OFFSET FLAT:?interruptServiceRequest5D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest5D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 168  : 	initialiseHandler( next(), CIDT::interruptServiceRequest5E );

	push	OFFSET FLAT:?interruptServiceRequest5E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest5E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 169  : 	initialiseHandler( next(), CIDT::interruptServiceRequest5F );

	push	OFFSET FLAT:?interruptServiceRequest5F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest5F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 170  : 	initialiseHandler( next(), CIDT::interruptServiceRequest60 );

	push	OFFSET FLAT:?interruptServiceRequest60@CIDT@@CAXXZ ; CIDT::interruptServiceRequest60
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 171  : 	initialiseHandler( next(), CIDT::interruptServiceRequest61 );

	push	OFFSET FLAT:?interruptServiceRequest61@CIDT@@CAXXZ ; CIDT::interruptServiceRequest61
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 172  : 	initialiseHandler( next(), CIDT::interruptServiceRequest62 );

	push	OFFSET FLAT:?interruptServiceRequest62@CIDT@@CAXXZ ; CIDT::interruptServiceRequest62
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 173  : 	initialiseHandler( next(), CIDT::interruptServiceRequest63 );

	push	OFFSET FLAT:?interruptServiceRequest63@CIDT@@CAXXZ ; CIDT::interruptServiceRequest63
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 174  : 	initialiseHandler( next(), CIDT::interruptServiceRequest64 );

	push	OFFSET FLAT:?interruptServiceRequest64@CIDT@@CAXXZ ; CIDT::interruptServiceRequest64
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 175  : 	initialiseHandler( next(), CIDT::interruptServiceRequest65 );

	push	OFFSET FLAT:?interruptServiceRequest65@CIDT@@CAXXZ ; CIDT::interruptServiceRequest65
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 176  : 	initialiseHandler( next(), CIDT::interruptServiceRequest66 );

	push	OFFSET FLAT:?interruptServiceRequest66@CIDT@@CAXXZ ; CIDT::interruptServiceRequest66
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 177  : 	initialiseHandler( next(), CIDT::interruptServiceRequest67 );

	push	OFFSET FLAT:?interruptServiceRequest67@CIDT@@CAXXZ ; CIDT::interruptServiceRequest67
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 178  : 	initialiseHandler( next(), CIDT::interruptServiceRequest68 );

	push	OFFSET FLAT:?interruptServiceRequest68@CIDT@@CAXXZ ; CIDT::interruptServiceRequest68
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 179  : 	initialiseHandler( next(), CIDT::interruptServiceRequest69 );

	push	OFFSET FLAT:?interruptServiceRequest69@CIDT@@CAXXZ ; CIDT::interruptServiceRequest69
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 180  : 	initialiseHandler( next(), CIDT::interruptServiceRequest6A );

	push	OFFSET FLAT:?interruptServiceRequest6A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest6A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 181  : 	initialiseHandler( next(), CIDT::interruptServiceRequest6B );

	push	OFFSET FLAT:?interruptServiceRequest6B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest6B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 182  : 	initialiseHandler( next(), CIDT::interruptServiceRequest6C );

	push	OFFSET FLAT:?interruptServiceRequest6C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest6C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 183  : 	initialiseHandler( next(), CIDT::interruptServiceRequest6D );

	push	OFFSET FLAT:?interruptServiceRequest6D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest6D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 184  : 	initialiseHandler( next(), CIDT::interruptServiceRequest6E );

	push	OFFSET FLAT:?interruptServiceRequest6E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest6E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 185  : 	initialiseHandler( next(), CIDT::interruptServiceRequest6F );

	push	OFFSET FLAT:?interruptServiceRequest6F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest6F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 186  : 	initialiseHandler( next(), CIDT::interruptServiceRequest70 );

	push	OFFSET FLAT:?interruptServiceRequest70@CIDT@@CAXXZ ; CIDT::interruptServiceRequest70
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 187  : 	initialiseHandler( next(), CIDT::interruptServiceRequest71 );

	push	OFFSET FLAT:?interruptServiceRequest71@CIDT@@CAXXZ ; CIDT::interruptServiceRequest71
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 188  : 	initialiseHandler( next(), CIDT::interruptServiceRequest72 );

	push	OFFSET FLAT:?interruptServiceRequest72@CIDT@@CAXXZ ; CIDT::interruptServiceRequest72
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 189  : 	initialiseHandler( next(), CIDT::interruptServiceRequest73 );

	push	OFFSET FLAT:?interruptServiceRequest73@CIDT@@CAXXZ ; CIDT::interruptServiceRequest73
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 190  : 	initialiseHandler( next(), CIDT::interruptServiceRequest74 );

	push	OFFSET FLAT:?interruptServiceRequest74@CIDT@@CAXXZ ; CIDT::interruptServiceRequest74
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 191  : 	initialiseHandler( next(), CIDT::interruptServiceRequest75 );

	push	OFFSET FLAT:?interruptServiceRequest75@CIDT@@CAXXZ ; CIDT::interruptServiceRequest75
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 192  : 	initialiseHandler( next(), CIDT::interruptServiceRequest76 );

	push	OFFSET FLAT:?interruptServiceRequest76@CIDT@@CAXXZ ; CIDT::interruptServiceRequest76
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 193  : 	initialiseHandler( next(), CIDT::interruptServiceRequest77 );

	push	OFFSET FLAT:?interruptServiceRequest77@CIDT@@CAXXZ ; CIDT::interruptServiceRequest77
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 194  : 	initialiseHandler( next(), CIDT::interruptServiceRequest78 );

	push	OFFSET FLAT:?interruptServiceRequest78@CIDT@@CAXXZ ; CIDT::interruptServiceRequest78
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 195  : 	initialiseHandler( next(), CIDT::interruptServiceRequest79 );

	push	OFFSET FLAT:?interruptServiceRequest79@CIDT@@CAXXZ ; CIDT::interruptServiceRequest79
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 196  : 	initialiseHandler( next(), CIDT::interruptServiceRequest7A );

	push	OFFSET FLAT:?interruptServiceRequest7A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest7A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 197  : 	initialiseHandler( next(), CIDT::interruptServiceRequest7B );

	push	OFFSET FLAT:?interruptServiceRequest7B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest7B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 198  : 	initialiseHandler( next(), CIDT::interruptServiceRequest7C );

	push	OFFSET FLAT:?interruptServiceRequest7C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest7C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 199  : 	initialiseHandler( next(), CIDT::interruptServiceRequest7D );

	push	OFFSET FLAT:?interruptServiceRequest7D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest7D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 200  : 	initialiseHandler( next(), CIDT::interruptServiceRequest7E );

	push	OFFSET FLAT:?interruptServiceRequest7E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest7E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 201  : 	initialiseHandler( next(), CIDT::interruptServiceRequest7F );

	push	OFFSET FLAT:?interruptServiceRequest7F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest7F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 202  : 	initialiseHandler( next(), CIDT::interruptServiceRequest80 );

	push	OFFSET FLAT:?interruptServiceRequest80@CIDT@@CAXXZ ; CIDT::interruptServiceRequest80
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 203  : 	initialiseHandler( next(), CIDT::interruptServiceRequest81 );

	push	OFFSET FLAT:?interruptServiceRequest81@CIDT@@CAXXZ ; CIDT::interruptServiceRequest81
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 204  : 	initialiseHandler( next(), CIDT::interruptServiceRequest82 );

	push	OFFSET FLAT:?interruptServiceRequest82@CIDT@@CAXXZ ; CIDT::interruptServiceRequest82
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 205  : 	initialiseHandler( next(), CIDT::interruptServiceRequest83 );

	push	OFFSET FLAT:?interruptServiceRequest83@CIDT@@CAXXZ ; CIDT::interruptServiceRequest83
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 206  : 	initialiseHandler( next(), CIDT::interruptServiceRequest84 );

	push	OFFSET FLAT:?interruptServiceRequest84@CIDT@@CAXXZ ; CIDT::interruptServiceRequest84
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 207  : 	initialiseHandler( next(), CIDT::interruptServiceRequest85 );

	push	OFFSET FLAT:?interruptServiceRequest85@CIDT@@CAXXZ ; CIDT::interruptServiceRequest85
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 208  : 	initialiseHandler( next(), CIDT::interruptServiceRequest86 );

	push	OFFSET FLAT:?interruptServiceRequest86@CIDT@@CAXXZ ; CIDT::interruptServiceRequest86
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 209  : 	initialiseHandler( next(), CIDT::interruptServiceRequest87 );

	push	OFFSET FLAT:?interruptServiceRequest87@CIDT@@CAXXZ ; CIDT::interruptServiceRequest87
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 210  : 	initialiseHandler( next(), CIDT::interruptServiceRequest88 );

	push	OFFSET FLAT:?interruptServiceRequest88@CIDT@@CAXXZ ; CIDT::interruptServiceRequest88
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 211  : 	initialiseHandler( next(), CIDT::interruptServiceRequest89 );

	push	OFFSET FLAT:?interruptServiceRequest89@CIDT@@CAXXZ ; CIDT::interruptServiceRequest89
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 212  : 	initialiseHandler( next(), CIDT::interruptServiceRequest8A );

	push	OFFSET FLAT:?interruptServiceRequest8A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest8A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 213  : 	initialiseHandler( next(), CIDT::interruptServiceRequest8B );

	push	OFFSET FLAT:?interruptServiceRequest8B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest8B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 214  : 	initialiseHandler( next(), CIDT::interruptServiceRequest8C );

	push	OFFSET FLAT:?interruptServiceRequest8C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest8C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 215  : 	initialiseHandler( next(), CIDT::interruptServiceRequest8D );

	push	OFFSET FLAT:?interruptServiceRequest8D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest8D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 216  : 	initialiseHandler( next(), CIDT::interruptServiceRequest8E );

	push	OFFSET FLAT:?interruptServiceRequest8E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest8E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 217  : 	initialiseHandler( next(), interruptServiceRequest8F );	

	push	OFFSET FLAT:?interruptServiceRequest8F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest8F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 218  : 	initialiseHandler( next(), interruptServiceRequest90 );

	push	OFFSET FLAT:?interruptServiceRequest90@CIDT@@CAXXZ ; CIDT::interruptServiceRequest90
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 219  : 	initialiseHandler( next(), CIDT::interruptServiceRequest91 );

	push	OFFSET FLAT:?interruptServiceRequest91@CIDT@@CAXXZ ; CIDT::interruptServiceRequest91
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 220  : 	initialiseHandler( next(), CIDT::interruptServiceRequest92 );

	push	OFFSET FLAT:?interruptServiceRequest92@CIDT@@CAXXZ ; CIDT::interruptServiceRequest92
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 221  : 	initialiseHandler( next(), CIDT::interruptServiceRequest93 );

	push	OFFSET FLAT:?interruptServiceRequest93@CIDT@@CAXXZ ; CIDT::interruptServiceRequest93
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 222  : 	initialiseHandler( next(), CIDT::interruptServiceRequest94 );

	push	OFFSET FLAT:?interruptServiceRequest94@CIDT@@CAXXZ ; CIDT::interruptServiceRequest94
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 223  : 	initialiseHandler( next(), CIDT::interruptServiceRequest95 );

	push	OFFSET FLAT:?interruptServiceRequest95@CIDT@@CAXXZ ; CIDT::interruptServiceRequest95
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 224  : 	initialiseHandler( next(), CIDT::interruptServiceRequest96 );

	push	OFFSET FLAT:?interruptServiceRequest96@CIDT@@CAXXZ ; CIDT::interruptServiceRequest96
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 225  : 	initialiseHandler( next(), CIDT::interruptServiceRequest97 );

	push	OFFSET FLAT:?interruptServiceRequest97@CIDT@@CAXXZ ; CIDT::interruptServiceRequest97
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 226  : 	initialiseHandler( next(), CIDT::interruptServiceRequest98 );

	push	OFFSET FLAT:?interruptServiceRequest98@CIDT@@CAXXZ ; CIDT::interruptServiceRequest98
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 227  : 	initialiseHandler( next(), CIDT::interruptServiceRequest99 );

	push	OFFSET FLAT:?interruptServiceRequest99@CIDT@@CAXXZ ; CIDT::interruptServiceRequest99
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 228  : 	initialiseHandler( next(), CIDT::interruptServiceRequest9A );

	push	OFFSET FLAT:?interruptServiceRequest9A@CIDT@@CAXXZ ; CIDT::interruptServiceRequest9A
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 229  : 	initialiseHandler( next(), CIDT::interruptServiceRequest9B );

	push	OFFSET FLAT:?interruptServiceRequest9B@CIDT@@CAXXZ ; CIDT::interruptServiceRequest9B
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 230  : 	initialiseHandler( next(), CIDT::interruptServiceRequest9C );

	push	OFFSET FLAT:?interruptServiceRequest9C@CIDT@@CAXXZ ; CIDT::interruptServiceRequest9C
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 231  : 	initialiseHandler( next(), CIDT::interruptServiceRequest9D );

	push	OFFSET FLAT:?interruptServiceRequest9D@CIDT@@CAXXZ ; CIDT::interruptServiceRequest9D
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 232  : 	initialiseHandler( next(), CIDT::interruptServiceRequest9E );

	push	OFFSET FLAT:?interruptServiceRequest9E@CIDT@@CAXXZ ; CIDT::interruptServiceRequest9E
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 233  : 	initialiseHandler( next(), CIDT::interruptServiceRequest9F );

	push	OFFSET FLAT:?interruptServiceRequest9F@CIDT@@CAXXZ ; CIDT::interruptServiceRequest9F
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 234  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA0 );

	push	OFFSET FLAT:?interruptServiceRequestA0@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 235  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA1 );

	push	OFFSET FLAT:?interruptServiceRequestA1@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 236  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA2 );

	push	OFFSET FLAT:?interruptServiceRequestA2@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 237  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA3 );

	push	OFFSET FLAT:?interruptServiceRequestA3@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA3
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 238  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA4 );

	push	OFFSET FLAT:?interruptServiceRequestA4@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA4
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 239  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA5 );

	push	OFFSET FLAT:?interruptServiceRequestA5@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA5
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 240  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA6 );

	push	OFFSET FLAT:?interruptServiceRequestA6@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA6
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 241  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA7 );

	push	OFFSET FLAT:?interruptServiceRequestA7@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA7
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 242  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA8 );

	push	OFFSET FLAT:?interruptServiceRequestA8@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA8
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 243  : 	initialiseHandler( next(), CIDT::interruptServiceRequestA9 );

	push	OFFSET FLAT:?interruptServiceRequestA9@CIDT@@CAXXZ ; CIDT::interruptServiceRequestA9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 244  : 	initialiseHandler( next(), CIDT::interruptServiceRequestAA );

	push	OFFSET FLAT:?interruptServiceRequestAA@CIDT@@CAXXZ ; CIDT::interruptServiceRequestAA
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 245  : 	initialiseHandler( next(), CIDT::interruptServiceRequestAB );

	push	OFFSET FLAT:?interruptServiceRequestAB@CIDT@@CAXXZ ; CIDT::interruptServiceRequestAB
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 246  : 	initialiseHandler( next(), CIDT::interruptServiceRequestAC );

	push	OFFSET FLAT:?interruptServiceRequestAC@CIDT@@CAXXZ ; CIDT::interruptServiceRequestAC
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 247  : 	initialiseHandler( next(), interruptServiceRequestAD );

	push	OFFSET FLAT:?interruptServiceRequestAD@CIDT@@CAXXZ ; CIDT::interruptServiceRequestAD
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 248  : 	initialiseHandler( next(), CIDT::interruptServiceRequestAE );

	push	OFFSET FLAT:?interruptServiceRequestAE@CIDT@@CAXXZ ; CIDT::interruptServiceRequestAE
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 249  : 	initialiseHandler( next(), CIDT::interruptServiceRequestAF );

	push	OFFSET FLAT:?interruptServiceRequestAF@CIDT@@CAXXZ ; CIDT::interruptServiceRequestAF
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 250  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB0 );

	push	OFFSET FLAT:?interruptServiceRequestB0@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 251  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB1 );

	push	OFFSET FLAT:?interruptServiceRequestB1@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 252  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB2 );

	push	OFFSET FLAT:?interruptServiceRequestB2@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 253  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB3 );

	push	OFFSET FLAT:?interruptServiceRequestB3@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB3
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 254  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB4 );

	push	OFFSET FLAT:?interruptServiceRequestB4@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB4
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 255  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB5 );

	push	OFFSET FLAT:?interruptServiceRequestB5@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB5
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 256  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB6 );

	push	OFFSET FLAT:?interruptServiceRequestB6@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB6
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 257  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB7 );

	push	OFFSET FLAT:?interruptServiceRequestB7@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB7
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 258  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB8 );

	push	OFFSET FLAT:?interruptServiceRequestB8@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB8
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 259  : 	initialiseHandler( next(), CIDT::interruptServiceRequestB9 );

	push	OFFSET FLAT:?interruptServiceRequestB9@CIDT@@CAXXZ ; CIDT::interruptServiceRequestB9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 260  : 	initialiseHandler( next(), CIDT::interruptServiceRequestBA );

	push	OFFSET FLAT:?interruptServiceRequestBA@CIDT@@CAXXZ ; CIDT::interruptServiceRequestBA
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 261  : 	initialiseHandler( next(), CIDT::interruptServiceRequestBB );

	push	OFFSET FLAT:?interruptServiceRequestBB@CIDT@@CAXXZ ; CIDT::interruptServiceRequestBB
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 262  : 	initialiseHandler( next(), CIDT::interruptServiceRequestBC );

	push	OFFSET FLAT:?interruptServiceRequestBC@CIDT@@CAXXZ ; CIDT::interruptServiceRequestBC
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 263  : 	initialiseHandler( next(), CIDT::interruptServiceRequestBD );

	push	OFFSET FLAT:?interruptServiceRequestBD@CIDT@@CAXXZ ; CIDT::interruptServiceRequestBD
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 264  : 	initialiseHandler( next(), CIDT::interruptServiceRequestBE );

	push	OFFSET FLAT:?interruptServiceRequestBE@CIDT@@CAXXZ ; CIDT::interruptServiceRequestBE
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 265  : 	initialiseHandler( next(), CIDT::interruptServiceRequestBF );

	push	OFFSET FLAT:?interruptServiceRequestBF@CIDT@@CAXXZ ; CIDT::interruptServiceRequestBF
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 266  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC0 );

	push	OFFSET FLAT:?interruptServiceRequestC0@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 267  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC1 );

	push	OFFSET FLAT:?interruptServiceRequestC1@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 268  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC2 );

	push	OFFSET FLAT:?interruptServiceRequestC2@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 269  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC3 );

	push	OFFSET FLAT:?interruptServiceRequestC3@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC3
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 270  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC4 );

	push	OFFSET FLAT:?interruptServiceRequestC4@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC4
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 271  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC5 );

	push	OFFSET FLAT:?interruptServiceRequestC5@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC5
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 272  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC6 );

	push	OFFSET FLAT:?interruptServiceRequestC6@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC6
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 273  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC7 );

	push	OFFSET FLAT:?interruptServiceRequestC7@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC7
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 274  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC8 );

	push	OFFSET FLAT:?interruptServiceRequestC8@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC8
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 275  : 	initialiseHandler( next(), CIDT::interruptServiceRequestC9 );

	push	OFFSET FLAT:?interruptServiceRequestC9@CIDT@@CAXXZ ; CIDT::interruptServiceRequestC9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 276  : 	initialiseHandler( next(), CIDT::interruptServiceRequestCA );

	push	OFFSET FLAT:?interruptServiceRequestCA@CIDT@@CAXXZ ; CIDT::interruptServiceRequestCA
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 277  : 	initialiseHandler( next(), CIDT::interruptServiceRequestCB );

	push	OFFSET FLAT:?interruptServiceRequestCB@CIDT@@CAXXZ ; CIDT::interruptServiceRequestCB
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 278  : 	initialiseHandler( next(), CIDT::interruptServiceRequestCC );

	push	OFFSET FLAT:?interruptServiceRequestCC@CIDT@@CAXXZ ; CIDT::interruptServiceRequestCC
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 279  : 	initialiseHandler( next(), CIDT::interruptServiceRequestCD );

	push	OFFSET FLAT:?interruptServiceRequestCD@CIDT@@CAXXZ ; CIDT::interruptServiceRequestCD
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 280  : 	initialiseHandler( next(), CIDT::interruptServiceRequestCE );

	push	OFFSET FLAT:?interruptServiceRequestCE@CIDT@@CAXXZ ; CIDT::interruptServiceRequestCE
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 281  : 	initialiseHandler( next(), CIDT::interruptServiceRequestCF );

	push	OFFSET FLAT:?interruptServiceRequestCF@CIDT@@CAXXZ ; CIDT::interruptServiceRequestCF
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 282  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD0 );

	push	OFFSET FLAT:?interruptServiceRequestD0@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 283  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD1 );

	push	OFFSET FLAT:?interruptServiceRequestD1@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 284  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD2 );

	push	OFFSET FLAT:?interruptServiceRequestD2@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 285  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD3 );

	push	OFFSET FLAT:?interruptServiceRequestD3@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD3
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 286  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD4 );

	push	OFFSET FLAT:?interruptServiceRequestD4@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD4
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 287  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD5 );

	push	OFFSET FLAT:?interruptServiceRequestD5@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD5
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 288  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD6 );

	push	OFFSET FLAT:?interruptServiceRequestD6@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD6
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 289  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD7 );

	push	OFFSET FLAT:?interruptServiceRequestD7@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD7
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 290  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD8 );

	push	OFFSET FLAT:?interruptServiceRequestD8@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD8
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 291  : 	initialiseHandler( next(), CIDT::interruptServiceRequestD9 );

	push	OFFSET FLAT:?interruptServiceRequestD9@CIDT@@CAXXZ ; CIDT::interruptServiceRequestD9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 292  : 	initialiseHandler( next(), CIDT::interruptServiceRequestDA );

	push	OFFSET FLAT:?interruptServiceRequestDA@CIDT@@CAXXZ ; CIDT::interruptServiceRequestDA
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 293  : 	initialiseHandler( next(), CIDT::interruptServiceRequestDB );

	push	OFFSET FLAT:?interruptServiceRequestDB@CIDT@@CAXXZ ; CIDT::interruptServiceRequestDB
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 294  : 	initialiseHandler( next(), CIDT::interruptServiceRequestDC );

	push	OFFSET FLAT:?interruptServiceRequestDC@CIDT@@CAXXZ ; CIDT::interruptServiceRequestDC
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 295  : 	initialiseHandler( next(), CIDT::interruptServiceRequestDD );

	push	OFFSET FLAT:?interruptServiceRequestDD@CIDT@@CAXXZ ; CIDT::interruptServiceRequestDD
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 296  : 	initialiseHandler( next(), CIDT::interruptServiceRequestDE );

	push	OFFSET FLAT:?interruptServiceRequestDE@CIDT@@CAXXZ ; CIDT::interruptServiceRequestDE
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 297  : 	initialiseHandler( next(), CIDT::interruptServiceRequestDF );

	push	OFFSET FLAT:?interruptServiceRequestDF@CIDT@@CAXXZ ; CIDT::interruptServiceRequestDF
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 298  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE0 );

	push	OFFSET FLAT:?interruptServiceRequestE0@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 299  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE1 );

	push	OFFSET FLAT:?interruptServiceRequestE1@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 300  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE2 );

	push	OFFSET FLAT:?interruptServiceRequestE2@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 301  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE3 );

	push	OFFSET FLAT:?interruptServiceRequestE3@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE3
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 302  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE4 );

	push	OFFSET FLAT:?interruptServiceRequestE4@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE4
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 303  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE5 );

	push	OFFSET FLAT:?interruptServiceRequestE5@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE5
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 304  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE6 );

	push	OFFSET FLAT:?interruptServiceRequestE6@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE6
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 305  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE7 );

	push	OFFSET FLAT:?interruptServiceRequestE7@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE7
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 306  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE8 );

	push	OFFSET FLAT:?interruptServiceRequestE8@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE8
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 307  : 	initialiseHandler( next(), CIDT::interruptServiceRequestE9 );

	push	OFFSET FLAT:?interruptServiceRequestE9@CIDT@@CAXXZ ; CIDT::interruptServiceRequestE9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 308  : 	initialiseHandler( next(), CIDT::interruptServiceRequestEA );

	push	OFFSET FLAT:?interruptServiceRequestEA@CIDT@@CAXXZ ; CIDT::interruptServiceRequestEA
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 309  : 	initialiseHandler( next(), CIDT::interruptServiceRequestEB );

	push	OFFSET FLAT:?interruptServiceRequestEB@CIDT@@CAXXZ ; CIDT::interruptServiceRequestEB
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 310  : 	initialiseHandler( next(), CIDT::interruptServiceRequestEC );

	push	OFFSET FLAT:?interruptServiceRequestEC@CIDT@@CAXXZ ; CIDT::interruptServiceRequestEC
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 311  : 	initialiseHandler( next(), CIDT::interruptServiceRequestED );

	push	OFFSET FLAT:?interruptServiceRequestED@CIDT@@CAXXZ ; CIDT::interruptServiceRequestED
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 312  : 	initialiseHandler( next(), CIDT::interruptServiceRequestEE );

	push	OFFSET FLAT:?interruptServiceRequestEE@CIDT@@CAXXZ ; CIDT::interruptServiceRequestEE
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 313  : 	initialiseHandler( next(), CIDT::interruptServiceRequestEF );

	push	OFFSET FLAT:?interruptServiceRequestEF@CIDT@@CAXXZ ; CIDT::interruptServiceRequestEF
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 314  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF0 );

	push	OFFSET FLAT:?interruptServiceRequestF0@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 315  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF1 );

	push	OFFSET FLAT:?interruptServiceRequestF1@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 316  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF2 );

	push	OFFSET FLAT:?interruptServiceRequestF2@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 317  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF3 );

	push	OFFSET FLAT:?interruptServiceRequestF3@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF3
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 318  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF4 );

	push	OFFSET FLAT:?interruptServiceRequestF4@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF4
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 319  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF5 );

	push	OFFSET FLAT:?interruptServiceRequestF5@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF5
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 320  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF6 );

	push	OFFSET FLAT:?interruptServiceRequestF6@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF6
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 321  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF7 );

	push	OFFSET FLAT:?interruptServiceRequestF7@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF7
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 322  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF8 );

	push	OFFSET FLAT:?interruptServiceRequestF8@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF8
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 323  : 	initialiseHandler( next(), CIDT::interruptServiceRequestF9 );

	push	OFFSET FLAT:?interruptServiceRequestF9@CIDT@@CAXXZ ; CIDT::interruptServiceRequestF9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 324  : 	initialiseHandler( next(), CIDT::interruptServiceRequestFA );

	push	OFFSET FLAT:?interruptServiceRequestFA@CIDT@@CAXXZ ; CIDT::interruptServiceRequestFA
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 325  : 	initialiseHandler( next(), CIDT::interruptServiceRequestFB );

	push	OFFSET FLAT:?interruptServiceRequestFB@CIDT@@CAXXZ ; CIDT::interruptServiceRequestFB
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 326  : 	initialiseHandler( next(), CIDT::interruptServiceRequestFC );

	push	OFFSET FLAT:?interruptServiceRequestFC@CIDT@@CAXXZ ; CIDT::interruptServiceRequestFC
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 327  : 	initialiseHandler( next(), CIDT::interruptServiceRequestFD );

	push	OFFSET FLAT:?interruptServiceRequestFD@CIDT@@CAXXZ ; CIDT::interruptServiceRequestFD
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 328  : 	initialiseHandler( next(), CIDT::interruptServiceRequestFE );

	push	OFFSET FLAT:?interruptServiceRequestFE@CIDT@@CAXXZ ; CIDT::interruptServiceRequestFE
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 329  : 	initialiseHandler( next(), CIDT::interruptServiceRequestFF );

	push	OFFSET FLAT:?interruptServiceRequestFF@CIDT@@CAXXZ ; CIDT::interruptServiceRequestFF
	mov	ecx, DWORD PTR _this$[ebp]
	call	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ; CDescriptorTable::next
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ; CIDT::initialiseHandler

; 330  : 
; 331  : 	// Load IDTR.
; 332  : 	Pointer.iLimit	= (getEntries()<<3)-1;

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getEntries@CDescriptorTable@@IBEGXZ	; CDescriptorTable::getEntries
	and	eax, 65535				; 0000ffffH
	lea	eax, DWORD PTR [eax*8-1]
	mov	WORD PTR _Pointer$[ebp], ax

; 333  : 	Pointer.pBase	= getBase();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ ; CDescriptorTable::getBase
	mov	DWORD PTR _Pointer$[ebp+2], eax

; 334  : #ifndef WIN32
; 335  : 	__asm lidt Pointer

	lidt	FWORD PTR _Pointer$[ebp]

; 336  : #endif
; 337  : 
; 338  : 	// Return no error.
; 339  : 	return EC_NONE;

	xor	eax, eax

; 340  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?create@CIDT@@QAEKXZ ENDP				; CIDT::create
_TEXT	ENDS
PUBLIC	?defaultHandler@CIDT@@CAXE@Z			; CIDT::defaultHandler
;	COMDAT ?interruptServiceRequest00@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest00@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest00, COMDAT

; 35   : 	static void interruptServiceRequest00(){defaultHandler(0x00);}

	push	ebp
	mov	ebp, esp
	push	0
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest00@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest00
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest01@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest01@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest01, COMDAT

; 36   : 	static void interruptServiceRequest01(){defaultHandler(0x01);}

	push	ebp
	mov	ebp, esp
	push	1
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest01@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest01
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest02@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest02@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest02, COMDAT

; 37   : 	static void interruptServiceRequest02(){defaultHandler(0x02);}

	push	ebp
	mov	ebp, esp
	push	2
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest02@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest02
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest03@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest03@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest03, COMDAT

; 38   : 	static void interruptServiceRequest03(){defaultHandler(0x03);}

	push	ebp
	mov	ebp, esp
	push	3
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest03@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest03
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest04@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest04@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest04, COMDAT

; 39   : 	static void interruptServiceRequest04(){defaultHandler(0x04);}

	push	ebp
	mov	ebp, esp
	push	4
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest04@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest04
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest05@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest05@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest05, COMDAT

; 40   : 	static void interruptServiceRequest05(){defaultHandler(0x05);}

	push	ebp
	mov	ebp, esp
	push	5
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest05@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest05
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest06@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest06@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest06, COMDAT

; 41   : 	static void interruptServiceRequest06(){defaultHandler(0x06);}

	push	ebp
	mov	ebp, esp
	push	6
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest06@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest06
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest07@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest07@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest07, COMDAT

; 42   : 	static void interruptServiceRequest07(){defaultHandler(0x07);}

	push	ebp
	mov	ebp, esp
	push	7
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest07@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest07
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest08@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest08@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest08, COMDAT

; 43   : 	static void interruptServiceRequest08(){defaultHandler(0x08);}

	push	ebp
	mov	ebp, esp
	push	8
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest08@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest08
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest09@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest09@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest09, COMDAT

; 44   : 	static void interruptServiceRequest09(){defaultHandler(0x09);}

	push	ebp
	mov	ebp, esp
	push	9
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest09@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest09
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest0A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest0A, COMDAT

; 45   : 	static void interruptServiceRequest0A(){defaultHandler(0x0A);}

	push	ebp
	mov	ebp, esp
	push	10					; 0000000aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest0A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest0A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest0B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest0B, COMDAT

; 46   : 	static void interruptServiceRequest0B(){defaultHandler(0x0B);}

	push	ebp
	mov	ebp, esp
	push	11					; 0000000bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest0B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest0B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest0C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest0C, COMDAT

; 47   : 	static void interruptServiceRequest0C(){defaultHandler(0x0C);}

	push	ebp
	mov	ebp, esp
	push	12					; 0000000cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest0C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest0C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest0D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest0D, COMDAT

; 48   : 	static void interruptServiceRequest0D(){defaultHandler(0x0D);}

	push	ebp
	mov	ebp, esp
	push	13					; 0000000dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest0D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest0D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest0E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest0E, COMDAT

; 49   : 	static void interruptServiceRequest0E(){defaultHandler(0x0E);}

	push	ebp
	mov	ebp, esp
	push	14					; 0000000eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest0E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest0E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest0F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest0F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest0F, COMDAT

; 50   : 	static void interruptServiceRequest0F(){defaultHandler(0x0F);}

	push	ebp
	mov	ebp, esp
	push	15					; 0000000fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest0F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest0F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest10@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest10@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest10, COMDAT

; 51   : 	static void interruptServiceRequest10(){defaultHandler(0x10);}

	push	ebp
	mov	ebp, esp
	push	16					; 00000010H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest10@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest10
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest11@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest11@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest11, COMDAT

; 52   : 	static void interruptServiceRequest11(){defaultHandler(0x11);}

	push	ebp
	mov	ebp, esp
	push	17					; 00000011H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest11@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest11
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest12@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest12@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest12, COMDAT

; 53   : 	static void interruptServiceRequest12(){defaultHandler(0x12);}

	push	ebp
	mov	ebp, esp
	push	18					; 00000012H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest12@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest12
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest13@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest13@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest13, COMDAT

; 54   : 	static void interruptServiceRequest13(){defaultHandler(0x13);}

	push	ebp
	mov	ebp, esp
	push	19					; 00000013H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest13@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest13
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest14@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest14@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest14, COMDAT

; 55   : 	static void interruptServiceRequest14(){defaultHandler(0x14);}

	push	ebp
	mov	ebp, esp
	push	20					; 00000014H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest14@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest14
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest15@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest15@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest15, COMDAT

; 56   : 	static void interruptServiceRequest15(){defaultHandler(0x15);}

	push	ebp
	mov	ebp, esp
	push	21					; 00000015H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest15@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest15
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest16@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest16@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest16, COMDAT

; 57   : 	static void interruptServiceRequest16(){defaultHandler(0x16);}

	push	ebp
	mov	ebp, esp
	push	22					; 00000016H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest16@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest16
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest17@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest17@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest17, COMDAT

; 58   : 	static void interruptServiceRequest17(){defaultHandler(0x17);}

	push	ebp
	mov	ebp, esp
	push	23					; 00000017H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest17@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest17
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest18@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest18@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest18, COMDAT

; 59   : 	static void interruptServiceRequest18(){defaultHandler(0x18);}

	push	ebp
	mov	ebp, esp
	push	24					; 00000018H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest18@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest18
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest19@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest19@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest19, COMDAT

; 60   : 	static void interruptServiceRequest19(){defaultHandler(0x19);}

	push	ebp
	mov	ebp, esp
	push	25					; 00000019H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest19@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest19
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest1A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest1A, COMDAT

; 61   : 	static void interruptServiceRequest1A(){defaultHandler(0x1A);}

	push	ebp
	mov	ebp, esp
	push	26					; 0000001aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest1A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest1A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest1B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest1B, COMDAT

; 62   : 	static void interruptServiceRequest1B(){defaultHandler(0x1B);}

	push	ebp
	mov	ebp, esp
	push	27					; 0000001bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest1B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest1B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest1C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest1C, COMDAT

; 63   : 	static void interruptServiceRequest1C(){defaultHandler(0x1C);}

	push	ebp
	mov	ebp, esp
	push	28					; 0000001cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest1C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest1C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest1D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest1D, COMDAT

; 64   : 	static void interruptServiceRequest1D(){defaultHandler(0x1D);}

	push	ebp
	mov	ebp, esp
	push	29					; 0000001dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest1D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest1D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest1E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest1E, COMDAT

; 65   : 	static void interruptServiceRequest1E(){defaultHandler(0x1E);}

	push	ebp
	mov	ebp, esp
	push	30					; 0000001eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest1E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest1E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest1F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest1F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest1F, COMDAT

; 66   : 	static void interruptServiceRequest1F(){defaultHandler(0x1F);}

	push	ebp
	mov	ebp, esp
	push	31					; 0000001fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest1F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest1F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest20@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest20@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest20, COMDAT

; 67   : 	static void interruptServiceRequest20(){defaultHandler(0x20);}

	push	ebp
	mov	ebp, esp
	push	32					; 00000020H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest20@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest20
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest21@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest21@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest21, COMDAT

; 68   : 	static void interruptServiceRequest21(){defaultHandler(0x21);}

	push	ebp
	mov	ebp, esp
	push	33					; 00000021H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest21@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest21
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest22@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest22@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest22, COMDAT

; 69   : 	static void interruptServiceRequest22(){defaultHandler(0x22);}

	push	ebp
	mov	ebp, esp
	push	34					; 00000022H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest22@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest22
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest23@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest23@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest23, COMDAT

; 70   : 	static void interruptServiceRequest23(){defaultHandler(0x23);}

	push	ebp
	mov	ebp, esp
	push	35					; 00000023H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest23@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest23
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest24@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest24@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest24, COMDAT

; 71   : 	static void interruptServiceRequest24(){defaultHandler(0x24);}

	push	ebp
	mov	ebp, esp
	push	36					; 00000024H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest24@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest24
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest25@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest25@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest25, COMDAT

; 72   : 	static void interruptServiceRequest25(){defaultHandler(0x25);}

	push	ebp
	mov	ebp, esp
	push	37					; 00000025H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest25@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest25
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest26@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest26@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest26, COMDAT

; 73   : 	static void interruptServiceRequest26(){defaultHandler(0x26);}

	push	ebp
	mov	ebp, esp
	push	38					; 00000026H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest26@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest26
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest27@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest27@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest27, COMDAT

; 74   : 	static void interruptServiceRequest27(){defaultHandler(0x27);}

	push	ebp
	mov	ebp, esp
	push	39					; 00000027H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest27@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest27
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest28@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest28@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest28, COMDAT

; 75   : 	static void CIDT::interruptServiceRequest28(){defaultHandler(0x28);}

	push	ebp
	mov	ebp, esp
	push	40					; 00000028H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest28@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest28
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest29@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest29@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest29, COMDAT

; 76   : 	static void CIDT::interruptServiceRequest29(){defaultHandler(0x29);}

	push	ebp
	mov	ebp, esp
	push	41					; 00000029H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest29@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest29
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest2A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest2A, COMDAT

; 77   : 	static void CIDT::interruptServiceRequest2A(){defaultHandler(0x2A);}

	push	ebp
	mov	ebp, esp
	push	42					; 0000002aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest2A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest2A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest2B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest2B, COMDAT

; 78   : 	static void CIDT::interruptServiceRequest2B(){defaultHandler(0x2B);}

	push	ebp
	mov	ebp, esp
	push	43					; 0000002bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest2B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest2B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest2C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest2C, COMDAT

; 79   : 	static void CIDT::interruptServiceRequest2C(){defaultHandler(0x2C);}

	push	ebp
	mov	ebp, esp
	push	44					; 0000002cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest2C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest2C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest2D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest2D, COMDAT

; 80   : 	static void CIDT::interruptServiceRequest2D(){defaultHandler(0x2D);}

	push	ebp
	mov	ebp, esp
	push	45					; 0000002dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest2D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest2D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest2E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest2E, COMDAT

; 81   : 	static void CIDT::interruptServiceRequest2E(){defaultHandler(0x2E);}

	push	ebp
	mov	ebp, esp
	push	46					; 0000002eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest2E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest2E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest2F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest2F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest2F, COMDAT

; 82   : 	static void CIDT::interruptServiceRequest2F(){defaultHandler(0x2F);}

	push	ebp
	mov	ebp, esp
	push	47					; 0000002fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest2F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest2F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest30@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest30@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest30, COMDAT

; 83   : 	static void CIDT::interruptServiceRequest30(){defaultHandler(0x30);}

	push	ebp
	mov	ebp, esp
	push	48					; 00000030H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest30@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest30
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest31@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest31@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest31, COMDAT

; 84   : 	static void CIDT::interruptServiceRequest31(){defaultHandler(0x31);}

	push	ebp
	mov	ebp, esp
	push	49					; 00000031H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest31@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest31
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest32@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest32@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest32, COMDAT

; 85   : 	static void CIDT::interruptServiceRequest32(){defaultHandler(0x32);}

	push	ebp
	mov	ebp, esp
	push	50					; 00000032H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest32@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest32
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest33@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest33@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest33, COMDAT

; 86   : 	static void CIDT::interruptServiceRequest33(){defaultHandler(0x33);}

	push	ebp
	mov	ebp, esp
	push	51					; 00000033H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest33@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest33
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest34@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest34@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest34, COMDAT

; 87   : 	static void CIDT::interruptServiceRequest34(){defaultHandler(0x34);}

	push	ebp
	mov	ebp, esp
	push	52					; 00000034H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest34@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest34
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest35@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest35@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest35, COMDAT

; 88   : 	static void CIDT::interruptServiceRequest35(){defaultHandler(0x35);}

	push	ebp
	mov	ebp, esp
	push	53					; 00000035H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest35@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest35
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest36@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest36@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest36, COMDAT

; 89   : 	static void CIDT::interruptServiceRequest36(){defaultHandler(0x36);}

	push	ebp
	mov	ebp, esp
	push	54					; 00000036H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest36@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest36
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest37@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest37@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest37, COMDAT

; 90   : 	static void CIDT::interruptServiceRequest37(){defaultHandler(0x37);}

	push	ebp
	mov	ebp, esp
	push	55					; 00000037H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest37@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest37
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest38@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest38@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest38, COMDAT

; 91   : 	static void CIDT::interruptServiceRequest38(){defaultHandler(0x38);}

	push	ebp
	mov	ebp, esp
	push	56					; 00000038H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest38@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest38
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest39@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest39@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest39, COMDAT

; 92   : 	static void CIDT::interruptServiceRequest39(){defaultHandler(0x39);}

	push	ebp
	mov	ebp, esp
	push	57					; 00000039H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest39@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest39
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest3A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest3A, COMDAT

; 93   : 	static void CIDT::interruptServiceRequest3A(){defaultHandler(0x3A);}

	push	ebp
	mov	ebp, esp
	push	58					; 0000003aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest3A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest3A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest3B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest3B, COMDAT

; 94   : 	static void CIDT::interruptServiceRequest3B(){defaultHandler(0x3B);}

	push	ebp
	mov	ebp, esp
	push	59					; 0000003bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest3B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest3B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest3C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest3C, COMDAT

; 95   : 	static void CIDT::interruptServiceRequest3C(){defaultHandler(0x3C);}

	push	ebp
	mov	ebp, esp
	push	60					; 0000003cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest3C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest3C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest3D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest3D, COMDAT

; 96   : 	static void CIDT::interruptServiceRequest3D(){defaultHandler(0x3D);}

	push	ebp
	mov	ebp, esp
	push	61					; 0000003dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest3D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest3D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest3E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest3E, COMDAT

; 97   : 	static void CIDT::interruptServiceRequest3E(){defaultHandler(0x3E);}

	push	ebp
	mov	ebp, esp
	push	62					; 0000003eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest3E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest3E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest3F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest3F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest3F, COMDAT

; 98   : 	static void CIDT::interruptServiceRequest3F(){defaultHandler(0x3F);}

	push	ebp
	mov	ebp, esp
	push	63					; 0000003fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest3F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest3F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest40@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest40@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest40, COMDAT

; 99   : 	static void CIDT::interruptServiceRequest40(){defaultHandler(0x40);}

	push	ebp
	mov	ebp, esp
	push	64					; 00000040H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest40@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest40
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest41@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest41@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest41, COMDAT

; 100  : 	static void CIDT::interruptServiceRequest41(){defaultHandler(0x41);}

	push	ebp
	mov	ebp, esp
	push	65					; 00000041H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest41@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest41
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest42@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest42@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest42, COMDAT

; 101  : 	static void CIDT::interruptServiceRequest42(){defaultHandler(0x42);}

	push	ebp
	mov	ebp, esp
	push	66					; 00000042H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest42@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest42
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest43@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest43@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest43, COMDAT

; 102  : 	static void CIDT::interruptServiceRequest43(){defaultHandler(0x43);}

	push	ebp
	mov	ebp, esp
	push	67					; 00000043H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest43@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest43
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest44@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest44@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest44, COMDAT

; 103  : 	static void CIDT::interruptServiceRequest44(){defaultHandler(0x44);}

	push	ebp
	mov	ebp, esp
	push	68					; 00000044H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest44@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest44
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest45@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest45@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest45, COMDAT

; 104  : 	static void CIDT::interruptServiceRequest45(){defaultHandler(0x45);}

	push	ebp
	mov	ebp, esp
	push	69					; 00000045H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest45@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest45
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest46@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest46@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest46, COMDAT

; 105  : 	static void CIDT::interruptServiceRequest46(){defaultHandler(0x46);}

	push	ebp
	mov	ebp, esp
	push	70					; 00000046H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest46@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest46
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest47@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest47@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest47, COMDAT

; 106  : 	static void CIDT::interruptServiceRequest47(){defaultHandler(0x47);}

	push	ebp
	mov	ebp, esp
	push	71					; 00000047H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest47@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest47
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest48@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest48@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest48, COMDAT

; 107  : 	static void CIDT::interruptServiceRequest48(){defaultHandler(0x48);}

	push	ebp
	mov	ebp, esp
	push	72					; 00000048H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest48@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest48
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest49@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest49@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest49, COMDAT

; 108  : 	static void CIDT::interruptServiceRequest49(){defaultHandler(0x49);}

	push	ebp
	mov	ebp, esp
	push	73					; 00000049H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest49@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest49
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest4A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest4A, COMDAT

; 109  : 	static void CIDT::interruptServiceRequest4A(){defaultHandler(0x4A);}

	push	ebp
	mov	ebp, esp
	push	74					; 0000004aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest4A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest4A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest4B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest4B, COMDAT

; 110  : 	static void CIDT::interruptServiceRequest4B(){defaultHandler(0x4B);}

	push	ebp
	mov	ebp, esp
	push	75					; 0000004bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest4B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest4B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest4C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest4C, COMDAT

; 111  : 	static void CIDT::interruptServiceRequest4C(){defaultHandler(0x4C);}

	push	ebp
	mov	ebp, esp
	push	76					; 0000004cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest4C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest4C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest4D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest4D, COMDAT

; 112  : 	static void CIDT::interruptServiceRequest4D(){defaultHandler(0x4D);}

	push	ebp
	mov	ebp, esp
	push	77					; 0000004dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest4D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest4D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest4E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest4E, COMDAT

; 113  : 	static void CIDT::interruptServiceRequest4E(){defaultHandler(0x4E);}

	push	ebp
	mov	ebp, esp
	push	78					; 0000004eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest4E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest4E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest4F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest4F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest4F, COMDAT

; 114  : 	static void CIDT::interruptServiceRequest4F(){defaultHandler(0x4F);}

	push	ebp
	mov	ebp, esp
	push	79					; 0000004fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest4F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest4F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest50@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest50@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest50, COMDAT

; 115  : 	static void CIDT::interruptServiceRequest50(){defaultHandler(0x50);}

	push	ebp
	mov	ebp, esp
	push	80					; 00000050H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest50@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest50
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest51@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest51@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest51, COMDAT

; 116  : 	static void CIDT::interruptServiceRequest51(){defaultHandler(0x51);}

	push	ebp
	mov	ebp, esp
	push	81					; 00000051H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest51@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest51
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest52@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest52@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest52, COMDAT

; 117  : 	static void CIDT::interruptServiceRequest52(){defaultHandler(0x52);}

	push	ebp
	mov	ebp, esp
	push	82					; 00000052H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest52@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest52
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest53@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest53@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest53, COMDAT

; 118  : 	static void CIDT::interruptServiceRequest53(){defaultHandler(0x53);}

	push	ebp
	mov	ebp, esp
	push	83					; 00000053H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest53@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest53
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest54@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest54@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest54, COMDAT

; 119  : 	static void CIDT::interruptServiceRequest54(){defaultHandler(0x54);}

	push	ebp
	mov	ebp, esp
	push	84					; 00000054H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest54@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest54
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest55@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest55@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest55, COMDAT

; 120  : 	static void CIDT::interruptServiceRequest55(){defaultHandler(0x55);}

	push	ebp
	mov	ebp, esp
	push	85					; 00000055H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest55@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest55
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest56@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest56@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest56, COMDAT

; 121  : 	static void CIDT::interruptServiceRequest56(){defaultHandler(0x56);}

	push	ebp
	mov	ebp, esp
	push	86					; 00000056H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest56@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest56
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest57@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest57@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest57, COMDAT

; 122  : 	static void CIDT::interruptServiceRequest57(){defaultHandler(0x57);}

	push	ebp
	mov	ebp, esp
	push	87					; 00000057H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest57@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest57
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest58@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest58@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest58, COMDAT

; 123  : 	static void CIDT::interruptServiceRequest58(){defaultHandler(0x58);}

	push	ebp
	mov	ebp, esp
	push	88					; 00000058H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest58@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest58
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest59@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest59@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest59, COMDAT

; 124  : 	static void CIDT::interruptServiceRequest59(){defaultHandler(0x59);}

	push	ebp
	mov	ebp, esp
	push	89					; 00000059H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest59@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest59
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest5A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest5A, COMDAT

; 125  : 	static void CIDT::interruptServiceRequest5A(){defaultHandler(0x5A);}

	push	ebp
	mov	ebp, esp
	push	90					; 0000005aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest5A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest5A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest5B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest5B, COMDAT

; 126  : 	static void CIDT::interruptServiceRequest5B(){defaultHandler(0x5B);}

	push	ebp
	mov	ebp, esp
	push	91					; 0000005bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest5B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest5B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest5C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest5C, COMDAT

; 127  : 	static void CIDT::interruptServiceRequest5C(){defaultHandler(0x5C);}

	push	ebp
	mov	ebp, esp
	push	92					; 0000005cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest5C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest5C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest5D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest5D, COMDAT

; 128  : 	static void CIDT::interruptServiceRequest5D(){defaultHandler(0x5D);}

	push	ebp
	mov	ebp, esp
	push	93					; 0000005dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest5D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest5D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest5E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest5E, COMDAT

; 129  : 	static void CIDT::interruptServiceRequest5E(){defaultHandler(0x5E);}

	push	ebp
	mov	ebp, esp
	push	94					; 0000005eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest5E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest5E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest5F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest5F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest5F, COMDAT

; 130  : 	static void CIDT::interruptServiceRequest5F(){defaultHandler(0x5F);}

	push	ebp
	mov	ebp, esp
	push	95					; 0000005fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest5F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest5F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest60@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest60@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest60, COMDAT

; 131  : 	static void CIDT::interruptServiceRequest60(){defaultHandler(0x60);}

	push	ebp
	mov	ebp, esp
	push	96					; 00000060H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest60@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest60
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest61@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest61@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest61, COMDAT

; 132  : 	static void CIDT::interruptServiceRequest61(){defaultHandler(0x61);}

	push	ebp
	mov	ebp, esp
	push	97					; 00000061H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest61@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest61
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest62@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest62@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest62, COMDAT

; 133  : 	static void CIDT::interruptServiceRequest62(){defaultHandler(0x62);}

	push	ebp
	mov	ebp, esp
	push	98					; 00000062H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest62@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest62
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest63@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest63@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest63, COMDAT

; 134  : 	static void CIDT::interruptServiceRequest63(){defaultHandler(0x63);}

	push	ebp
	mov	ebp, esp
	push	99					; 00000063H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest63@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest63
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest64@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest64@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest64, COMDAT

; 135  : 	static void CIDT::interruptServiceRequest64(){defaultHandler(0x64);}

	push	ebp
	mov	ebp, esp
	push	100					; 00000064H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest64@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest64
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest65@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest65@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest65, COMDAT

; 136  : 	static void CIDT::interruptServiceRequest65(){defaultHandler(0x65);}

	push	ebp
	mov	ebp, esp
	push	101					; 00000065H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest65@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest65
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest66@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest66@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest66, COMDAT

; 137  : 	static void CIDT::interruptServiceRequest66(){defaultHandler(0x66);}

	push	ebp
	mov	ebp, esp
	push	102					; 00000066H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest66@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest66
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest67@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest67@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest67, COMDAT

; 138  : 	static void CIDT::interruptServiceRequest67(){defaultHandler(0x67);}

	push	ebp
	mov	ebp, esp
	push	103					; 00000067H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest67@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest67
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest68@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest68@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest68, COMDAT

; 139  : 	static void CIDT::interruptServiceRequest68(){defaultHandler(0x68);}

	push	ebp
	mov	ebp, esp
	push	104					; 00000068H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest68@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest68
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest69@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest69@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest69, COMDAT

; 140  : 	static void CIDT::interruptServiceRequest69(){defaultHandler(0x69);}

	push	ebp
	mov	ebp, esp
	push	105					; 00000069H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest69@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest69
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest6A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest6A, COMDAT

; 141  : 	static void CIDT::interruptServiceRequest6A(){defaultHandler(0x6A);}

	push	ebp
	mov	ebp, esp
	push	106					; 0000006aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest6A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest6A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest6B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest6B, COMDAT

; 142  : 	static void CIDT::interruptServiceRequest6B(){defaultHandler(0x6B);}

	push	ebp
	mov	ebp, esp
	push	107					; 0000006bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest6B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest6B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest6C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest6C, COMDAT

; 143  : 	static void CIDT::interruptServiceRequest6C(){defaultHandler(0x6C);}

	push	ebp
	mov	ebp, esp
	push	108					; 0000006cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest6C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest6C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest6D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest6D, COMDAT

; 144  : 	static void CIDT::interruptServiceRequest6D(){defaultHandler(0x6D);}

	push	ebp
	mov	ebp, esp
	push	109					; 0000006dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest6D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest6D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest6E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest6E, COMDAT

; 145  : 	static void CIDT::interruptServiceRequest6E(){defaultHandler(0x6E);}

	push	ebp
	mov	ebp, esp
	push	110					; 0000006eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest6E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest6E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest6F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest6F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest6F, COMDAT

; 146  : 	static void CIDT::interruptServiceRequest6F(){defaultHandler(0x6F);}

	push	ebp
	mov	ebp, esp
	push	111					; 0000006fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest6F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest6F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest70@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest70@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest70, COMDAT

; 147  : 	static void CIDT::interruptServiceRequest70(){defaultHandler(0x70);}

	push	ebp
	mov	ebp, esp
	push	112					; 00000070H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest70@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest70
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest71@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest71@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest71, COMDAT

; 148  : 	static void CIDT::interruptServiceRequest71(){defaultHandler(0x71);}

	push	ebp
	mov	ebp, esp
	push	113					; 00000071H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest71@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest71
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest72@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest72@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest72, COMDAT

; 149  : 	static void CIDT::interruptServiceRequest72(){defaultHandler(0x72);}

	push	ebp
	mov	ebp, esp
	push	114					; 00000072H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest72@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest72
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest73@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest73@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest73, COMDAT

; 150  : 	static void CIDT::interruptServiceRequest73(){defaultHandler(0x73);}

	push	ebp
	mov	ebp, esp
	push	115					; 00000073H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest73@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest73
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest74@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest74@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest74, COMDAT

; 151  : 	static void CIDT::interruptServiceRequest74(){defaultHandler(0x74);}

	push	ebp
	mov	ebp, esp
	push	116					; 00000074H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest74@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest74
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest75@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest75@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest75, COMDAT

; 152  : 	static void CIDT::interruptServiceRequest75(){defaultHandler(0x75);}

	push	ebp
	mov	ebp, esp
	push	117					; 00000075H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest75@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest75
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest76@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest76@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest76, COMDAT

; 153  : 	static void CIDT::interruptServiceRequest76(){defaultHandler(0x76);}

	push	ebp
	mov	ebp, esp
	push	118					; 00000076H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest76@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest76
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest77@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest77@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest77, COMDAT

; 154  : 	static void CIDT::interruptServiceRequest77(){defaultHandler(0x77);}

	push	ebp
	mov	ebp, esp
	push	119					; 00000077H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest77@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest77
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest78@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest78@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest78, COMDAT

; 155  : 	static void CIDT::interruptServiceRequest78(){defaultHandler(0x78);}

	push	ebp
	mov	ebp, esp
	push	120					; 00000078H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest78@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest78
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest79@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest79@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest79, COMDAT

; 156  : 	static void CIDT::interruptServiceRequest79(){defaultHandler(0x79);}

	push	ebp
	mov	ebp, esp
	push	121					; 00000079H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest79@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest79
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest7A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest7A, COMDAT

; 157  : 	static void CIDT::interruptServiceRequest7A(){defaultHandler(0x7A);}

	push	ebp
	mov	ebp, esp
	push	122					; 0000007aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest7A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest7A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest7B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest7B, COMDAT

; 158  : 	static void CIDT::interruptServiceRequest7B(){defaultHandler(0x7B);}

	push	ebp
	mov	ebp, esp
	push	123					; 0000007bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest7B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest7B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest7C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest7C, COMDAT

; 159  : 	static void CIDT::interruptServiceRequest7C(){defaultHandler(0x7C);}

	push	ebp
	mov	ebp, esp
	push	124					; 0000007cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest7C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest7C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest7D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest7D, COMDAT

; 160  : 	static void CIDT::interruptServiceRequest7D(){defaultHandler(0x7D);}

	push	ebp
	mov	ebp, esp
	push	125					; 0000007dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest7D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest7D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest7E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest7E, COMDAT

; 161  : 	static void CIDT::interruptServiceRequest7E(){defaultHandler(0x7E);}

	push	ebp
	mov	ebp, esp
	push	126					; 0000007eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest7E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest7E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest7F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest7F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest7F, COMDAT

; 162  : 	static void CIDT::interruptServiceRequest7F(){defaultHandler(0x7F);}	

	push	ebp
	mov	ebp, esp
	push	127					; 0000007fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest7F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest7F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest80@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest80@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest80, COMDAT

; 163  : 	static void CIDT::interruptServiceRequest80(){defaultHandler(0x80);}

	push	ebp
	mov	ebp, esp
	push	128					; 00000080H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest80@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest80
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest81@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest81@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest81, COMDAT

; 164  : 	static void CIDT::interruptServiceRequest81(){defaultHandler(0x81);}

	push	ebp
	mov	ebp, esp
	push	129					; 00000081H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest81@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest81
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest82@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest82@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest82, COMDAT

; 165  : 	static void CIDT::interruptServiceRequest82(){defaultHandler(0x82);}

	push	ebp
	mov	ebp, esp
	push	130					; 00000082H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest82@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest82
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest83@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest83@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest83, COMDAT

; 166  : 	static void CIDT::interruptServiceRequest83(){defaultHandler(0x83);}

	push	ebp
	mov	ebp, esp
	push	131					; 00000083H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest83@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest83
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest84@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest84@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest84, COMDAT

; 167  : 	static void CIDT::interruptServiceRequest84(){defaultHandler(0x84);}

	push	ebp
	mov	ebp, esp
	push	132					; 00000084H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest84@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest84
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest85@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest85@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest85, COMDAT

; 168  : 	static void CIDT::interruptServiceRequest85(){defaultHandler(0x85);}

	push	ebp
	mov	ebp, esp
	push	133					; 00000085H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest85@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest85
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest86@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest86@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest86, COMDAT

; 169  : 	static void CIDT::interruptServiceRequest86(){defaultHandler(0x86);}

	push	ebp
	mov	ebp, esp
	push	134					; 00000086H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest86@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest86
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest87@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest87@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest87, COMDAT

; 170  : 	static void CIDT::interruptServiceRequest87(){defaultHandler(0x87);}

	push	ebp
	mov	ebp, esp
	push	135					; 00000087H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest87@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest87
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest88@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest88@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest88, COMDAT

; 171  : 	static void CIDT::interruptServiceRequest88(){defaultHandler(0x88);}

	push	ebp
	mov	ebp, esp
	push	136					; 00000088H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest88@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest88
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest89@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest89@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest89, COMDAT

; 172  : 	static void CIDT::interruptServiceRequest89(){defaultHandler(0x89);}

	push	ebp
	mov	ebp, esp
	push	137					; 00000089H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest89@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest89
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest8A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest8A, COMDAT

; 173  : 	static void CIDT::interruptServiceRequest8A(){defaultHandler(0x8A);}

	push	ebp
	mov	ebp, esp
	push	138					; 0000008aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest8A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest8A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest8B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest8B, COMDAT

; 174  : 	static void CIDT::interruptServiceRequest8B(){defaultHandler(0x8B);}

	push	ebp
	mov	ebp, esp
	push	139					; 0000008bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest8B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest8B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest8C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest8C, COMDAT

; 175  : 	static void CIDT::interruptServiceRequest8C(){defaultHandler(0x8C);}

	push	ebp
	mov	ebp, esp
	push	140					; 0000008cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest8C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest8C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest8D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest8D, COMDAT

; 176  : 	static void CIDT::interruptServiceRequest8D(){defaultHandler(0x8D);}

	push	ebp
	mov	ebp, esp
	push	141					; 0000008dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest8D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest8D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest8E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest8E, COMDAT

; 177  : 	static void CIDT::interruptServiceRequest8E(){defaultHandler(0x8E);}

	push	ebp
	mov	ebp, esp
	push	142					; 0000008eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest8E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest8E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest8F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest8F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest8F, COMDAT

; 178  : 	static void CIDT::interruptServiceRequest8F(){defaultHandler(0x8F);}

	push	ebp
	mov	ebp, esp
	push	143					; 0000008fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest8F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest8F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest90@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest90@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest90, COMDAT

; 179  : 	static void CIDT::interruptServiceRequest90(){defaultHandler(0x90);}

	push	ebp
	mov	ebp, esp
	push	144					; 00000090H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest90@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest90
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest91@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest91@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest91, COMDAT

; 180  : 	static void CIDT::interruptServiceRequest91(){defaultHandler(0x91);}

	push	ebp
	mov	ebp, esp
	push	145					; 00000091H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest91@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest91
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest92@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest92@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest92, COMDAT

; 181  : 	static void CIDT::interruptServiceRequest92(){defaultHandler(0x92);}

	push	ebp
	mov	ebp, esp
	push	146					; 00000092H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest92@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest92
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest93@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest93@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest93, COMDAT

; 182  : 	static void CIDT::interruptServiceRequest93(){defaultHandler(0x93);}

	push	ebp
	mov	ebp, esp
	push	147					; 00000093H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest93@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest93
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest94@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest94@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest94, COMDAT

; 183  : 	static void CIDT::interruptServiceRequest94(){defaultHandler(0x94);}

	push	ebp
	mov	ebp, esp
	push	148					; 00000094H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest94@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest94
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest95@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest95@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest95, COMDAT

; 184  : 	static void CIDT::interruptServiceRequest95(){defaultHandler(0x95);}

	push	ebp
	mov	ebp, esp
	push	149					; 00000095H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest95@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest95
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest96@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest96@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest96, COMDAT

; 185  : 	static void CIDT::interruptServiceRequest96(){defaultHandler(0x96);}

	push	ebp
	mov	ebp, esp
	push	150					; 00000096H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest96@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest96
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest97@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest97@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest97, COMDAT

; 186  : 	static void CIDT::interruptServiceRequest97(){defaultHandler(0x97);}

	push	ebp
	mov	ebp, esp
	push	151					; 00000097H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest97@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest97
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest98@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest98@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest98, COMDAT

; 187  : 	static void CIDT::interruptServiceRequest98(){defaultHandler(0x98);}

	push	ebp
	mov	ebp, esp
	push	152					; 00000098H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest98@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest98
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest99@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest99@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest99, COMDAT

; 188  : 	static void CIDT::interruptServiceRequest99(){defaultHandler(0x99);}

	push	ebp
	mov	ebp, esp
	push	153					; 00000099H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest99@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest99
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9A@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest9A@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest9A, COMDAT

; 189  : 	static void CIDT::interruptServiceRequest9A(){defaultHandler(0x9A);}

	push	ebp
	mov	ebp, esp
	push	154					; 0000009aH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest9A@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest9A
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9B@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest9B@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest9B, COMDAT

; 190  : 	static void CIDT::interruptServiceRequest9B(){defaultHandler(0x9B);}

	push	ebp
	mov	ebp, esp
	push	155					; 0000009bH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest9B@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest9B
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9C@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest9C@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest9C, COMDAT

; 191  : 	static void CIDT::interruptServiceRequest9C(){defaultHandler(0x9C);}

	push	ebp
	mov	ebp, esp
	push	156					; 0000009cH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest9C@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest9C
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9D@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest9D@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest9D, COMDAT

; 192  : 	static void CIDT::interruptServiceRequest9D(){defaultHandler(0x9D);}

	push	ebp
	mov	ebp, esp
	push	157					; 0000009dH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest9D@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest9D
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9E@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest9E@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest9E, COMDAT

; 193  : 	static void CIDT::interruptServiceRequest9E(){defaultHandler(0x9E);}

	push	ebp
	mov	ebp, esp
	push	158					; 0000009eH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest9E@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest9E
_TEXT	ENDS
;	COMDAT ?interruptServiceRequest9F@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequest9F@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequest9F, COMDAT

; 194  : 	static void CIDT::interruptServiceRequest9F(){defaultHandler(0x9F);}

	push	ebp
	mov	ebp, esp
	push	159					; 0000009fH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequest9F@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequest9F
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA0@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA0@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA0, COMDAT

; 195  : 	static void CIDT::interruptServiceRequestA0(){defaultHandler(0xA0);}

	push	ebp
	mov	ebp, esp
	push	160					; 000000a0H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA0@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA0
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA1@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA1@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA1, COMDAT

; 196  : 	static void CIDT::interruptServiceRequestA1(){defaultHandler(0xA1);}

	push	ebp
	mov	ebp, esp
	push	161					; 000000a1H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA1@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA1
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA2@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA2@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA2, COMDAT

; 197  : 	static void CIDT::interruptServiceRequestA2(){defaultHandler(0xA2);}

	push	ebp
	mov	ebp, esp
	push	162					; 000000a2H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA2@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA2
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA3@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA3@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA3, COMDAT

; 198  : 	static void CIDT::interruptServiceRequestA3(){defaultHandler(0xA3);}

	push	ebp
	mov	ebp, esp
	push	163					; 000000a3H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA3@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA3
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA4@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA4@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA4, COMDAT

; 199  : 	static void CIDT::interruptServiceRequestA4(){defaultHandler(0xA4);}

	push	ebp
	mov	ebp, esp
	push	164					; 000000a4H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA4@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA4
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA5@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA5@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA5, COMDAT

; 200  : 	static void CIDT::interruptServiceRequestA5(){defaultHandler(0xA5);}

	push	ebp
	mov	ebp, esp
	push	165					; 000000a5H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA5@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA5
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA6@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA6@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA6, COMDAT

; 201  : 	static void CIDT::interruptServiceRequestA6(){defaultHandler(0xA6);}

	push	ebp
	mov	ebp, esp
	push	166					; 000000a6H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA6@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA6
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA7@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA7@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA7, COMDAT

; 202  : 	static void CIDT::interruptServiceRequestA7(){defaultHandler(0xA7);}

	push	ebp
	mov	ebp, esp
	push	167					; 000000a7H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA7@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA7
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA8@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA8@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA8, COMDAT

; 203  : 	static void CIDT::interruptServiceRequestA8(){defaultHandler(0xA8);}

	push	ebp
	mov	ebp, esp
	push	168					; 000000a8H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA8@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA8
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestA9@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestA9@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestA9, COMDAT

; 204  : 	static void CIDT::interruptServiceRequestA9(){defaultHandler(0xA9);}

	push	ebp
	mov	ebp, esp
	push	169					; 000000a9H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestA9@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestA9
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAA@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestAA@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestAA, COMDAT

; 205  : 	static void CIDT::interruptServiceRequestAA(){defaultHandler(0xAA);}

	push	ebp
	mov	ebp, esp
	push	170					; 000000aaH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestAA@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestAA
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAB@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestAB@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestAB, COMDAT

; 206  : 	static void CIDT::interruptServiceRequestAB(){defaultHandler(0xAB);}

	push	ebp
	mov	ebp, esp
	push	171					; 000000abH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestAB@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestAB
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAC@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestAC@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestAC, COMDAT

; 207  : 	static void CIDT::interruptServiceRequestAC(){defaultHandler(0xAC);}

	push	ebp
	mov	ebp, esp
	push	172					; 000000acH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestAC@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestAC
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAD@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestAD@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestAD, COMDAT

; 208  : 	static void CIDT::interruptServiceRequestAD(){defaultHandler(0xAD);}

	push	ebp
	mov	ebp, esp
	push	173					; 000000adH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestAD@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestAD
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAE@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestAE@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestAE, COMDAT

; 209  : 	static void CIDT::interruptServiceRequestAE(){defaultHandler(0xAE);}

	push	ebp
	mov	ebp, esp
	push	174					; 000000aeH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestAE@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestAE
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestAF@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestAF@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestAF, COMDAT

; 210  : 	static void CIDT::interruptServiceRequestAF(){defaultHandler(0xAF);}

	push	ebp
	mov	ebp, esp
	push	175					; 000000afH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestAF@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestAF
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB0@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB0@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB0, COMDAT

; 211  : 	static void CIDT::interruptServiceRequestB0(){defaultHandler(0xB0);}

	push	ebp
	mov	ebp, esp
	push	176					; 000000b0H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB0@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB0
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB1@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB1@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB1, COMDAT

; 212  : 	static void CIDT::interruptServiceRequestB1(){defaultHandler(0xB1);}

	push	ebp
	mov	ebp, esp
	push	177					; 000000b1H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB1@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB1
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB2@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB2@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB2, COMDAT

; 213  : 	static void CIDT::interruptServiceRequestB2(){defaultHandler(0xB2);}

	push	ebp
	mov	ebp, esp
	push	178					; 000000b2H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB2@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB2
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB3@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB3@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB3, COMDAT

; 214  : 	static void CIDT::interruptServiceRequestB3(){defaultHandler(0xB3);}

	push	ebp
	mov	ebp, esp
	push	179					; 000000b3H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB3@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB3
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB4@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB4@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB4, COMDAT

; 215  : 	static void CIDT::interruptServiceRequestB4(){defaultHandler(0xB4);}

	push	ebp
	mov	ebp, esp
	push	180					; 000000b4H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB4@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB4
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB5@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB5@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB5, COMDAT

; 216  : 	static void CIDT::interruptServiceRequestB5(){defaultHandler(0xB5);}

	push	ebp
	mov	ebp, esp
	push	181					; 000000b5H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB5@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB5
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB6@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB6@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB6, COMDAT

; 217  : 	static void CIDT::interruptServiceRequestB6(){defaultHandler(0xB6);}

	push	ebp
	mov	ebp, esp
	push	182					; 000000b6H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB6@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB6
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB7@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB7@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB7, COMDAT

; 218  : 	static void CIDT::interruptServiceRequestB7(){defaultHandler(0xB7);}

	push	ebp
	mov	ebp, esp
	push	183					; 000000b7H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB7@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB7
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB8@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB8@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB8, COMDAT

; 219  : 	static void CIDT::interruptServiceRequestB8(){defaultHandler(0xB8);}

	push	ebp
	mov	ebp, esp
	push	184					; 000000b8H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB8@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB8
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestB9@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestB9@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestB9, COMDAT

; 220  : 	static void CIDT::interruptServiceRequestB9(){defaultHandler(0xB9);}

	push	ebp
	mov	ebp, esp
	push	185					; 000000b9H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestB9@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestB9
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBA@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestBA@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestBA, COMDAT

; 221  : 	static void CIDT::interruptServiceRequestBA(){defaultHandler(0xBA);}

	push	ebp
	mov	ebp, esp
	push	186					; 000000baH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestBA@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestBA
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBB@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestBB@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestBB, COMDAT

; 222  : 	static void CIDT::interruptServiceRequestBB(){defaultHandler(0xBB);}

	push	ebp
	mov	ebp, esp
	push	187					; 000000bbH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestBB@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestBB
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBC@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestBC@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestBC, COMDAT

; 223  : 	static void CIDT::interruptServiceRequestBC(){defaultHandler(0xBC);}

	push	ebp
	mov	ebp, esp
	push	188					; 000000bcH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestBC@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestBC
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBD@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestBD@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestBD, COMDAT

; 224  : 	static void CIDT::interruptServiceRequestBD(){defaultHandler(0xBD);}

	push	ebp
	mov	ebp, esp
	push	189					; 000000bdH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestBD@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestBD
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBE@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestBE@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestBE, COMDAT

; 225  : 	static void CIDT::interruptServiceRequestBE(){defaultHandler(0xBE);}

	push	ebp
	mov	ebp, esp
	push	190					; 000000beH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestBE@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestBE
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestBF@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestBF@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestBF, COMDAT

; 226  : 	static void CIDT::interruptServiceRequestBF(){defaultHandler(0xBF);}

	push	ebp
	mov	ebp, esp
	push	191					; 000000bfH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestBF@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestBF
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC0@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC0@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC0, COMDAT

; 227  : 	static void CIDT::interruptServiceRequestC0(){defaultHandler(0xC0);}

	push	ebp
	mov	ebp, esp
	push	192					; 000000c0H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC0@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC0
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC1@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC1@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC1, COMDAT

; 228  : 	static void CIDT::interruptServiceRequestC1(){defaultHandler(0xC1);}

	push	ebp
	mov	ebp, esp
	push	193					; 000000c1H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC1@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC1
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC2@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC2@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC2, COMDAT

; 229  : 	static void CIDT::interruptServiceRequestC2(){defaultHandler(0xC2);}

	push	ebp
	mov	ebp, esp
	push	194					; 000000c2H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC2@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC2
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC3@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC3@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC3, COMDAT

; 230  : 	static void CIDT::interruptServiceRequestC3(){defaultHandler(0xC3);}

	push	ebp
	mov	ebp, esp
	push	195					; 000000c3H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC3@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC3
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC4@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC4@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC4, COMDAT

; 231  : 	static void CIDT::interruptServiceRequestC4(){defaultHandler(0xC4);}

	push	ebp
	mov	ebp, esp
	push	196					; 000000c4H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC4@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC4
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC5@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC5@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC5, COMDAT

; 232  : 	static void CIDT::interruptServiceRequestC5(){defaultHandler(0xC5);}

	push	ebp
	mov	ebp, esp
	push	197					; 000000c5H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC5@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC5
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC6@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC6@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC6, COMDAT

; 233  : 	static void CIDT::interruptServiceRequestC6(){defaultHandler(0xC6);}

	push	ebp
	mov	ebp, esp
	push	198					; 000000c6H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC6@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC6
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC7@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC7@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC7, COMDAT

; 234  : 	static void CIDT::interruptServiceRequestC7(){defaultHandler(0xC7);}

	push	ebp
	mov	ebp, esp
	push	199					; 000000c7H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC7@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC7
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC8@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC8@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC8, COMDAT

; 235  : 	static void CIDT::interruptServiceRequestC8(){defaultHandler(0xC8);}

	push	ebp
	mov	ebp, esp
	push	200					; 000000c8H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC8@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC8
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestC9@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestC9@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestC9, COMDAT

; 236  : 	static void CIDT::interruptServiceRequestC9(){defaultHandler(0xC9);}

	push	ebp
	mov	ebp, esp
	push	201					; 000000c9H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestC9@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestC9
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCA@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestCA@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestCA, COMDAT

; 237  : 	static void CIDT::interruptServiceRequestCA(){defaultHandler(0xCA);}

	push	ebp
	mov	ebp, esp
	push	202					; 000000caH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestCA@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestCA
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCB@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestCB@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestCB, COMDAT

; 238  : 	static void CIDT::interruptServiceRequestCB(){defaultHandler(0xCB);}

	push	ebp
	mov	ebp, esp
	push	203					; 000000cbH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestCB@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestCB
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCC@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestCC@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestCC, COMDAT

; 239  : 	static void CIDT::interruptServiceRequestCC(){defaultHandler(0xCC);}

	push	ebp
	mov	ebp, esp
	push	204					; 000000ccH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestCC@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestCC
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCD@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestCD@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestCD, COMDAT

; 240  : 	static void CIDT::interruptServiceRequestCD(){defaultHandler(0xCD);}

	push	ebp
	mov	ebp, esp
	push	205					; 000000cdH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestCD@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestCD
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCE@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestCE@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestCE, COMDAT

; 241  : 	static void CIDT::interruptServiceRequestCE(){defaultHandler(0xCE);}

	push	ebp
	mov	ebp, esp
	push	206					; 000000ceH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestCE@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestCE
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestCF@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestCF@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestCF, COMDAT

; 242  : 	static void CIDT::interruptServiceRequestCF(){defaultHandler(0xCF);}

	push	ebp
	mov	ebp, esp
	push	207					; 000000cfH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestCF@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestCF
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD0@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD0@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD0, COMDAT

; 243  : 	static void CIDT::interruptServiceRequestD0(){defaultHandler(0xD0);}

	push	ebp
	mov	ebp, esp
	push	208					; 000000d0H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD0@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD0
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD1@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD1@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD1, COMDAT

; 244  : 	static void CIDT::interruptServiceRequestD1(){defaultHandler(0xD1);}

	push	ebp
	mov	ebp, esp
	push	209					; 000000d1H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD1@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD1
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD2@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD2@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD2, COMDAT

; 245  : 	static void CIDT::interruptServiceRequestD2(){defaultHandler(0xD2);}

	push	ebp
	mov	ebp, esp
	push	210					; 000000d2H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD2@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD2
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD3@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD3@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD3, COMDAT

; 246  : 	static void CIDT::interruptServiceRequestD3(){defaultHandler(0xD3);}

	push	ebp
	mov	ebp, esp
	push	211					; 000000d3H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD3@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD3
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD4@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD4@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD4, COMDAT

; 247  : 	static void CIDT::interruptServiceRequestD4(){defaultHandler(0xD4);}

	push	ebp
	mov	ebp, esp
	push	212					; 000000d4H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD4@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD4
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD5@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD5@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD5, COMDAT

; 248  : 	static void CIDT::interruptServiceRequestD5(){defaultHandler(0xD5);}

	push	ebp
	mov	ebp, esp
	push	213					; 000000d5H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD5@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD5
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD6@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD6@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD6, COMDAT

; 249  : 	static void CIDT::interruptServiceRequestD6(){defaultHandler(0xD6);}

	push	ebp
	mov	ebp, esp
	push	214					; 000000d6H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD6@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD6
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD7@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD7@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD7, COMDAT

; 250  : 	static void CIDT::interruptServiceRequestD7(){defaultHandler(0xD7);}

	push	ebp
	mov	ebp, esp
	push	215					; 000000d7H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD7@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD7
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD8@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD8@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD8, COMDAT

; 251  : 	static void CIDT::interruptServiceRequestD8(){defaultHandler(0xD8);}

	push	ebp
	mov	ebp, esp
	push	216					; 000000d8H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD8@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD8
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestD9@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestD9@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestD9, COMDAT

; 252  : 	static void CIDT::interruptServiceRequestD9(){defaultHandler(0xD9);}

	push	ebp
	mov	ebp, esp
	push	217					; 000000d9H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestD9@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestD9
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDA@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestDA@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestDA, COMDAT

; 253  : 	static void CIDT::interruptServiceRequestDA(){defaultHandler(0xDA);}

	push	ebp
	mov	ebp, esp
	push	218					; 000000daH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestDA@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestDA
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDB@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestDB@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestDB, COMDAT

; 254  : 	static void CIDT::interruptServiceRequestDB(){defaultHandler(0xDB);}

	push	ebp
	mov	ebp, esp
	push	219					; 000000dbH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestDB@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestDB
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDC@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestDC@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestDC, COMDAT

; 255  : 	static void CIDT::interruptServiceRequestDC(){defaultHandler(0xDC);}

	push	ebp
	mov	ebp, esp
	push	220					; 000000dcH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestDC@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestDC
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDD@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestDD@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestDD, COMDAT

; 256  : 	static void CIDT::interruptServiceRequestDD(){defaultHandler(0xDD);}

	push	ebp
	mov	ebp, esp
	push	221					; 000000ddH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestDD@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestDD
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDE@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestDE@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestDE, COMDAT

; 257  : 	static void CIDT::interruptServiceRequestDE(){defaultHandler(0xDE);}

	push	ebp
	mov	ebp, esp
	push	222					; 000000deH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestDE@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestDE
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestDF@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestDF@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestDF, COMDAT

; 258  : 	static void CIDT::interruptServiceRequestDF(){defaultHandler(0xDF);}

	push	ebp
	mov	ebp, esp
	push	223					; 000000dfH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestDF@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestDF
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE0@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE0@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE0, COMDAT

; 259  : 	static void CIDT::interruptServiceRequestE0(){defaultHandler(0xE0);}

	push	ebp
	mov	ebp, esp
	push	224					; 000000e0H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE0@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE0
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE1@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE1@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE1, COMDAT

; 260  : 	static void CIDT::interruptServiceRequestE1(){defaultHandler(0xE1);}

	push	ebp
	mov	ebp, esp
	push	225					; 000000e1H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE1@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE1
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE2@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE2@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE2, COMDAT

; 261  : 	static void CIDT::interruptServiceRequestE2(){defaultHandler(0xE2);}

	push	ebp
	mov	ebp, esp
	push	226					; 000000e2H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE2@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE2
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE3@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE3@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE3, COMDAT

; 262  : 	static void CIDT::interruptServiceRequestE3(){defaultHandler(0xE3);}

	push	ebp
	mov	ebp, esp
	push	227					; 000000e3H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE3@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE3
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE4@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE4@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE4, COMDAT

; 263  : 	static void CIDT::interruptServiceRequestE4(){defaultHandler(0xE4);}

	push	ebp
	mov	ebp, esp
	push	228					; 000000e4H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE4@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE4
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE5@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE5@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE5, COMDAT

; 264  : 	static void CIDT::interruptServiceRequestE5(){defaultHandler(0xE5);}

	push	ebp
	mov	ebp, esp
	push	229					; 000000e5H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE5@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE5
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE6@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE6@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE6, COMDAT

; 265  : 	static void CIDT::interruptServiceRequestE6(){defaultHandler(0xE6);}

	push	ebp
	mov	ebp, esp
	push	230					; 000000e6H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE6@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE6
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE7@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE7@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE7, COMDAT

; 266  : 	static void CIDT::interruptServiceRequestE7(){defaultHandler(0xE7);}

	push	ebp
	mov	ebp, esp
	push	231					; 000000e7H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE7@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE7
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE8@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE8@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE8, COMDAT

; 267  : 	static void CIDT::interruptServiceRequestE8(){defaultHandler(0xE8);}

	push	ebp
	mov	ebp, esp
	push	232					; 000000e8H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE8@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE8
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestE9@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestE9@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestE9, COMDAT

; 268  : 	static void CIDT::interruptServiceRequestE9(){defaultHandler(0xE9);}

	push	ebp
	mov	ebp, esp
	push	233					; 000000e9H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestE9@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestE9
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEA@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestEA@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestEA, COMDAT

; 269  : 	static void CIDT::interruptServiceRequestEA(){defaultHandler(0xEA);}

	push	ebp
	mov	ebp, esp
	push	234					; 000000eaH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestEA@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestEA
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEB@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestEB@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestEB, COMDAT

; 270  : 	static void CIDT::interruptServiceRequestEB(){defaultHandler(0xEB);}

	push	ebp
	mov	ebp, esp
	push	235					; 000000ebH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestEB@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestEB
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEC@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestEC@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestEC, COMDAT

; 271  : 	static void CIDT::interruptServiceRequestEC(){defaultHandler(0xEC);}

	push	ebp
	mov	ebp, esp
	push	236					; 000000ecH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestEC@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestEC
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestED@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestED@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestED, COMDAT

; 272  : 	static void CIDT::interruptServiceRequestED(){defaultHandler(0xED);}

	push	ebp
	mov	ebp, esp
	push	237					; 000000edH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestED@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestED
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEE@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestEE@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestEE, COMDAT

; 273  : 	static void CIDT::interruptServiceRequestEE(){defaultHandler(0xEE);}

	push	ebp
	mov	ebp, esp
	push	238					; 000000eeH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestEE@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestEE
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestEF@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestEF@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestEF, COMDAT

; 274  : 	static void CIDT::interruptServiceRequestEF(){defaultHandler(0xEF);}

	push	ebp
	mov	ebp, esp
	push	239					; 000000efH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestEF@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestEF
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF0@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF0@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF0, COMDAT

; 275  : 	static void CIDT::interruptServiceRequestF0(){defaultHandler(0xF0);}

	push	ebp
	mov	ebp, esp
	push	240					; 000000f0H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF0@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF0
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF1@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF1@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF1, COMDAT

; 276  : 	static void CIDT::interruptServiceRequestF1(){defaultHandler(0xF1);}

	push	ebp
	mov	ebp, esp
	push	241					; 000000f1H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF1@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF1
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF2@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF2@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF2, COMDAT

; 277  : 	static void CIDT::interruptServiceRequestF2(){defaultHandler(0xF2);}

	push	ebp
	mov	ebp, esp
	push	242					; 000000f2H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF2@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF2
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF3@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF3@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF3, COMDAT

; 278  : 	static void CIDT::interruptServiceRequestF3(){defaultHandler(0xF3);}

	push	ebp
	mov	ebp, esp
	push	243					; 000000f3H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF3@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF3
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF4@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF4@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF4, COMDAT

; 279  : 	static void CIDT::interruptServiceRequestF4(){defaultHandler(0xF4);}

	push	ebp
	mov	ebp, esp
	push	244					; 000000f4H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF4@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF4
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF5@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF5@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF5, COMDAT

; 280  : 	static void CIDT::interruptServiceRequestF5(){defaultHandler(0xF5);}

	push	ebp
	mov	ebp, esp
	push	245					; 000000f5H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF5@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF5
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF6@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF6@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF6, COMDAT

; 281  : 	static void CIDT::interruptServiceRequestF6(){defaultHandler(0xF6);}

	push	ebp
	mov	ebp, esp
	push	246					; 000000f6H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF6@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF6
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF7@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF7@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF7, COMDAT

; 282  : 	static void CIDT::interruptServiceRequestF7(){defaultHandler(0xF7);}

	push	ebp
	mov	ebp, esp
	push	247					; 000000f7H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF7@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF7
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF8@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF8@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF8, COMDAT

; 283  : 	static void CIDT::interruptServiceRequestF8(){defaultHandler(0xF8);}

	push	ebp
	mov	ebp, esp
	push	248					; 000000f8H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF8@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF8
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestF9@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestF9@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestF9, COMDAT

; 284  : 	static void CIDT::interruptServiceRequestF9(){defaultHandler(0xF9);}

	push	ebp
	mov	ebp, esp
	push	249					; 000000f9H
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestF9@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestF9
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFA@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestFA@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestFA, COMDAT

; 285  : 	static void CIDT::interruptServiceRequestFA(){defaultHandler(0xFA);}

	push	ebp
	mov	ebp, esp
	push	250					; 000000faH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestFA@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestFA
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFB@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestFB@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestFB, COMDAT

; 286  : 	static void CIDT::interruptServiceRequestFB(){defaultHandler(0xFB);}

	push	ebp
	mov	ebp, esp
	push	251					; 000000fbH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestFB@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestFB
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFC@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestFC@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestFC, COMDAT

; 287  : 	static void CIDT::interruptServiceRequestFC(){defaultHandler(0xFC);}

	push	ebp
	mov	ebp, esp
	push	252					; 000000fcH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestFC@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestFC
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFD@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestFD@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestFD, COMDAT

; 288  : 	static void CIDT::interruptServiceRequestFD(){defaultHandler(0xFD);}

	push	ebp
	mov	ebp, esp
	push	253					; 000000fdH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestFD@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestFD
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFE@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestFE@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestFE, COMDAT

; 289  : 	static void CIDT::interruptServiceRequestFE(){defaultHandler(0xFE);}

	push	ebp
	mov	ebp, esp
	push	254					; 000000feH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestFE@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestFE
_TEXT	ENDS
;	COMDAT ?interruptServiceRequestFF@CIDT@@CAXXZ
_TEXT	SEGMENT
?interruptServiceRequestFF@CIDT@@CAXXZ PROC NEAR	; CIDT::interruptServiceRequestFF, COMDAT

; 290  : 	static void CIDT::interruptServiceRequestFF(){defaultHandler(0xFF);}

	push	ebp
	mov	ebp, esp
	push	255					; 000000ffH
	call	?defaultHandler@CIDT@@CAXE@Z		; CIDT::defaultHandler
	add	esp, 4
	pop	ebp
	ret	0
?interruptServiceRequestFF@CIDT@@CAXXZ ENDP		; CIDT::interruptServiceRequestFF
_TEXT	ENDS
EXTRN	?getCodeSegment@CApplication@@QAEGXZ:NEAR	; CApplication::getCodeSegment
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z:NEAR ; CDescriptor::setDPL
EXTRN	?setDWordCount@CDescriptor@@QAEXE@Z:NEAR	; CDescriptor::setDWordCount
EXTRN	?setPointer@CDescriptor@@QAEXGPAX@Z:NEAR	; CDescriptor::setPointer
EXTRN	?setPresent@CDescriptor@@QAEX_N@Z:NEAR		; CDescriptor::setPresent
EXTRN	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z:NEAR ; CDescriptor::setType
_TEXT	SEGMENT
_pDescriptor$ = 8
_pHandler$ = 12
_this$ = -4
?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z PROC NEAR ; CIDT::initialiseHandler

; 353  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 354  : 	// Set interrupt handler.
; 355  : 	pDescriptor->setPresent( true );

	push	1
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setPresent@CDescriptor@@QAEX_N@Z	; CDescriptor::setPresent

; 356  : 	pDescriptor->setDPL( DPL0 );

	push	0
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z ; CDescriptor::setDPL

; 357  : 	pDescriptor->setType( DT_386_INTERRUPT_GATE );

	push	269					; 0000010dH
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z ; CDescriptor::setType

; 358  : 	pDescriptor->setDWordCount( 0 );

	push	0
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setDWordCount@CDescriptor@@QAEXE@Z	; CDescriptor::setDWordCount

; 359  : 	pDescriptor->setPointer( Application.getCodeSegment(), pHandler );

	mov	eax, DWORD PTR _pHandler$[ebp]
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getCodeSegment@CApplication@@QAEGXZ	; CApplication::getCodeSegment
	push	eax
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setPointer@CDescriptor@@QAEXGPAX@Z	; CDescriptor::setPointer

; 360  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?initialiseHandler@CIDT@@AAEXPAVCDescriptor@@P6AXXZ@Z ENDP ; CIDT::initialiseHandler
_TEXT	ENDS
PUBLIC	?registerHandler@CIDT@@QAEXEP6AXXZ@Z		; CIDT::registerHandler
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG2465	DB	'Failed to allocate ISR record.', 0aH, 00H
_DATA	ENDS
_TEXT	SEGMENT
_iInterrupt$ = 8
_pHandler$ = 12
_this$ = -12
_pRegisteredISR$ = -4
$T2993 = -8
?registerHandler@CIDT@@QAEXEP6AXXZ@Z PROC NEAR		; CIDT::registerHandler

; 376  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 377  : 	SRegisteredISR* pRegisteredISR;
; 378  : 
; 379  : 	// Create a new registered ISR record.
; 380  : 	pRegisteredISR = new SRegisteredISR();

	push	8
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2993[ebp], eax
	mov	eax, DWORD PTR $T2993[ebp]
	mov	DWORD PTR _pRegisteredISR$[ebp], eax

; 381  : 	if( pRegisteredISR!=NULL )

	cmp	DWORD PTR _pRegisteredISR$[ebp], 0
	je	SHORT $L2461

; 383  : 		// Store address of handler.
; 384  : 		pRegisteredISR->m_pHandler = pHandler;

	mov	ecx, DWORD PTR _pRegisteredISR$[ebp]
	mov	edx, DWORD PTR _pHandler$[ebp]
	mov	DWORD PTR [ecx], edx

; 385  : 
; 386  : 		// Link new ISR into chain.
; 387  : 		if( m_pRegisteredISRs[iInterrupt]==NULL )

	mov	eax, DWORD PTR _iInterrupt$[ebp]
	and	eax, 255				; 000000ffH
	cmp	DWORD PTR ?m_pRegisteredISRs@CIDT@@0PAPAUSRegisteredISR@@A[eax*4], 0
	jne	SHORT $L2462

; 389  : 			// First ISR for this interrupt.
; 390  : 			pRegisteredISR->m_pNext = NULL;

	mov	ecx, DWORD PTR _pRegisteredISR$[ebp]
	mov	DWORD PTR [ecx+4], 0

; 392  : 		else

	jmp	SHORT $L2463
$L2462:

; 394  : 			// Point new ISR to current head.
; 395  : 			pRegisteredISR->m_pNext = m_pRegisteredISRs[iInterrupt];

	mov	edx, DWORD PTR _iInterrupt$[ebp]
	and	edx, 255				; 000000ffH
	mov	eax, DWORD PTR _pRegisteredISR$[ebp]
	mov	ecx, DWORD PTR ?m_pRegisteredISRs@CIDT@@0PAPAUSRegisteredISR@@A[edx*4]
	mov	DWORD PTR [eax+4], ecx
$L2463:

; 397  : 
; 398  : 		// Update head pointer.
; 399  : 		m_pRegisteredISRs[iInterrupt] = pRegisteredISR;

	mov	edx, DWORD PTR _iInterrupt$[ebp]
	and	edx, 255				; 000000ffH
	mov	eax, DWORD PTR _pRegisteredISR$[ebp]
	mov	DWORD PTR ?m_pRegisteredISRs@CIDT@@0PAPAUSRegisteredISR@@A[edx*4], eax

; 401  : 	else

	jmp	SHORT $L2464
$L2461:

; 403  : 		// Allocation of new ISR record failed.
; 404  : 		cout << "Failed to allocate ISR record.\n";

	push	OFFSET FLAT:$SG2465
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
$L2464:

; 406  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?registerHandler@CIDT@@QAEXEP6AXXZ@Z ENDP		; CIDT::registerHandler
_iInterrupt$ = 8
?defaultHandler@CIDT@@CAXE@Z PROC NEAR			; CIDT::defaultHandler

; 421  : 	// Store register that may be clobbered.
; 422  : 	__asm	enter	0, 0

	enter	0, 0

; 423  : 	__asm	push	eax

	push	eax

; 424  : 	__asm	push	ebx

	push	ebx

; 425  : 	__asm	push	ecx

	push	ecx

; 426  : 	__asm	push	edx

	push	edx

; 427  : 	__asm	push	edi

	push	edi

; 428  : 	__asm	push	esi

	push	esi

; 429  : 
; 430  : 	// Call chaining function.
; 431  : 	callHandlerChain( iInterrupt );

	mov	al, BYTE PTR _iInterrupt$[ebp]
	push	eax
	call	?callHandlerChain@CIDT@@CAXE@Z		; CIDT::callHandlerChain
	add	esp, 4

; 432  : 
; 433  : 	// Restore register that could have been clobbered.
; 434  : 	__asm	pop		esi

	pop	esi

; 435  : 	__asm	pop		edi

	pop	edi

; 436  : 	__asm	pop		edx

	pop	edx

; 437  : 	__asm	pop		ecx

	pop	ecx

; 438  : 	__asm	pop		ebx

	pop	ebx

; 439  : 	__asm	pop		eax

	pop	eax

; 440  : 	__asm	leave

	leave

; 441  : 	
; 442  : 	// Remove parameter and return address pushed on call to this function.
; 443  : 	__asm	add	esp, 8

	add	esp, 8

; 444  : 
; 445  : 	// Remove stack frame created by interruptServiceRequestXX as it's not naked.
; 446  : 	__asm	pop	ebp

	pop	ebp

; 447  : 	
; 448  : 	// Return from interrupt.
; 449  : 	__asm	iretd

	iretd
?defaultHandler@CIDT@@CAXE@Z ENDP			; CIDT::defaultHandler
_TEXT	ENDS
END
