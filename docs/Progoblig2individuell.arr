include gdrive-sheets
include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
   load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize komponent using string-sanitizer
    sanitize energi using string-sanitizer       
  end

"Første Tabell"
kWh-wealthy-consumer-data


fun forbruk(dtpd, dpuf, epuf) -> Number:
  #energy-per-day = ( distance-travelled-per-day / distance-per-unit-of-fuel ) * energy-per-unit-of-fuel
  energy-car-day = ( dtpd / dpuf ) * epuf
  energy-per-day = energy-car-day
  energy-per-day
end

x1 = forbruk(50, 12, 10)
 fun energi-to-number(s :: String) -> Number:
  doc: "If str is not a numeric string, default to 0."
  cases(Option) string-to-number(s):
    | some(a) => a
    | none => x1
  end
   
       where:
    energi-to-number("48") is 48
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("12") is 12
  

       end

"Oppdater tabell hvor String er gjort om til Numbers"
Nytabell = transform-column(kWh-wealthy-consumer-data, "energi",energi-to-number)
Nytabell


"En chart som viser forbruket delt opp i faktorene"
bar-chart(Nytabell, "komponent", "energi")
