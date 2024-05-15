import { HttpEvent, HttpHandler, HttpInterceptor, HttpRequest } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { Observable, from, lastValueFrom } from 'rxjs';
import { request } from 'http';
import { OktaAuth } from '@okta/okta-auth-js';
import { OKTA_AUTH } from '@okta/okta-angular';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AuthInterceptorService implements HttpInterceptor {

  constructor(@Inject(OKTA_AUTH) private oktaAuth: OktaAuth) { }
  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    return from(this.handleAccess(request, next));
  }

  private async handleAccess(request: HttpRequest<any>, next: HttpHandler): Promise<HttpEvent<any>> {
    
    // Only add an access token for secured endpoints
    const theEndPoint = environment.ecommerceApiUrl + '/orders';
    const securedEndpoints = [theEndPoint];

    if (securedEndpoints.some(url => request.urlWithParams.includes(url))) {

      // Get the access token
      const accessToken = this.oktaAuth.getAccessToken();

      // close the request and add new header with access token
      request = request.clone({
        setHeaders: {
          Authorization: 'Bearer ' + accessToken
        }
      });
      
    }

    return await lastValueFrom(next.handle(request));
  }
}
