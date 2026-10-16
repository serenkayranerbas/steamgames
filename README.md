# 🎮 Steam Games Analytics

Steam oyun verilerini analiz etmek amacıyla geliştirilen bu projede, **dbt ve Google BigQuery** kullanılarak veri dönüşümleri gerçekleştirilmiştir. Hazırlanan veri modelleri, Power BI dashboard'ları ve makine öğrenmesi analizleri için kullanılmıştır.

## 🎮 Project Preview

<p align="center">
  <img src="steam_games.gif" alt="Steam Games Analytics" width="100%">
</p>

## 🛠️ Technologies Used

- Google BigQuery
- dbt (Data Build Tool)
- Power BI
- Python
- Machine Learning

## 📂 dbt Data Models

- **Staging:** Ham verilerin temizlenmesi ve standartlaştırılması
- **Intermediate:** Verilerin birleştirilmesi ve dönüştürülmesi
- **Marts:** Analiz ve raporlamaya hazır tabloların oluşturulması

## 🚀 Running the Project

```bash
dbt run
dbt test
```
