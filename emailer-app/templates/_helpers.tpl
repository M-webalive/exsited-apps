{{- define "emailer-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "emailer-app.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "emailer-app.labels" -}}
app.kubernetes.io/name: {{ include "emailer-app.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "emailer-app.mysqlHost" -}}
{{ include "emailer-app.fullname" . }}-mariadb
{{- end }}
