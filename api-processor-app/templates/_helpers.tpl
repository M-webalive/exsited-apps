{{- define "api-processor.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}
