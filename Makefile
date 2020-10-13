HTML = index.html \
			 schedule.html \
			 projects.html \
			 details.html \
			 syllabus.html \
			 assign/index.html \
			 assign/gdpr.html \
			 assign/gdpr-reports-2019.html \
			 assign/gdpr-reports-2020.html \
			 assign/your-data.html \
			 assign/final-report.html \
			 assign/reports.html \
			 notes/q03-gdpr.html \
			 notes/q07-gdpr-compliance.html \
			 notes/q08-blockstack.html \
			 notes/q09-resin.html \
			 notes/q10-jacqueline.html \
			 notes/q11-cryptdb.html \
			 notes/q12-mylar.html \
			 notes/q13-multiversedb.html \
			 notes/q17-federated-ml.html \
			 notes/q20-vuvuzela.html \
			 notes/q22-keybase.html \
			 notes/q23-polisis.html \
			 notes/q25-taintdroid.html \
			 notes/m21-pconf.html
AUX_CSS = css/main.css
AUX_TMPL = navbar.tmpl top.tmpl

all: $(HTML)

schedule.tmpl: schedule.in schedule.py
	python3 schedule.py > schedule.tmpl

%.html: %.tmpl $(AUX_TMPL) $(AUX_CSS)
	python3 gen.py $* > $*.html

clean:
	rm $(HTML)
	rm schedule.tmpl
