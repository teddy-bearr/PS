-- 프로그래머스 No.151137 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
select CAR_TYPE, count(*) as CARS from car_rental_company_car
    where options like "%통풍시트%"
    or options like "%열선시트%"
    or options like "%가죽시트%"
    group by car_type
    order by car_type
;