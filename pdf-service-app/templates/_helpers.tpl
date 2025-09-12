{{- define "pdf-service.name" -}}
pdf-service
{{- end }}

{{- define "pdf-service.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "pdf-service.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}
