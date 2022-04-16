% Plataforma
% Serie o Pelicula
% Genero
% Director
% Año de estreno
% 


recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,duracionpeliculas(DURACION,DMIN,DMAX),peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR,
generop(GENERO,LISTAPEL),member(PELI,LISTAPEL),estudiosp(ESTUDIO,_,ESTUDIOPELICULAS),member(PELI,ESTUDIOPELICULAS),
actoresprinci(ACTORESPRINCIPALESR,PELI).

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,duracionseries(DURACION,DMIN,DMAX),seriestitulos(SERI,NOMBRESERIER,DURACIONR,TEMPORADAS,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR,
generos(GENERO,LISTASER),member(SERI,LISTASER),estudioss(ESTUDIO,_,ESTUDIOSERIES),member(SERI,ESTUDIOSERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI).

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
generop(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI).


recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,
NOMBREIMG):-TIPO =
serie,seriestitulos(SERI,NOMBRESERIER,DURACIONR,TEMPORADAS,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
generos(GENERO,LISTASER),member(SERI,LISTASER),
actoresprinci(ACTORESPRINCIPALESR,SERI).


% ------------------------------------------------------
% Regla para obtener los generos disponibles de las peliculas y series

genseriopel(SOP,G):-SOP = pelicula,generop(G,_).
genseriopel(SOP,G):-SOP = serie,generos(G,_).

% ------------------------------------------------------

generop(terror,[conjuro]).
generop(drama,[amigosint,enemigoace,elpianista,eldiscursorey]).
generop(comedia,[amigosint,gladiador]).
generop(aventura,[gladiador]).
generop(accion,[gladiador]).
generop(belico,[enemigoace,elpianista]).

generos(tragedia,[chernobyl]).
generos(drama,[anatomiasegungray]).

% -------------------------------------------------------

% Estudios cinemátográficos

estudiosp(studiobabelsberg,"Studio Babelsberg",[elpianista]).

estudioss(sisterpictures,"Sister Pictures",[chernobyl]).

% -------------------------------------------------------

% Regla para estudios de peliculas o series

consulestudiosp(TIPO,OESTUDIO,ESTUDIO):- TIPO = pelicula,estudiosp(OESTUDIO,ESTUDIO,_).

consulestudiosp(TIPO,OESTUDIO,ESTUDIO):- TIPO = serie,estudioss(OESTUDIO,ESTUDIO,_).


% -------------------------------------------------------
% Normal (1 hr - 2 hr), Media (2 hr - 3 hr), Larga (> 3 hr)

duracionpeliculas(normal,60,120).
duracionpeliculas(media,121,180).
duracionpeliculas(larga,181,240).

% -------------------------------------------------------
% Normal (45 m - 1hr), Media (1 hr - 1 hr 30m), Larga (1 hr 30m - 2 hr)

duracionseries(normal,45,60).
duracionseries(media,61,90).
duracionseries(larga,91,120).

% -------------------------------------------------------

actoresprinci(["Patrick Wilson","Vera Farmiga"],conjuro).
actoresprinci(["Omar Sy","Francois Cluzet"],amigosint).
actoresprinci(["Russell Crowe","Joaquin Pohoenix"],gladiador).
actoresprinci(["Jude Law","Erwin Konig"],enemigoace).
actoresprinci(["Adrien Brody","Ed Stoppard","Emilia Fox"],elpianista).
actoresprinci(["Colin Firth","Guy Pearce","Geoffrey Rush"],eldiscursorey).
actoresprinci(["Jared Harris","Emily Watson","Stellan Skarsgard"],chernobyl).


% -------------------------------------------------------

peliculastitulos(conjuro,"El conjuro - saga",90,b15,2013,netflix,"").
peliculastitulos(amigosint,"Amigos intocables",112,k12,2012,netflix,"amigosint.jpg").
peliculastitulos(gladiador,"Gladiador",195,b15,2000,netflix,"").
peliculastitulos(enemigoace,"Enemigo al acecho",131,r,2001,netflix,"").
peliculastitulos(elpianista,"El pianista",150,c,2001,netflix,"elpianista.jpg").
peliculastitulos(eldiscursorey,"El discurso del rey",120,2011,netflix,"").

% -------------------------------------------------------

seriestitulos(anatomiasegungray,"Anátomia según Grey",44,18,b15,2005,netflix,"").
seriestitulos(chernobyl,"Chernobyl",72,1,b15,2019,hbo,"chernobyl.jpg").


