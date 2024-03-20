SELECT a.APNT_NO,p.PT_NAME,p.PT_NO,a.MCDP_CD,d.DR_NAME,a.APNT_YMD
from PATIENT p 
join  APPOINTMENT a on p.PT_NO = a.PT_NO 
join doctor d on a.MDDR_ID=d.DR_ID
where a.APNT_YMD like "%2022-04-13%" and a.APNT_CNCL_YMD is null and a.MCDP_CD = "CS"
order by APNT_YMD