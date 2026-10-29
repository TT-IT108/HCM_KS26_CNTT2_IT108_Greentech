# He thong quan tri ha tang GreenTech K26

## 1. Gioi thieu
Du an mo phong quy trinh quan tri ha tang, loc log va doi soat linh kien cho cac tram cam bien IoT.

## 2. Cau truc thu muc
- `docs/`: tai lieu huong dan va SRS.
- `scripts/`: script tu dong hoa.
- `data/`: log he thong va workbook quan ly thiet bi.
- `backup/`: bao cao su co.
- `.env`: cau hinh demo, khong chua thong tin dang nhap that.

## 3. Cach chay script loc log
Mo CMD hoac PowerShell tai thu muc goc du an va chay:

```bat
scripts\auto_report.bat
```

Script doc `data/log-he-thong.log`, loc cac dong co `CRITICAL`, `ERROR` hoac `TIMEOUT`,
sau do noi them ket qua vao `backup/bao-cao-su-co.txt`.

## 4. Checklist kiem tra thiet bi
- [ ] Kiem tra ket noi tram cam bien.
- [ ] Kiem tra dung luong RAM va dung luong luu tru.
- [ ] Kiem tra ma linh kien co trong danh muc.
- [ ] Chay script va kiem tra bao cao su co.
- [ ] Sao luu bao cao vao thu muc `backup/`.

## 5. Bang thong so phan cung (du lieu minh hoa)
| Ma linh kien | Ten thiet bi | Don gia (VND) | Loai storage |
|---|---|---:|---|
| CPU001 | CPU IoT A | 1500000 | SSD |
| RAM001 | RAM 8GB | 450000 | SSD |
| SSD001 | SSD 256GB | 700000 | SSD |
| HDD001 | HDD 1TB | 900000 | HDD |

## 6. IPO
- **Input:** log-he-thong.log va workbook quan ly thiet bi.
- **Process:** loc dong log, chuan hoa ma linh kien, tra cuu ten thiet bi.
- **Output:** bao-cao-su-co.txt va bang trang thai tram da doi soat.

## 7. DIKW
- **Data:** log tho va ma linh kien.
- **Information:** dong loi duoc loc va thong tin linh kien.
- **Knowledge:** nhan dien loi lap lai va tram co van de.
- **Wisdom:** uu tien xu ly su co, dieu chinh cau hinh va lap ke hoach bao tri.

## 8. Audit va bao mat
- Chi su dung du lieu demo; khong ghi mat khau that vao `.env`.
- `.env` duoc them vao `.gitignore`, khong commit len repository cong khai.
- Script khong xoa file; kiem tra file dau vao va thu muc dau ra truoc khi chay.
- Khong thuc thi `del /f /s /q` hoac lenh xoa de quy trong bai tap.
