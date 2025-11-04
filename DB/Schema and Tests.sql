DROP SCHEMA	"capitweb";

CREATE SCHEMA capitweb
AUTHORIZATION postgres;



--- tests:
SELECT		trc.name AS track_name, trc.length,
				alb.name AS album_name, alb.release_date,
				art.name AS artist_name,
				trc.media_url AS track_media,
				alb.image_url AS album_image,
				art.image_url AS artist_image
FROM		high_dj.tracks trc
JOIN		high_dj.albums alb
	ON		trc.album_id = alb.id
JOIN		high_dj.artists art
	ON		alb.artist_id = art.id
ORDER BY	trc.name asc;

--

SELECT		use.id, use.username,
				trc.name AS track_name, trc.length,
				alb.name AS album_name, alb.release_date,
				art.name AS artist_name
FROM		high_dj.users use
JOIN		high_dj.liked_tracks lkd_trc
	ON		use.id = lkd_trc.user_id
JOIN		high_dj.tracks trc
	ON		lkd_trc.track_id = trc.id
JOIN		high_dj.albums alb
	ON		trc.album_id = alb.id
JOIN		high_dj.artists art
	ON		alb.artist_id = art.id
ORDER BY	use.id asc;