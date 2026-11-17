# HTTP Status Codes Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** HTTP Status Codes  
> [← Back to Master Index](../README.md)

---

## 1. 1xx: Informational
| Code | Status | Description & Security Relevance |
| :--- | :--- | :--- |
| `100` | Continue | Server received initial request headers; client should proceed. |
| `101` | Switching Protocols | Client requested protocol switch (e.g., upgrading HTTP to WebSocket). |

## 2. 2xx: Success
| Code | Status | Description & Security Relevance |
| :--- | :--- | :--- |
| `200` | OK | Standard successful request. |
| `201` | Created | Resource successfully created (common in REST POST/PUT). |
| `204` | No Content | Request succeeded; response payload body is intentionally empty. |

## 3. 3xx: Redirection
| Code | Status | Description & Security Relevance |
| :--- | :--- | :--- |
| `301` | Moved Permanently | Permanent redirect; cached aggressively by browsers. |
| `302` | Found (Temporary) | Temporary redirect; check for open redirect vulnerabilities. |
| `304` | Not Modified | Resource unchanged; client loads from local cache. |
| `307` | Temporary Redirect | Retains HTTP request method (e.g., POST remains POST). |

## 4. 4xx: Client Error
| Code | Status | Description & Security Relevance |
| :--- | :--- | :--- |
| `400` | Bad Request | Malformed syntax or invalid parameters. |
| `401` | Unauthorized | Authentication required or failed credentials. |
| `403` | Forbidden | Authenticated, but lacking authorization for resource. |
| `404` | Not Found | Resource does not exist; check for directory enumeration responses. |
| `405` | Method Not Allowed | HTTP method (e.g., PUT, DELETE) not permitted on endpoint. |
| `429` | Too Many Requests | Rate limit exceeded; indicates presence of throttling controls. |

## 5. 5xx: Server Error
| Code | Status | Description & Security Relevance |
| :--- | :--- | :--- |
| `500` | Internal Server Error | Unhandled server exception; check for SQLi or debug leaks. |
| `502` | Bad Gateway | Reverse proxy or gateway received invalid upstream response. |
| `503` | Service Unavailable | Server overloaded or down for maintenance. |
| `504` | Gateway Timeout | Upstream server timed out (useful in blind SSRF/time-based SQLi). |
