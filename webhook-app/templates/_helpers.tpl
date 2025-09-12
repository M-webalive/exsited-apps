{{- define "webhook-app.name" -}}
webhook-app
{{- end -}}

{{- define "webhook-app.fullname" -}}
{{ .Release.Name }}-webhook
{{- end -}}
