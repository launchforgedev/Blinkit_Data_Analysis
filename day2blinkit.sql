use blinkit;
select * from blinkit_data;
alter table blinkit_data change `Outlet Identifier` Outlet_Identifier varchar(10);
update blinkit_data
set Item_Fat_Content =
case
when Item_Fat_Content IN ('LF','low fat') then 'Low Fat'
when Item_Fat_Content = 'reg' then 'Regular'
else Item_Fat_Content
end

