{{/*
Expand the name of the chart.
*/}}
{{- define "dns-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "dns-app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "dns-app.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "dns-app.labels" -}}
app.kubernetes.io/name: {{ include "dns-app.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
