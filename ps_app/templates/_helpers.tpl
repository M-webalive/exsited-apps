{{- define "ps-app.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "ps-app.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{ .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}

{{- define "ps-app.labels" -}}
app.kubernetes.io/name: {{ include "ps-app.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "ps-app.mariadb.fullname" -}}
{{- printf "%s-mariadb" (include "ps-app.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}
