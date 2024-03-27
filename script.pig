
vol_data = LOAD 'vol.csv' USING PigStorage(';') AS (
    annee: int,
    mois: int,
    jour: int,
    num_vol: chararray,
    aeroport_depart: chararray,
    aeroport_arrivee: chararray,
    distance: int
);


vol_depart_counts = FOREACH (GROUP vol_data BY aeroport_depart) GENERATE
    group AS nom_aeroport,
    COUNT(vol_data) AS nb_vol;

DUMP vol_depart_counts;