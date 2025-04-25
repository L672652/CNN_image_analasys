https://zenodo.org/records/7711810#.ZAm3k-zMKEA
er datasetet, du må extracte zippen defra og så pathe til den. Jeg vet ikke om jeg har lov til å legge deres dataset her

Hei! dette er hvordan du kan få denne algoritmen til å fungere.

Du kan først teoretisk sett kjøre koden fra Untitled1 direkte i kaggle eller en likende web løsning, og det er nok det letteste, siden det er mange ting som vi hadde lastet ned.

Det å kjøre web i en web løsning tar mye tid med selve kjøringen, dermed så skal vi gi en beskrivelse av hvordan vi satte opp vår. Installasjonene burde gjøres i et egent environment siden ikke alt er den nyeste versionen.
Dette kommer av at vi måtte finne mange versioner som matchet.
Men hvis det er for mye arbeid er det bare å copy paste koden fra Untitled1 i en web løsning som kaggle å kjøre, selv om det også kan ta tid.
Du ser også resultatet av siste kjøringen vi gjorde.
Du må også laste ned EuroSAT_RGB datasetet, og gi riktig path til det

 1. Last ned Python, Python version 3.9.21 er den vi brukte
 2. Last ned Anaconda, 24.11.3 er den vi brukte
 3. Last ned Tensorflow 2.10.1 det ble brukt gpu version hos gruppen
 4. Last ned Numpy 1.24.3
 5. Last ned Pandas 1.5.3
 6. Last ned Seaborn 0.12.2
 7. Last ned Matplotlib 3.9.4
 8. Vi brukte Jupyter 1.1.1
 9. PCn son kjørte brukte Nvidia som kommer cuda, CUDA Version: 12.8 er det PCn hadde
 10. Deretter er det bare å gå i anaconda cmd.exe prompt
 11. Aktivere environmentet, og så kjør jupyter notebook
 12. Deretter er det bare å gå inn på Untitled1 og klikke kjør

For å bruke Flask appen så går en inn i samme environment og gjør slik
  1. Last ned Flask 3.1.0 nyeste versjon
  2. Last ned pillow 9.5.0
  3. Så går du å skriver i terminal der appen er flask --app FlaskAPI run
  4. Da skal den kjøre, hvis du vil teste lokalt

Det er også kode her for å lage Docker Imaget som deployet

